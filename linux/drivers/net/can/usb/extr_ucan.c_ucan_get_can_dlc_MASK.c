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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u16 ;
struct ucan_can_msg {scalar_t__ dlc; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int CAN_RTR_FLAG ; 
 scalar_t__ UCAN_IN_HDR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u8 FUNC2(struct ucan_can_msg *msg, u16 len)
{
	if (FUNC1(msg->id) & CAN_RTR_FLAG)
		return FUNC0(msg->dlc);
	else
		return FUNC0(len - (UCAN_IN_HDR_SIZE + sizeof(msg->id)));
}