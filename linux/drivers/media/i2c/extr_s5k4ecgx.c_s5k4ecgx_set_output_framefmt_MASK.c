#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct s5k4ecgx {TYPE_1__* curr_pixfmt; TYPE_3__* curr_frmsize; int /*<<< orphan*/  sd; } ;
struct i2c_client {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_6__ {TYPE_2__ size; } ;
struct TYPE_4__ {int /*<<< orphan*/  reg_p_format; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct i2c_client* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct s5k4ecgx *priv)
{
	struct i2c_client *client = FUNC4(&priv->sd);
	int ret;

	ret = FUNC3(client, FUNC2(0),
			     priv->curr_frmsize->size.width);
	if (!ret)
		ret = FUNC3(client, FUNC1(0),
				     priv->curr_frmsize->size.height);
	if (!ret)
		ret = FUNC3(client, FUNC0(0),
				     priv->curr_pixfmt->reg_p_format);
	return ret;
}