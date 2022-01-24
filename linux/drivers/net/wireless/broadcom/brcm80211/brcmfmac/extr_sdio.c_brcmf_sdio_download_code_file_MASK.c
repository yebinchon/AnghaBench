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
typedef  int /*<<< orphan*/  u8 ;
struct firmware {scalar_t__ size; scalar_t__ data; } ;
struct brcmf_sdio {TYPE_1__* ci; int /*<<< orphan*/  sdiodev; } ;
struct TYPE_2__ {int /*<<< orphan*/  rambase; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct brcmf_sdio *bus,
					 const struct firmware *fw)
{
	int err;

	FUNC0(TRACE, "Enter\n");

	err = FUNC3(bus->sdiodev, true, bus->ci->rambase,
				(u8 *)fw->data, fw->size);
	if (err)
		FUNC1("error %d on writing %d membytes at 0x%08x\n",
			  err, (int)fw->size, bus->ci->rambase);
	else if (!FUNC2(bus->sdiodev, bus->ci->rambase,
					  (u8 *)fw->data, fw->size))
		err = -EIO;

	return err;
}