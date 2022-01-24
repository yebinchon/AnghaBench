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
struct device {int dummy; } ;
struct brcmf_sdio_dev {int /*<<< orphan*/  func1; struct brcmf_sdio* bus; } ;
struct brcmf_sdio {TYPE_2__* ci; } ;
struct TYPE_3__ {struct brcmf_sdio_dev* sdio; } ;
struct brcmf_bus {TYPE_1__ bus_priv; } ;
struct TYPE_4__ {int rambase; } ;

/* Variables and functions */
 int /*<<< orphan*/  INFO ; 
 int MEMBLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int) ; 
 int FUNC2 (struct brcmf_sdio_dev*,int,int,void*,int) ; 
 struct brcmf_bus* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct device *dev, void *data,
				      size_t mem_size)
{
	struct brcmf_bus *bus_if = FUNC3(dev);
	struct brcmf_sdio_dev *sdiodev = bus_if->bus_priv.sdio;
	struct brcmf_sdio *bus = sdiodev->bus;
	int err;
	int address;
	int offset;
	int len;

	FUNC0(INFO, "dump at 0x%08x: size=%zu\n", bus->ci->rambase,
		  mem_size);

	address = bus->ci->rambase;
	offset = err = 0;
	FUNC4(sdiodev->func1);
	while (offset < mem_size) {
		len = ((offset + MEMBLOCK) < mem_size) ? MEMBLOCK :
		      mem_size - offset;
		err = FUNC2(sdiodev, false, address, data, len);
		if (err) {
			FUNC1("error %d on reading %d membytes at 0x%08x\n",
				  err, len, address);
			goto done;
		}
		data += len;
		offset += len;
		address += len;
	}

done:
	FUNC5(sdiodev->func1);
	return err;
}