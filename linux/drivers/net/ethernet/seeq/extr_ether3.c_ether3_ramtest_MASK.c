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
struct net_device {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int RX_END ; 
 int /*<<< orphan*/  RX_LEN ; 
 int RX_START ; 
 int /*<<< orphan*/  TX_END ; 
 int /*<<< orphan*/  buffer_read ; 
 int /*<<< orphan*/  buffer_write ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 unsigned char* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,unsigned char,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

__attribute__((used)) static int
FUNC7(struct net_device *dev, unsigned char byte)
{
	unsigned char *buffer = FUNC4(RX_END, GFP_KERNEL);
	int i,ret = 0;
	int max_errors = 4;
	int bad = -1;

	if (!buffer)
		return 1;

	FUNC5(buffer, byte, RX_END);
	FUNC1(dev, buffer_write, 0);
	FUNC2(dev, buffer, TX_END);
	FUNC1(dev, buffer_write, RX_START);
	FUNC2(dev, buffer + RX_START, RX_LEN);
	FUNC5(buffer, byte ^ 0xff, RX_END);
	FUNC1(dev, buffer_read, 0);
	FUNC0(dev, buffer, TX_END);
	FUNC1(dev, buffer_read, RX_START);
	FUNC0(dev, buffer + RX_START, RX_LEN);

	for (i = 0; i < RX_END; i++) {
		if (buffer[i] != byte) {
			if (max_errors > 0 && bad != buffer[i]) {
				FUNC6("%s: RAM failed with (%02X instead of %02X) at 0x%04X",
				       dev->name, buffer[i], byte, i);
				ret = 2;
				max_errors--;
				bad = i;
			}
		} else {
			if (bad != -1) {
				if (bad != i - 1)
					FUNC6(" - 0x%04X\n", i - 1);
				FUNC6("\n");
				bad = -1;
			}
		}
	}
	if (bad != -1)
		FUNC6(" - 0xffff\n");
	FUNC3(buffer);

	return ret;
}