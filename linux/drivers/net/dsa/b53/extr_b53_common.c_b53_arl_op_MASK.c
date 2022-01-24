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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct b53_device {int dummy; } ;
struct b53_arl_entry {int port; int is_valid; int is_static; int /*<<< orphan*/  mac; int /*<<< orphan*/  vid; } ;
typedef  int /*<<< orphan*/  ent ;

/* Variables and functions */
 int /*<<< orphan*/  B53_ARLIO_PAGE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  B53_MAC_ADDR_IDX ; 
 int /*<<< orphan*/  B53_VLAN_ID_IDX ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__*,struct b53_arl_entry*) ; 
 int FUNC3 (struct b53_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct b53_arl_entry*,int*,int) ; 
 int FUNC4 (struct b53_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct b53_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct b53_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct b53_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct b53_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,unsigned char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct b53_arl_entry*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC12(struct b53_device *dev, int op, int port,
		      const unsigned char *addr, u16 vid, bool is_valid)
{
	struct b53_arl_entry ent;
	u32 fwd_entry;
	u64 mac, mac_vid = 0;
	u8 idx = 0;
	int ret;

	/* Convert the array into a 64-bit MAC */
	mac = FUNC9(addr);

	/* Perform a read for the given MAC and VID */
	FUNC7(dev, B53_ARLIO_PAGE, B53_MAC_ADDR_IDX, mac);
	FUNC5(dev, B53_ARLIO_PAGE, B53_VLAN_ID_IDX, vid);

	/* Issue a read operation for this MAC */
	ret = FUNC4(dev, 1);
	if (ret)
		return ret;

	ret = FUNC3(dev, mac, vid, &ent, &idx, is_valid);
	/* If this is a read, just finish now */
	if (op)
		return ret;

	/* We could not find a matching MAC, so reset to a new entry */
	if (ret) {
		fwd_entry = 0;
		idx = 1;
	}

	FUNC11(&ent, 0, sizeof(ent));
	ent.port = port;
	ent.is_valid = is_valid;
	ent.vid = vid;
	ent.is_static = true;
	FUNC10(ent.mac, addr, ETH_ALEN);
	FUNC2(&mac_vid, &fwd_entry, &ent);

	FUNC8(dev, B53_ARLIO_PAGE,
		    FUNC1(idx), mac_vid);
	FUNC6(dev, B53_ARLIO_PAGE,
		    FUNC0(idx), fwd_entry);

	return FUNC4(dev, 0);
}