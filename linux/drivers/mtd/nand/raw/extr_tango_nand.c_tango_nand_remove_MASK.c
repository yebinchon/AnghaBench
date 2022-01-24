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
struct tango_nfc {TYPE_1__** chips; int /*<<< orphan*/  chan; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  nand_chip; } ;

/* Variables and functions */
 int MAX_CS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct tango_nfc* FUNC2 (struct platform_device*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	int cs;
	struct tango_nfc *nfc = FUNC2(pdev);

	FUNC0(nfc->chan);

	for (cs = 0; cs < MAX_CS; ++cs) {
		if (nfc->chips[cs])
			FUNC1(&nfc->chips[cs]->nand_chip);
	}

	return 0;
}