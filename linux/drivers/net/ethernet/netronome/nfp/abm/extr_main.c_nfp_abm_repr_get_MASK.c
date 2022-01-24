#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  size_t u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct nfp_reprs {size_t num_reprs; int /*<<< orphan*/ * reprs; } ;
struct nfp_app {int /*<<< orphan*/ * reprs; } ;
struct net_device {size_t num_reprs; int /*<<< orphan*/ * reprs; } ;
typedef  enum nfp_repr_type { ____Placeholder_nfp_repr_type } nfp_repr_type ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NFP_ABM_PORTID_ID ; 
 int /*<<< orphan*/  NFP_ABM_PORTID_TYPE ; 
 struct nfp_reprs* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct net_device *
FUNC2(struct nfp_app *app, u32 port_id, bool *redir_egress)
{
	enum nfp_repr_type rtype;
	struct nfp_reprs *reprs;
	u8 port;

	rtype = FUNC0(NFP_ABM_PORTID_TYPE, port_id);
	port = FUNC0(NFP_ABM_PORTID_ID, port_id);

	reprs = FUNC1(app->reprs[rtype]);
	if (!reprs)
		return NULL;

	if (port >= reprs->num_reprs)
		return NULL;

	return FUNC1(reprs->reprs[port]);
}