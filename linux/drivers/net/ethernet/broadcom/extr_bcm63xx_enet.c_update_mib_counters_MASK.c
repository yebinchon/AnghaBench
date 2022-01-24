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
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;
struct bcm_enet_stats {int mib_reg; int stat_offset; int sizeof_stat; } ;
struct bcm_enet_priv {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int BCM_ENET_STATS_LEN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct bcm_enet_stats* bcm_enet_gstrings_stats ; 
 scalar_t__ FUNC2 (struct bcm_enet_priv*,int /*<<< orphan*/ ) ; 
 int* unused_mib_regs ; 

__attribute__((used)) static void FUNC3(struct bcm_enet_priv *priv)
{
	int i;

	for (i = 0; i < BCM_ENET_STATS_LEN; i++) {
		const struct bcm_enet_stats *s;
		u32 val;
		char *p;

		s = &bcm_enet_gstrings_stats[i];
		if (s->mib_reg == -1)
			continue;

		val = FUNC2(priv, FUNC1(s->mib_reg));
		p = (char *)priv + s->stat_offset;

		if (s->sizeof_stat == sizeof(u64))
			*(u64 *)p += val;
		else
			*(u32 *)p += val;
	}

	/* also empty unused mib counters to make sure mib counter
	 * overflow interrupt is cleared */
	for (i = 0; i < FUNC0(unused_mib_regs); i++)
		(void)FUNC2(priv, FUNC1(unused_mib_regs[i]));
}