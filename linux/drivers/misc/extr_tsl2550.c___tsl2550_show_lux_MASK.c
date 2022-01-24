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
struct tsl2550_data {int operating_mode; } ;
struct i2c_client {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  TSL2550_READ_ADC0 ; 
 int /*<<< orphan*/  TSL2550_READ_ADC1 ; 
 struct tsl2550_data* FUNC0 (struct i2c_client*) ; 
 int FUNC1 (char*,char*,int) ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC4(struct i2c_client *client, char *buf)
{
	struct tsl2550_data *data = FUNC0(client);
	u8 ch0, ch1;
	int ret;

	ret = FUNC3(client, TSL2550_READ_ADC0);
	if (ret < 0)
		return ret;
	ch0 = ret;

	ret = FUNC3(client, TSL2550_READ_ADC1);
	if (ret < 0)
		return ret;
	ch1 = ret;

	/* Do the job */
	ret = FUNC2(ch0, ch1);
	if (ret < 0)
		return ret;
	if (data->operating_mode == 1)
		ret *= 5;

	return FUNC1(buf, "%d\n", ret);
}