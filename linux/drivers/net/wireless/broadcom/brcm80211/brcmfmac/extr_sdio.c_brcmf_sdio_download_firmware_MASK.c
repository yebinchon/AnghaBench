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
typedef  int /*<<< orphan*/  u32 ;
struct firmware {int /*<<< orphan*/  data; } ;
struct brcmf_sdio {TYPE_1__* sdiodev; int /*<<< orphan*/  ci; } ;
struct TYPE_2__ {int /*<<< orphan*/  func1; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLK_AVAIL ; 
 int /*<<< orphan*/  CLK_SDONLY ; 
 int /*<<< orphan*/  SDIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (struct brcmf_sdio*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct brcmf_sdio*,struct firmware const*) ; 
 int FUNC6 (struct brcmf_sdio*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct firmware const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct brcmf_sdio *bus,
					const struct firmware *fw,
					void *nvram, u32 nvlen)
{
	int bcmerror;
	u32 rstvec;

	FUNC9(bus->sdiodev->func1);
	FUNC4(bus, CLK_AVAIL, false);

	rstvec = FUNC7(fw->data);
	FUNC1(SDIO, "firmware rstvec: %x\n", rstvec);

	bcmerror = FUNC5(bus, fw);
	FUNC8(fw);
	if (bcmerror) {
		FUNC2("dongle image file download failed\n");
		FUNC3(nvram);
		goto err;
	}

	bcmerror = FUNC6(bus, nvram, nvlen);
	FUNC3(nvram);
	if (bcmerror) {
		FUNC2("dongle nvram file download failed\n");
		goto err;
	}

	/* Take arm out of reset */
	if (!FUNC0(bus->ci, rstvec)) {
		FUNC2("error getting out of ARM core reset\n");
		goto err;
	}

err:
	FUNC4(bus, CLK_SDONLY, false);
	FUNC10(bus->sdiodev->func1);
	return bcmerror;
}