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
typedef  int u8 ;
struct tmio_nand {TYPE_1__* dev; scalar_t__ fcr; int /*<<< orphan*/  comp; } ;
struct nand_chip {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FCR_IMR ; 
 scalar_t__ FCR_ISR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (long) ; 
 struct tmio_nand* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nand_chip*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct nand_chip*) ; 
 scalar_t__ FUNC8 (int) ; 
 long FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct nand_chip *nand_chip)
{
	struct tmio_nand *tmio = FUNC2(FUNC4(nand_chip));
	long timeout;
	u8 status;

	/* enable RDYREQ interrupt */

	FUNC6(0x0f, tmio->fcr + FCR_ISR);
	FUNC5(&tmio->comp);
	FUNC6(0x81, tmio->fcr + FCR_IMR);

	timeout = 400;
	timeout = FUNC9(&tmio->comp,
					      FUNC1(timeout));

	if (FUNC8(!FUNC7(nand_chip))) {
		FUNC6(0x00, tmio->fcr + FCR_IMR);
		FUNC0(&tmio->dev->dev, "still busy after 400 ms\n");

	} else if (FUNC8(!timeout)) {
		FUNC6(0x00, tmio->fcr + FCR_IMR);
		FUNC0(&tmio->dev->dev, "timeout waiting for interrupt\n");
	}

	FUNC3(nand_chip, &status);
	return status;
}