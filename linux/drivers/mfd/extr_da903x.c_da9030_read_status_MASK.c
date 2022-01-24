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
typedef  int /*<<< orphan*/  uint8_t ;
struct da903x_chip {int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int /*<<< orphan*/  DA9030_STATUS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(struct da903x_chip *chip, unsigned int *status)
{
	return FUNC0(chip->client, DA9030_STATUS, (uint8_t *)status);
}