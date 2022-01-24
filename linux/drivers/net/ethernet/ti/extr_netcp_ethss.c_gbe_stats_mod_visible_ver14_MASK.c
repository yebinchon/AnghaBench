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
typedef  int /*<<< orphan*/  u32 ;
struct gbe_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gbe_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  GBE_STATSA_MODULE 131 
#define  GBE_STATSB_MODULE 130 
#define  GBE_STATSC_MODULE 129 
#define  GBE_STATSD_MODULE 128 
 int /*<<< orphan*/  GBE_STATS_CD_SEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stat_port_en ; 
 int /*<<< orphan*/  switch_regs ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct gbe_priv *gbe_dev,
					       int stats_mod)
{
	u32 val;

	val = FUNC1(FUNC0(gbe_dev, switch_regs, stat_port_en));

	switch (stats_mod) {
	case GBE_STATSA_MODULE:
	case GBE_STATSB_MODULE:
		val &= ~GBE_STATS_CD_SEL;
		break;
	case GBE_STATSC_MODULE:
	case GBE_STATSD_MODULE:
		val |= GBE_STATS_CD_SEL;
		break;
	default:
		return;
	}

	/* make the stat module visible */
	FUNC2(val, FUNC0(gbe_dev, switch_regs, stat_port_en));
}