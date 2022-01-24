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
struct octeon_device {int chip_id; } ;
struct lio {int /*<<< orphan*/  netdev; struct octeon_device* oct_dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EOPNOTSUPP ; 
#define  OCTEON_CN23XX_PF_VID 131 
#define  OCTEON_CN23XX_VF_VID 130 
#define  OCTEON_CN66XX 129 
#define  OCTEON_CN68XX 128 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC1 (struct lio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  oct_priv_flags_strings ; 

__attribute__((used)) static int FUNC2(struct lio *lio)
{
	struct octeon_device *oct_dev = lio->oct_dev;

	switch (oct_dev->chip_id) {
	case OCTEON_CN23XX_PF_VID:
	case OCTEON_CN23XX_VF_VID:
		return FUNC0(oct_priv_flags_strings);
	case OCTEON_CN68XX:
	case OCTEON_CN66XX:
		return -EOPNOTSUPP;
	default:
		FUNC1(lio, drv, lio->netdev, "Unknown Chip !!\n");
		return -EOPNOTSUPP;
	}
}