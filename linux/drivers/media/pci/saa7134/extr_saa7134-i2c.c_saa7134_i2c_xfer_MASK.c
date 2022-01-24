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
struct saa7134_dev {int dummy; } ;
struct i2c_msg {int flags; int addr; int len; int* buf; } ;
struct i2c_adapter {struct saa7134_dev* algo_data; } ;
typedef  enum i2c_status { ____Placeholder_i2c_status } i2c_status ;

/* Variables and functions */
 int /*<<< orphan*/  CONTINUE ; 
 int EIO ; 
 int I2C_M_NOSTART ; 
 int I2C_M_RD ; 
 int /*<<< orphan*/  START ; 
 int /*<<< orphan*/  STOP ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int i2c_debug ; 
 int FUNC2 (struct saa7134_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct saa7134_dev*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (struct saa7134_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct saa7134_dev*) ; 
 int FUNC8 (struct saa7134_dev*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC9 (struct saa7134_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 unsigned char* str_i2c_status ; 

__attribute__((used)) static int FUNC11(struct i2c_adapter *i2c_adap,
			    struct i2c_msg *msgs, int num)
{
	struct saa7134_dev *dev = i2c_adap->algo_data;
	enum i2c_status status;
	unsigned char data;
	int addr,rc,i,byte;

	status = FUNC2(dev);
	if (!FUNC5(status))
		if (!FUNC7(dev))
			return -EIO;

	FUNC1(2, "start xfer\n");
	FUNC1(1, "i2c xfer:");
	for (i = 0; i < num; i++) {
		if (!(msgs[i].flags & I2C_M_NOSTART) || 0 == i) {
			/* send address */
			FUNC1(2, "send address\n");
			addr  = msgs[i].addr << 1;
			if (msgs[i].flags & I2C_M_RD)
				addr |= 1;
			if (i > 0 && msgs[i].flags &
			    I2C_M_RD && msgs[i].addr != 0x40 &&
			    msgs[i].addr != 0x41 &&
			    msgs[i].addr != 0x19) {
				/* workaround for a saa7134 i2c bug
				 * needed to talk to the mt352 demux
				 * thanks to pinnacle for the hint */
				int quirk = 0xfe;
				FUNC0(1, " [%02x quirk]", quirk);
				FUNC8(dev,START,quirk);
				FUNC6(dev);
			}
			FUNC0(1, " < %02x", addr);
			rc = FUNC8(dev,START,addr);
			if (rc < 0)
				 goto err;
		}
		if (msgs[i].flags & I2C_M_RD) {
			/* read bytes */
			FUNC1(2, "read bytes\n");
			for (byte = 0; byte < msgs[i].len; byte++) {
				FUNC0(1, " =");
				rc = FUNC6(dev);
				if (rc < 0)
					goto err;
				FUNC0(1, "%02x", rc);
				msgs[i].buf[byte] = rc;
			}
			/* discard mysterious extra byte when reading
			   from Samsung S5H1411.  i2c bus gets error
			   if we do not. */
			if (0x19 == msgs[i].addr) {
				FUNC0(1, " ?");
				rc = FUNC6(dev);
				if (rc < 0)
					goto err;
				FUNC0(1, "%02x", rc);
			}
		} else {
			/* write bytes */
			FUNC1(2, "write bytes\n");
			for (byte = 0; byte < msgs[i].len; byte++) {
				data = msgs[i].buf[byte];
				FUNC0(1, " %02x", data);
				rc = FUNC8(dev,CONTINUE,data);
				if (rc < 0)
					goto err;
			}
		}
	}
	FUNC1(2, "xfer done\n");
	FUNC0(1, " >");
	FUNC9(dev,STOP);
	rc = -EIO;
	if (!FUNC3(dev))
		goto err;
	status = FUNC2(dev);
	if (FUNC4(status))
		goto err;
	/* ensure that the bus is idle for at least one bit slot */
	FUNC10(1);

	FUNC0(1, "\n");
	return num;
 err:
	if (1 == i2c_debug) {
		status = FUNC2(dev);
		FUNC0(1, " ERROR: %s\n", str_i2c_status[status]);
	}
	return rc;
}