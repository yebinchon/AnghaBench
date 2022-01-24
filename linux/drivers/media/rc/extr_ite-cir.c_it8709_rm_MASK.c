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
struct ite_dev {scalar_t__ cir_addr; } ;

/* Variables and functions */
 scalar_t__ IT8709_RAM_IDX ; 
 scalar_t__ IT8709_RAM_VAL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static inline u8 FUNC2(struct ite_dev *dev, int index)
{
	FUNC1(index, dev->cir_addr + IT8709_RAM_IDX);
	return FUNC0(dev->cir_addr + IT8709_RAM_VAL);
}