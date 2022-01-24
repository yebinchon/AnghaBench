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
struct device {int dummy; } ;
typedef  enum xgene_enet_ring_cfgsize { ____Placeholder_xgene_enet_ring_cfgsize } xgene_enet_ring_cfgsize ;

/* Variables and functions */
 int EINVAL ; 
#define  RING_CFGSIZE_16KB 132 
#define  RING_CFGSIZE_2KB 131 
#define  RING_CFGSIZE_512B 130 
#define  RING_CFGSIZE_512KB 129 
#define  RING_CFGSIZE_64KB 128 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 

__attribute__((used)) static int FUNC1(struct device *dev,
				    enum xgene_enet_ring_cfgsize cfgsize)
{
	int size = -EINVAL;

	switch (cfgsize) {
	case RING_CFGSIZE_512B:
		size = 0x200;
		break;
	case RING_CFGSIZE_2KB:
		size = 0x800;
		break;
	case RING_CFGSIZE_16KB:
		size = 0x4000;
		break;
	case RING_CFGSIZE_64KB:
		size = 0x10000;
		break;
	case RING_CFGSIZE_512KB:
		size = 0x80000;
		break;
	default:
		FUNC0(dev, "Unsupported cfg ring size %d\n", cfgsize);
		break;
	}

	return size;
}