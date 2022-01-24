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
struct neighbour {int /*<<< orphan*/  dev; } ;
struct hh_cache {scalar_t__ hh_data; } ;
struct ethhdr {int dummy; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (struct neighbour const*,struct hh_cache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ethhdr*) ; 

__attribute__((used)) static int FUNC3(const struct neighbour *neigh,
				  struct hh_cache *hh, __be16 type)
{
	int ret;

	ret = FUNC1(neigh, hh, type);
	if (ret == 0) {
		struct ethhdr *eth;

		eth = (struct ethhdr*)(((u8*)hh->hh_data) +
				       FUNC0(sizeof(*eth)));
		FUNC2 (neigh->dev, eth);
	}

	return ret;
}