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
struct v4l2_subdev {int dummy; } ;
struct tw9910_priv {int dummy; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 struct tw9910_priv* FUNC0 (struct i2c_client*) ; 
 int FUNC1 (struct tw9910_priv*) ; 
 int FUNC2 (struct tw9910_priv*) ; 
 struct i2c_client* FUNC3 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *sd, int on)
{
	struct i2c_client *client = FUNC3(sd);
	struct tw9910_priv *priv = FUNC0(client);

	return on ? FUNC2(priv) : FUNC1(priv);
}