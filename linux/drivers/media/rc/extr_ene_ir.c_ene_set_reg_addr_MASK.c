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
typedef  int u16 ;
struct ene_device {scalar_t__ hw_io; } ;

/* Variables and functions */
 scalar_t__ ENE_ADDR_HI ; 
 scalar_t__ ENE_ADDR_LO ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC1(struct ene_device *dev, u16 reg)
{
	FUNC0(reg >> 8, dev->hw_io + ENE_ADDR_HI);
	FUNC0(reg & 0xFF, dev->hw_io + ENE_ADDR_LO);
}