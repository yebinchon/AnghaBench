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
struct hwtstamp_config {int dummy; } ;
struct mlx5e_priv {int /*<<< orphan*/  mdev; struct hwtstamp_config tstamp; } ;
struct ifreq {int /*<<< orphan*/  ifr_data; } ;

/* Variables and functions */
 int EFAULT ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct hwtstamp_config*,int) ; 
 int /*<<< orphan*/  device_frequency_khz ; 

int FUNC2(struct mlx5e_priv *priv, struct ifreq *ifr)
{
	struct hwtstamp_config *cfg = &priv->tstamp;

	if (!FUNC0(priv->mdev, device_frequency_khz))
		return -EOPNOTSUPP;

	return FUNC1(ifr->ifr_data, cfg, sizeof(*cfg)) ? -EFAULT : 0;
}