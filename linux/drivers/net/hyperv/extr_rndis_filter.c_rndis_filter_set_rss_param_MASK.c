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
struct rndis_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NDIS_RSS_PARAM_FLAG_DISABLE_RSS ; 
 int FUNC0 (struct rndis_device*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

int FUNC1(struct rndis_device *rdev,
			       const u8 *rss_key)
{
	/* Disable RSS before change */
	FUNC0(rdev, rss_key,
				NDIS_RSS_PARAM_FLAG_DISABLE_RSS);

	return FUNC0(rdev, rss_key, 0);
}