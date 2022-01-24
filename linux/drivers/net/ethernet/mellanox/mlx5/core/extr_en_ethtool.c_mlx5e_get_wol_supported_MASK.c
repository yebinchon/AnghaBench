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
struct mlx5_core_dev {int dummy; } ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WAKE_ARP ; 
 int /*<<< orphan*/  WAKE_BCAST ; 
 int /*<<< orphan*/  WAKE_MAGIC ; 
 int /*<<< orphan*/  WAKE_MAGICSECURE ; 
 int /*<<< orphan*/  WAKE_MCAST ; 
 int /*<<< orphan*/  WAKE_PHY ; 
 int /*<<< orphan*/  WAKE_UCAST ; 
 int /*<<< orphan*/  wol_a ; 
 int /*<<< orphan*/  wol_b ; 
 int /*<<< orphan*/  wol_g ; 
 int /*<<< orphan*/  wol_m ; 
 int /*<<< orphan*/  wol_p ; 
 int /*<<< orphan*/  wol_s ; 
 int /*<<< orphan*/  wol_u ; 

__attribute__((used)) static __u32 FUNC1(struct mlx5_core_dev *mdev)
{
	__u32 ret = 0;

	if (FUNC0(mdev, wol_g))
		ret |= WAKE_MAGIC;

	if (FUNC0(mdev, wol_s))
		ret |= WAKE_MAGICSECURE;

	if (FUNC0(mdev, wol_a))
		ret |= WAKE_ARP;

	if (FUNC0(mdev, wol_b))
		ret |= WAKE_BCAST;

	if (FUNC0(mdev, wol_m))
		ret |= WAKE_MCAST;

	if (FUNC0(mdev, wol_u))
		ret |= WAKE_UCAST;

	if (FUNC0(mdev, wol_p))
		ret |= WAKE_PHY;

	return ret;
}