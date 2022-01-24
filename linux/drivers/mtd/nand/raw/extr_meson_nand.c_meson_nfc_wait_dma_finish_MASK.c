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
struct meson_nfc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BUSY_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct meson_nfc*) ; 
 int FUNC1 (struct meson_nfc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct meson_nfc *nfc)
{
	FUNC0(nfc);

	return FUNC1(nfc, DMA_BUSY_TIMEOUT);
}