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
struct video_i2c_data {TYPE_1__* chip; int /*<<< orphan*/  regmap; } ;
struct TYPE_2__ {int /*<<< orphan*/  buffer_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMG88XX_REG_T01L ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct video_i2c_data *data, char *buf)
{
	return FUNC0(data->regmap, AMG88XX_REG_T01L, buf,
				data->chip->buffer_size);
}