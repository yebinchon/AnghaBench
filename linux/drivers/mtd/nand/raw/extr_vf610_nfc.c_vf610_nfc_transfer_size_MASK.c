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
struct vf610_nfc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFC_SECTOR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct vf610_nfc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC1(struct vf610_nfc *nfc, int size)
{
	FUNC0(nfc, NFC_SECTOR_SIZE, size);
}