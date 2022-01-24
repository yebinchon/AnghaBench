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
typedef  int /*<<< orphan*/  v4l2_std_id ;
struct v4l2_subdev {int dummy; } ;
struct tw9910_priv {int /*<<< orphan*/  norm; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 struct tw9910_priv* FUNC0 (struct i2c_client*) ; 
 struct i2c_client* FUNC1 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC2(struct v4l2_subdev *sd, v4l2_std_id *norm)
{
	struct i2c_client *client = FUNC1(sd);
	struct tw9910_priv *priv = FUNC0(client);

	*norm = priv->norm;

	return 0;
}