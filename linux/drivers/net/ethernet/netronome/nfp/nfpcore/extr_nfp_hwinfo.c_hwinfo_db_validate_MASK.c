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
typedef  scalar_t__ u32 ;
struct nfp_hwinfo {scalar_t__ start; int /*<<< orphan*/  size; } ;
struct nfp_cpp {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct nfp_hwinfo*,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (struct nfp_cpp*,struct nfp_hwinfo*,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nfp_cpp*,char*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int
FUNC5(struct nfp_cpp *cpp, struct nfp_hwinfo *db, u32 len)
{
	u32 size, crc;

	size = FUNC3(db->size);
	if (size > len) {
		FUNC4(cpp, "Unsupported hwinfo size %u > %u\n", size, len);
		return -EINVAL;
	}

	size -= sizeof(u32);
	crc = FUNC0(db, size);
	if (crc != FUNC1(db->start + size)) {
		FUNC4(cpp, "Corrupt hwinfo table (CRC mismatch), calculated 0x%x, expected 0x%x\n",
			crc, FUNC1(db->start + size));

		return -EINVAL;
	}

	return FUNC2(cpp, db, size);
}