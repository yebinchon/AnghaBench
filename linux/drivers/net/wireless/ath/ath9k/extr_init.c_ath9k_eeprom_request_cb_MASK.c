#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct firmware {int dummy; } ;
struct ath9k_eeprom_ctx {int /*<<< orphan*/  complete; TYPE_1__* ah; } ;
struct TYPE_2__ {struct firmware const* eeprom_blob; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(const struct firmware *eeprom_blob,
				    void *ctx)
{
	struct ath9k_eeprom_ctx *ec = ctx;

	if (eeprom_blob)
		ec->ah->eeprom_blob = eeprom_blob;

	FUNC0(&ec->complete);
}