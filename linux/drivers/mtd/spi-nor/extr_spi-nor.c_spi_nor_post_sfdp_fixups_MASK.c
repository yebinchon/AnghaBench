#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct spi_nor {TYPE_2__* info; } ;
struct TYPE_4__ {int flags; TYPE_1__* fixups; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* post_sfdp ) (struct spi_nor*) ;} ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
#define  SNOR_MFR_SPANSION 128 
 int SPI_S3AN ; 
 int /*<<< orphan*/  FUNC1 (struct spi_nor*) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_nor*) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_nor*) ; 

__attribute__((used)) static void FUNC4(struct spi_nor *nor)
{
	switch (FUNC0(nor->info)) {
	case SNOR_MFR_SPANSION:
		FUNC2(nor);
		break;

	default:
		break;
	}

	if (nor->info->flags & SPI_S3AN)
		FUNC1(nor);

	if (nor->info->fixups && nor->info->fixups->post_sfdp)
		nor->info->fixups->post_sfdp(nor);
}