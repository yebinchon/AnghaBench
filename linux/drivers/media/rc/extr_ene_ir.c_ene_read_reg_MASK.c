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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct ene_device {scalar_t__ hw_io; } ;

/* Variables and functions */
 scalar_t__ ENE_IO ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ene_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static u8 FUNC3(struct ene_device *dev, u16 reg)
{
	u8 retval;
	FUNC1(dev, reg);
	retval = FUNC2(dev->hw_io + ENE_IO);
	FUNC0("reg %04x == %02x", reg, retval);
	return retval;
}