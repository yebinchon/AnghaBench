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
typedef  scalar_t__ u8 ;
struct c2port_device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ C2PORT_COMMAND_OK ; 
 int C2PORT_DEVICE_ERASE ; 
 int /*<<< orphan*/  C2PORT_FPDAT ; 
 int EBUSY ; 
 int FUNC0 (struct c2port_device*) ; 
 int FUNC1 (struct c2port_device*) ; 
 int FUNC2 (struct c2port_device*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (struct c2port_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct c2port_device*,int) ; 

__attribute__((used)) static ssize_t FUNC5(struct c2port_device *dev)
{
	u8 status;
	int ret;

	/* Target the C2 flash programming data register for C2 data register
	 * access.
	 */
	FUNC3(dev, C2PORT_FPDAT);

	/* Send device erase command */
	FUNC4(dev, C2PORT_DEVICE_ERASE);

	/* Wait for input acknowledge */
	ret = FUNC0(dev);
	if (ret < 0)
		return ret;

	/* Should check status before starting FLASH access sequence */

	/* Wait for status information */
	ret = FUNC1(dev);
	if (ret < 0)
		return ret;

	/* Read flash programming interface status */
	ret = FUNC2(dev, &status);
	if (ret < 0)
		return ret;
	if (status != C2PORT_COMMAND_OK)
		return -EBUSY;

	/* Send a three-byte arming sequence to enable the device erase.
	 * If the sequence is not received correctly, the command will be
	 * ignored.
	 * Sequence is: 0xde, 0xad, 0xa5.
	 */
	FUNC4(dev, 0xde);
	ret = FUNC0(dev);
	if (ret < 0)
		return ret;
	FUNC4(dev, 0xad);
	ret = FUNC0(dev);
	if (ret < 0)
		return ret;
	FUNC4(dev, 0xa5);
	ret = FUNC0(dev);
	if (ret < 0)
		return ret;

	ret = FUNC1(dev);
	if (ret < 0)
		return ret;

	return 0;
}