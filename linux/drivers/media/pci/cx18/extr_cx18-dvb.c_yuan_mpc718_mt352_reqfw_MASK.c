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
struct firmware {size_t size; } ;
struct cx18_stream {struct cx18* cx; } ;
struct cx18 {TYPE_1__* pci_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EILSEQ ; 
 char* FWFILE ; 
 int /*<<< orphan*/  FUNC1 (struct firmware const*) ; 
 int FUNC2 (struct firmware const**,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct cx18_stream *stream,
				   const struct firmware **fw)
{
	struct cx18 *cx = stream->cx;
	const char *fn = FWFILE;
	int ret;

	ret = FUNC2(fw, fn, &cx->pci_dev->dev);
	if (ret)
		FUNC0("Unable to open firmware file %s\n", fn);
	else {
		size_t sz = (*fw)->size;
		if (sz < 2 || sz > 64 || (sz % 2) != 0) {
			FUNC0("Firmware %s has a bad size: %lu bytes\n",
				 fn, (unsigned long) sz);
			ret = -EILSEQ;
			FUNC1(*fw);
			*fw = NULL;
		}
	}

	if (ret) {
		FUNC0("The MPC718 board variant with the MT352 DVB-T demodulator will not work without it\n");
		FUNC0("Run 'linux/scripts/get_dvb_firmware mpc718' if you need the firmware\n");
	}
	return ret;
}