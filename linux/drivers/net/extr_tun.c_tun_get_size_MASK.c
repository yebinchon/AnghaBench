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
typedef  int /*<<< orphan*/  uid_t ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  gid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (int) ; 

__attribute__((used)) static size_t FUNC2(const struct net_device *dev)
{
	FUNC0(sizeof(u32) != sizeof(uid_t));
	FUNC0(sizeof(u32) != sizeof(gid_t));

	return FUNC1(sizeof(uid_t)) + /* OWNER */
	       FUNC1(sizeof(gid_t)) + /* GROUP */
	       FUNC1(sizeof(u8)) + /* TYPE */
	       FUNC1(sizeof(u8)) + /* PI */
	       FUNC1(sizeof(u8)) + /* VNET_HDR */
	       FUNC1(sizeof(u8)) + /* PERSIST */
	       FUNC1(sizeof(u8)) + /* MULTI_QUEUE */
	       FUNC1(sizeof(u32)) + /* NUM_QUEUES */
	       FUNC1(sizeof(u32)) + /* NUM_DISABLED_QUEUES */
	       0;
}