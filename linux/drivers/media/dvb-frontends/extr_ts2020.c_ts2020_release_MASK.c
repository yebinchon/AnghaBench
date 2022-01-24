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
struct ts2020_priv {struct i2c_client* client; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct dvb_frontend {struct ts2020_priv* tuner_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*) ; 

__attribute__((used)) static void FUNC2(struct dvb_frontend *fe)
{
	struct ts2020_priv *priv = fe->tuner_priv;
	struct i2c_client *client = priv->client;

	FUNC0(&client->dev, "\n");

	FUNC1(client);
}