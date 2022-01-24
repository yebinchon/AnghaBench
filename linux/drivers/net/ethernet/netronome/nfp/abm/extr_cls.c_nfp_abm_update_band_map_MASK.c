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
typedef  unsigned int u8 ;
typedef  unsigned int u32 ;
struct nfp_abm_link {int has_prio; unsigned int* prio_map; int /*<<< orphan*/  dscp_map; struct nfp_abm* abm; } ;
struct nfp_abm {unsigned int num_bands; unsigned int num_prios; } ;

/* Variables and functions */
 int BITS_PER_BYTE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct nfp_abm_link*,unsigned int*) ; 
 unsigned int FUNC2 (struct nfp_abm_link*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_abm_link*) ; 
 int FUNC4 (unsigned int) ; 
 unsigned int FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct nfp_abm_link *alink)
{
	unsigned int i, bits_per_prio, prios_per_word, base_shift;
	struct nfp_abm *abm = alink->abm;
	u32 field_mask;

	alink->has_prio = !FUNC0(&alink->dscp_map);

	bits_per_prio = FUNC5(FUNC4(abm->num_bands));
	field_mask = (1 << bits_per_prio) - 1;
	prios_per_word = sizeof(u32) * BITS_PER_BYTE / bits_per_prio;

	/* FW mask applies from top bits */
	base_shift = 8 - FUNC4(abm->num_prios);

	for (i = 0; i < abm->num_prios; i++) {
		unsigned int offset;
		u32 *word;
		u8 band;

		word = &alink->prio_map[i / prios_per_word];
		offset = (i % prios_per_word) * bits_per_prio;

		band = FUNC2(alink, i << base_shift);

		*word &= ~(field_mask << offset);
		*word |= band << offset;
	}

	/* Qdisc offload status may change if has_prio changed */
	FUNC3(alink);

	return FUNC1(alink, alink->prio_map);
}