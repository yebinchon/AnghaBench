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
struct idt_smb_seq {int bytecnt; int ccode; int /*<<< orphan*/  data; } ;
struct idt_89hpesx_dev {int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int CCODE_BLOCK ; 
 int CCODE_END ; 
 int CCODE_START ; 
 int EINVAL ; 
 int I2C_SMBUS_BLOCK_MAX ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  write_i2c_block ; 

__attribute__((used)) static int FUNC2(struct idt_89hpesx_dev *pdev,
				   const struct idt_smb_seq *seq)
{
	u8 ccode, buf[I2C_SMBUS_BLOCK_MAX + 1];

	/* Return error if too much data passed to send */
	if (seq->bytecnt > I2C_SMBUS_BLOCK_MAX)
		return -EINVAL;

	/* Collect the data to send. Length byte must be added prior the data */
	buf[0] = seq->bytecnt;
	FUNC1(&buf[1], seq->data, seq->bytecnt);

	/* Collect the command code byte */
	ccode = seq->ccode | CCODE_BLOCK | CCODE_START | CCODE_END;

	/* Send length and block of data to the device */
	return FUNC0(write_i2c_block, pdev->client, ccode,
		seq->bytecnt + 1, buf);
}