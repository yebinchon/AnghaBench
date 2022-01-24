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
struct CHIPSTATE {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TEA6320_FFL ; 
 int /*<<< orphan*/  TEA6320_FFR ; 
 int /*<<< orphan*/  TEA6320_FRL ; 
 int /*<<< orphan*/  TEA6320_FRR ; 
 int /*<<< orphan*/  FUNC0 (struct CHIPSTATE*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(struct CHIPSTATE * chip)
{
	FUNC0(chip, TEA6320_FFR, 0x3f);
	FUNC0(chip, TEA6320_FFL, 0x3f);
	FUNC0(chip, TEA6320_FRR, 0x3f);
	FUNC0(chip, TEA6320_FRL, 0x3f);

	return 0;
}