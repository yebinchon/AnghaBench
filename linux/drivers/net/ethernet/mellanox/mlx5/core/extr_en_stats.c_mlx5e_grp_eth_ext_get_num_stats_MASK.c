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
struct mlx5e_priv {int /*<<< orphan*/  mdev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int NUM_PPORT_ETH_EXT_COUNTERS ; 
 int /*<<< orphan*/  rx_buffer_fullness_counters ; 

__attribute__((used)) static int FUNC1(struct mlx5e_priv *priv)
{
	if (FUNC0((priv)->mdev, rx_buffer_fullness_counters))
		return NUM_PPORT_ETH_EXT_COUNTERS;

	return 0;
}