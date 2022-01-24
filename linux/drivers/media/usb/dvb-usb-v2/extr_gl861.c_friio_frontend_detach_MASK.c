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
struct friio_priv {int /*<<< orphan*/  i2c_client_demod; int /*<<< orphan*/  tuner_adap; } ;
struct dvb_usb_adapter {int dummy; } ;

/* Variables and functions */
 struct friio_priv* FUNC0 (struct dvb_usb_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct dvb_usb_adapter *adap)
{
	struct friio_priv *priv;

	priv = FUNC0(adap);
	FUNC2(&priv->tuner_adap);
	FUNC1(priv->i2c_client_demod);
	return 0;
}