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
typedef  int u8 ;
struct sk_buff {int dummy; } ;
struct ieee_types_header {int dummy; } ;
struct TYPE_2__ {int len; int /*<<< orphan*/  element_id; } ;
struct ieee_types_generic {int /*<<< orphan*/  data; TYPE_1__ ieee_hdr; } ;
typedef  int /*<<< orphan*/  rc_list ;

/* Variables and functions */
 int /*<<< orphan*/  WLAN_EID_SUPPORTED_REGULATORY_CLASSES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*,int) ; 
 struct ieee_types_generic* FUNC1 (struct sk_buff*,int) ; 

__attribute__((used)) static void FUNC2(struct sk_buff *skb)
{
	struct ieee_types_generic *reg_class;
	u8 rc_list[] = {1,
		1, 2, 3, 4, 12, 22, 23, 24, 25, 27, 28, 29, 30, 32, 33};
	reg_class = FUNC1(skb,
			    (sizeof(struct ieee_types_header) + sizeof(rc_list)));
	reg_class->ieee_hdr.element_id = WLAN_EID_SUPPORTED_REGULATORY_CLASSES;
	reg_class->ieee_hdr.len = sizeof(rc_list);
	FUNC0(reg_class->data, rc_list, sizeof(rc_list));
}