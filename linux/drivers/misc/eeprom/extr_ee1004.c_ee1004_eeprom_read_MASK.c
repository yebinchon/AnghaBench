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
struct i2c_client {int /*<<< orphan*/  dev; } ;
typedef  int ssize_t ;

/* Variables and functions */
 unsigned int EE1004_PAGE_SIZE ; 
 size_t I2C_SMBUS_BLOCK_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,size_t,unsigned int,int) ; 
 int FUNC1 (struct i2c_client*,unsigned int,size_t,char*) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static ssize_t FUNC3(struct i2c_client *client, char *buf,
				  unsigned int offset, size_t count)
{
	int status;

	if (count > I2C_SMBUS_BLOCK_MAX)
		count = I2C_SMBUS_BLOCK_MAX;
	/* Can't cross page boundaries */
	if (FUNC2(offset + count > EE1004_PAGE_SIZE))
		count = EE1004_PAGE_SIZE - offset;

	status = FUNC1(client, offset,
							   count, buf);
	FUNC0(&client->dev, "read %zu@%d --> %d\n", count, offset, status);

	return status;
}