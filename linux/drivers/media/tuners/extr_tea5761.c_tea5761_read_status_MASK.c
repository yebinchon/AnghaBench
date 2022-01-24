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
struct tea5761_priv {int /*<<< orphan*/  i2c_props; } ;
struct dvb_frontend {struct tea5761_priv* tuner_priv; } ;

/* Variables and functions */
 int EREMOTEIO ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static int FUNC3(struct dvb_frontend *fe, char *buffer)
{
	struct tea5761_priv *priv = fe->tuner_priv;
	int rc;

	FUNC0(buffer, 0, 16);
	if (16 != (rc = FUNC1(&priv->i2c_props, buffer, 16))) {
		FUNC2("i2c i/o error: rc == %d (should be 16)\n", rc);
		return -EREMOTEIO;
	}

	return 0;
}