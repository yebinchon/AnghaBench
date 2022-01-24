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
struct macb {int dummy; } ;
typedef  int netdev_features_t ;

/* Variables and functions */
 int NETIF_F_NTUPLE ; 
 int /*<<< orphan*/  FUNC0 (struct macb*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct macb*) ; 

__attribute__((used)) static inline void FUNC2(struct macb *bp,
					   netdev_features_t features)
{
	if (!FUNC1(bp))
		return;

	FUNC0(bp, !!(features & NETIF_F_NTUPLE));
}