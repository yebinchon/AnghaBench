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
struct wl3501_card {int base_addr; int* mac_addr; void** version; void* reg_domain; } ;

/* Variables and functions */
 int WL3501_BSS_FPAGE0 ; 
 int WL3501_BSS_FPAGE3 ; 
 int /*<<< orphan*/  WL3501_BSS_SPAGE0 ; 
 scalar_t__ WL3501_NIC_BSS ; 
 scalar_t__ WL3501_NIC_IODPA ; 
 scalar_t__ WL3501_NIC_LMAH ; 
 scalar_t__ WL3501_NIC_LMAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct wl3501_card*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct wl3501_card *this)
{
	int base_addr = this->base_addr;

	/* get MAC addr */
	FUNC2(WL3501_BSS_FPAGE3, base_addr + WL3501_NIC_BSS); /* BSS */
	FUNC2(0x00, base_addr + WL3501_NIC_LMAL);	/* LMAL */
	FUNC2(0x40, base_addr + WL3501_NIC_LMAH);	/* LMAH */

	/* wait for reading EEPROM */
	FUNC0(100);
	this->mac_addr[0] = FUNC1(base_addr + WL3501_NIC_IODPA);
	FUNC0(100);
	this->mac_addr[1] = FUNC1(base_addr + WL3501_NIC_IODPA);
	FUNC0(100);
	this->mac_addr[2] = FUNC1(base_addr + WL3501_NIC_IODPA);
	FUNC0(100);
	this->mac_addr[3] = FUNC1(base_addr + WL3501_NIC_IODPA);
	FUNC0(100);
	this->mac_addr[4] = FUNC1(base_addr + WL3501_NIC_IODPA);
	FUNC0(100);
	this->mac_addr[5] = FUNC1(base_addr + WL3501_NIC_IODPA);
	FUNC0(100);
	this->reg_domain = FUNC1(base_addr + WL3501_NIC_IODPA);
	FUNC0(100);
	FUNC2(WL3501_BSS_FPAGE0, base_addr + WL3501_NIC_BSS);
	FUNC2(0x04, base_addr + WL3501_NIC_LMAL);
	FUNC2(0x40, base_addr + WL3501_NIC_LMAH);
	FUNC0(100);
	this->version[0] = FUNC1(base_addr + WL3501_NIC_IODPA);
	FUNC0(100);
	this->version[1] = FUNC1(base_addr + WL3501_NIC_IODPA);
	/* switch to SRAM Page 0 (for safety) */
	FUNC3(this, WL3501_BSS_SPAGE0);

	/* The MAC addr should be 00:60:... */
	return this->mac_addr[0] == 0x00 && this->mac_addr[1] == 0x60;
}