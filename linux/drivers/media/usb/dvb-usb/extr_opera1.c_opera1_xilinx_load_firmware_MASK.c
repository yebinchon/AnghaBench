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
typedef  int u8 ;
struct usb_device {int /*<<< orphan*/  dev; } ;
struct firmware {int size; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  OPERA_READ_MSG ; 
 int OPERA_WRITE_FX2 ; 
 int /*<<< orphan*/  OPERA_WRITE_MSG ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct usb_device*,int,int,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct firmware const*) ; 
 int FUNC7 (struct firmware const**,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct usb_device *dev,
				       const char *filename)
{
	const struct firmware *fw = NULL;
	u8 *b, *p;
	int ret = 0, i,fpgasize=40;
	u8 testval;
	FUNC1("start downloading fpga firmware %s",filename);

	if ((ret = FUNC7(&fw, filename, &dev->dev)) != 0) {
		FUNC0("did not find the firmware file '%s'. You can use <kernel_dir>/scripts/get_dvb_firmware to get the firmware",
			filename);
		return ret;
	} else {
		p = FUNC3(fw->size, GFP_KERNEL);
		FUNC5(dev, 0xbc, 0x00, &testval, 1, OPERA_READ_MSG);
		if (p != NULL && testval != 0x67) {

			u8 reset = 0, fpga_command = 0;
			FUNC4(p, fw->data, fw->size);
			/* clear fpga ? */
			FUNC5(dev, 0xbc, 0xaa, &fpga_command, 1,
					 OPERA_WRITE_MSG);
			for (i = 0; i < fw->size;) {
				if ( (fw->size - i) <fpgasize){
				    fpgasize=fw->size-i;
				}
				b = (u8 *) p + i;
				if (FUNC5
					(dev, OPERA_WRITE_FX2, 0x0, b , fpgasize,
						OPERA_WRITE_MSG) != fpgasize
					) {
					FUNC0("error while transferring firmware");
					ret = -EINVAL;
					break;
				}
				i = i + fpgasize;
			}
			/* restart the CPU */
			if (ret || FUNC5
					(dev, 0xa0, 0xe600, &reset, 1,
					OPERA_WRITE_MSG) != 1) {
				FUNC0("could not restart the USB controller CPU.");
				ret = -EINVAL;
			}
		}
	}
	FUNC2(p);
	FUNC6(fw);
	return ret;
}