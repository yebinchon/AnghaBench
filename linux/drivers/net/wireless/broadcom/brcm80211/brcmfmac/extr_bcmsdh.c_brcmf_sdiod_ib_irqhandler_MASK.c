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
struct sdio_func {int /*<<< orphan*/  dev; } ;
struct brcmf_sdio_dev {int /*<<< orphan*/  bus; } ;
struct TYPE_2__ {struct brcmf_sdio_dev* sdio; } ;
struct brcmf_bus {TYPE_1__ bus_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct brcmf_bus* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct sdio_func *func)
{
	struct brcmf_bus *bus_if = FUNC2(&func->dev);
	struct brcmf_sdio_dev *sdiodev = bus_if->bus_priv.sdio;

	FUNC0(INTR, "IB intr triggered\n");

	FUNC1(sdiodev->bus);
}