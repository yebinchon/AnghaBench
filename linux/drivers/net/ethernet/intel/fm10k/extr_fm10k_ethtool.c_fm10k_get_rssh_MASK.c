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
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct fm10k_intfc {int /*<<< orphan*/ * rssrk; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_RSS_HASH_TOP ; 
 int FM10K_RSSRK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct net_device*,int /*<<< orphan*/ *) ; 
 struct fm10k_intfc* FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *netdev, u32 *indir, u8 *key,
			  u8 *hfunc)
{
	struct fm10k_intfc *interface = FUNC2(netdev);
	int i, err;

	if (hfunc)
		*hfunc = ETH_RSS_HASH_TOP;

	err = FUNC1(netdev, indir);
	if (err || !key)
		return err;

	for (i = 0; i < FM10K_RSSRK_SIZE; i++, key += 4)
		*(__le32 *)key = FUNC0(interface->rssrk[i]);

	return 0;
}