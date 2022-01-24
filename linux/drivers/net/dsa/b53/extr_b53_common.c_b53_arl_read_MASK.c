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
typedef  int u64 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct b53_device {unsigned int num_arl_entries; } ;
struct b53_arl_entry {int dummy; } ;

/* Variables and functions */
 int ARLTBL_MAC_MASK ; 
 int ARLTBL_VALID ; 
 int /*<<< orphan*/  B53_ARLIO_PAGE ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int ENOENT ; 
 int FUNC2 (struct b53_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct b53_arl_entry*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct b53_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct b53_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC6(struct b53_device *dev, u64 mac,
			u16 vid, struct b53_arl_entry *ent, u8 *idx,
			bool is_valid)
{
	unsigned int i;
	int ret;

	ret = FUNC2(dev);
	if (ret)
		return ret;

	/* Read the bins */
	for (i = 0; i < dev->num_arl_entries; i++) {
		u64 mac_vid;
		u32 fwd_entry;

		FUNC5(dev, B53_ARLIO_PAGE,
			   FUNC1(i), &mac_vid);
		FUNC4(dev, B53_ARLIO_PAGE,
			   FUNC0(i), &fwd_entry);
		FUNC3(ent, mac_vid, fwd_entry);

		if (!(fwd_entry & ARLTBL_VALID))
			continue;
		if ((mac_vid & ARLTBL_MAC_MASK) != mac)
			continue;
		*idx = i;
	}

	return -ENOENT;
}