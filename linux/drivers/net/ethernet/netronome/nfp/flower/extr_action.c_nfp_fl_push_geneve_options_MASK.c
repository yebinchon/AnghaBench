#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {size_t len_lw; int /*<<< orphan*/  jump_id; } ;
struct nfp_fl_push_geneve {int length; int /*<<< orphan*/  opt_data; int /*<<< orphan*/  type; int /*<<< orphan*/  class; scalar_t__ reserved; TYPE_1__ head; } ;
struct nfp_fl_payload {int /*<<< orphan*/ * action_data; } ;
struct netlink_ext_ack {int dummy; } ;
struct ip_tunnel_info {int options_len; } ;
struct geneve_opt {int length; int /*<<< orphan*/  opt_data; int /*<<< orphan*/  type; int /*<<< orphan*/  opt_class; } ;
struct flow_action_entry {scalar_t__ tunnel; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  NFP_FL_ACTION_OPCODE_PUSH_GENEVE ; 
 size_t NFP_FL_LW_SIZ ; 
 int NFP_FL_MAX_A_SIZ ; 
 int NFP_FL_MAX_GENEVE_OPT_ACT ; 
 int NFP_FL_MAX_GENEVE_OPT_CNT ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 int /*<<< orphan*/ * FUNC1 (struct ip_tunnel_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(struct nfp_fl_payload *nfp_fl, int *list_len,
			   const struct flow_action_entry *act,
			   struct netlink_ext_ack *extack)
{
	struct ip_tunnel_info *ip_tun = (struct ip_tunnel_info *)act->tunnel;
	int opt_len, opt_cnt, act_start, tot_push_len;
	u8 *src = FUNC1(ip_tun);

	/* We need to populate the options in reverse order for HW.
	 * Therefore we go through the options, calculating the
	 * number of options and the total size, then we populate
	 * them in reverse order in the action list.
	 */
	opt_cnt = 0;
	tot_push_len = 0;
	opt_len = ip_tun->options_len;
	while (opt_len > 0) {
		struct geneve_opt *opt = (struct geneve_opt *)src;

		opt_cnt++;
		if (opt_cnt > NFP_FL_MAX_GENEVE_OPT_CNT) {
			FUNC0(extack, "unsupported offload: maximum allowed number of geneve options exceeded");
			return -EOPNOTSUPP;
		}

		tot_push_len += sizeof(struct nfp_fl_push_geneve) +
			       opt->length * 4;
		if (tot_push_len > NFP_FL_MAX_GENEVE_OPT_ACT) {
			FUNC0(extack, "unsupported offload: maximum allowed action list size exceeded at push geneve options");
			return -EOPNOTSUPP;
		}

		opt_len -= sizeof(struct geneve_opt) + opt->length * 4;
		src += sizeof(struct geneve_opt) + opt->length * 4;
	}

	if (*list_len + tot_push_len > NFP_FL_MAX_A_SIZ) {
		FUNC0(extack, "unsupported offload: maximum allowed action list size exceeded at push geneve options");
		return -EOPNOTSUPP;
	}

	act_start = *list_len;
	*list_len += tot_push_len;
	src = FUNC1(ip_tun);
	while (opt_cnt) {
		struct geneve_opt *opt = (struct geneve_opt *)src;
		struct nfp_fl_push_geneve *push;
		size_t act_size, len;

		opt_cnt--;
		act_size = sizeof(struct nfp_fl_push_geneve) + opt->length * 4;
		tot_push_len -= act_size;
		len = act_start + tot_push_len;

		push = (struct nfp_fl_push_geneve *)&nfp_fl->action_data[len];
		push->head.jump_id = NFP_FL_ACTION_OPCODE_PUSH_GENEVE;
		push->head.len_lw = act_size >> NFP_FL_LW_SIZ;
		push->reserved = 0;
		push->class = opt->opt_class;
		push->type = opt->type;
		push->length = opt->length;
		FUNC2(&push->opt_data, opt->opt_data, opt->length * 4);

		src += sizeof(struct geneve_opt) + opt->length * 4;
	}

	return 0;
}