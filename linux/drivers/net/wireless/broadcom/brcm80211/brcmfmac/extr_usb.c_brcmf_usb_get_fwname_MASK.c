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
typedef  int /*<<< orphan*/  u8 ;
struct device {int dummy; } ;
struct brcmf_fw_request {int dummy; } ;
struct brcmf_fw_name {char const* member_0; int /*<<< orphan*/ * member_1; } ;
struct brcmf_bus {int /*<<< orphan*/  chiprev; int /*<<< orphan*/  chip; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct brcmf_fw_name*) ; 
 int ENOMEM ; 
 struct brcmf_fw_request* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct brcmf_fw_name*,int /*<<< orphan*/ ,struct brcmf_fw_name*,int /*<<< orphan*/ ) ; 
 struct brcmf_fw_name* brcmf_usb_fwnames ; 
 struct brcmf_bus* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct brcmf_fw_request*) ; 

__attribute__((used)) static
int FUNC4(struct device *dev, const char *ext, u8 *fw_name)
{
	struct brcmf_bus *bus = FUNC2(dev);
	struct brcmf_fw_request *fwreq;
	struct brcmf_fw_name fwnames[] = {
		{ ext, fw_name },
	};

	fwreq = FUNC1(bus->chip, bus->chiprev,
				       brcmf_usb_fwnames,
				       FUNC0(brcmf_usb_fwnames),
				       fwnames, FUNC0(fwnames));
	if (!fwreq)
		return -ENOMEM;

	FUNC3(fwreq);
	return 0;
}