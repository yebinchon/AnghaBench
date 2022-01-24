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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct mlxsw_reg_info {int len; int /*<<< orphan*/  id; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* func ) (struct mlxsw_reg_info*,char*,int /*<<< orphan*/ ) ;} ;
struct mlxsw_event_listener_item {int /*<<< orphan*/  priv; TYPE_1__ el; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 char* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*) ; 
 char* FUNC4 (struct sk_buff*) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlxsw_reg_info*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct sk_buff *skb, u8 local_port,
					   void *priv)
{
	struct mlxsw_event_listener_item *event_listener_item = priv;
	struct mlxsw_reg_info reg;
	char *payload;
	char *op_tlv = FUNC1(skb);
	char *reg_tlv = FUNC4(skb);

	reg.id = FUNC2(op_tlv);
	reg.len = (FUNC5(reg_tlv) - 1) * sizeof(u32);
	payload = FUNC3(op_tlv);
	event_listener_item->el.func(&reg, payload, event_listener_item->priv);
	FUNC0(skb);
}