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
struct sk_buff {scalar_t__ data; } ;
struct ican3_dev {int /*<<< orphan*/  echoq; } ;
struct can_frame {scalar_t__ can_id; scalar_t__ can_dlc; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC2(struct ican3_dev *mod, struct sk_buff *skb)
{
	struct can_frame *cf = (struct can_frame *)skb->data;
	struct sk_buff *echo_skb = FUNC1(&mod->echoq);
	struct can_frame *echo_cf;

	if (!echo_skb)
		return false;

	echo_cf = (struct can_frame *)echo_skb->data;
	if (cf->can_id != echo_cf->can_id)
		return false;

	if (cf->can_dlc != echo_cf->can_dlc)
		return false;

	return FUNC0(cf->data, echo_cf->data, cf->can_dlc) == 0;
}