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
struct bh1770_chip {int int_mode_lux; int int_mode_prox; int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int /*<<< orphan*/  BH1770_INTERRUPT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline int FUNC1(struct bh1770_chip *chip,
					int lux)
{
	chip->int_mode_lux = lux;
	/* Set interrupt modes, interrupt active low, latched */
	return FUNC0(chip->client,
					BH1770_INTERRUPT,
					(lux << 1) | chip->int_mode_prox);
}