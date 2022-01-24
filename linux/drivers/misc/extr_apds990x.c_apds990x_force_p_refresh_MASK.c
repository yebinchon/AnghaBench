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
struct apds990x_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  APDS990X_PIHTL ; 
 int /*<<< orphan*/  APDS990X_PILTL ; 
 scalar_t__ APDS_PROX_DEF_THRES ; 
 int /*<<< orphan*/  FUNC0 (struct apds990x_chip*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC1(struct apds990x_chip *chip)
{
	/* This will force proximity interrupt after the next measurement. */
	FUNC0(chip, APDS990X_PILTL, APDS_PROX_DEF_THRES - 1);
	FUNC0(chip, APDS990X_PIHTL, APDS_PROX_DEF_THRES);
}