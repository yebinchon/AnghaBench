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
struct idt_89hpesx_dev {int /*<<< orphan*/  smb_mtx; int /*<<< orphan*/  smb_write; int /*<<< orphan*/  smb_read; TYPE_1__* client; } ;
struct i2c_adapter {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; struct i2c_adapter* adapter; } ;

/* Variables and functions */
 int EPFNOSUPPORT ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_READ_BLOCK_DATA ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_READ_BYTE_DATA ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_READ_I2C_BLOCK ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_READ_WORD_DATA ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_WRITE_BLOCK_DATA ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_WRITE_BYTE_DATA ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_WRITE_I2C_BLOCK ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_WRITE_WORD_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 scalar_t__ FUNC3 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  idt_smb_read_block ; 
 int /*<<< orphan*/  idt_smb_read_byte ; 
 int /*<<< orphan*/  idt_smb_read_i2c_block ; 
 int /*<<< orphan*/  idt_smb_read_word ; 
 int /*<<< orphan*/  idt_smb_write_block ; 
 int /*<<< orphan*/  idt_smb_write_byte ; 
 int /*<<< orphan*/  idt_smb_write_i2c_block ; 
 int /*<<< orphan*/  idt_smb_write_word ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct idt_89hpesx_dev *pdev)
{
	struct i2c_adapter *adapter = pdev->client->adapter;
	struct device *dev = &pdev->client->dev;

	/* Check i2c adapter read functionality */
	if (FUNC3(adapter,
				    I2C_FUNC_SMBUS_READ_BLOCK_DATA)) {
		pdev->smb_read = idt_smb_read_block;
		FUNC0(dev, "SMBus block-read op chosen");
	} else if (FUNC3(adapter,
					   I2C_FUNC_SMBUS_READ_I2C_BLOCK)) {
		pdev->smb_read = idt_smb_read_i2c_block;
		FUNC0(dev, "SMBus i2c-block-read op chosen");
	} else if (FUNC3(adapter,
					   I2C_FUNC_SMBUS_READ_WORD_DATA) &&
		   FUNC3(adapter,
					   I2C_FUNC_SMBUS_READ_BYTE_DATA)) {
		pdev->smb_read = idt_smb_read_word;
		FUNC2(dev, "Use slow word/byte SMBus read ops");
	} else if (FUNC3(adapter,
					   I2C_FUNC_SMBUS_READ_BYTE_DATA)) {
		pdev->smb_read = idt_smb_read_byte;
		FUNC2(dev, "Use slow byte SMBus read op");
	} else /* no supported smbus read operations */ {
		FUNC1(dev, "No supported SMBus read op");
		return -EPFNOSUPPORT;
	}

	/* Check i2c adapter write functionality */
	if (FUNC3(adapter,
				    I2C_FUNC_SMBUS_WRITE_BLOCK_DATA)) {
		pdev->smb_write = idt_smb_write_block;
		FUNC0(dev, "SMBus block-write op chosen");
	} else if (FUNC3(adapter,
					   I2C_FUNC_SMBUS_WRITE_I2C_BLOCK)) {
		pdev->smb_write = idt_smb_write_i2c_block;
		FUNC0(dev, "SMBus i2c-block-write op chosen");
	} else if (FUNC3(adapter,
					   I2C_FUNC_SMBUS_WRITE_WORD_DATA) &&
		   FUNC3(adapter,
					   I2C_FUNC_SMBUS_WRITE_BYTE_DATA)) {
		pdev->smb_write = idt_smb_write_word;
		FUNC2(dev, "Use slow word/byte SMBus write op");
	} else if (FUNC3(adapter,
					   I2C_FUNC_SMBUS_WRITE_BYTE_DATA)) {
		pdev->smb_write = idt_smb_write_byte;
		FUNC2(dev, "Use slow byte SMBus write op");
	} else /* no supported smbus write operations */ {
		FUNC1(dev, "No supported SMBus write op");
		return -EPFNOSUPPORT;
	}

	/* Initialize IDT SMBus slave interface mutex */
	FUNC4(&pdev->smb_mtx);

	return 0;
}