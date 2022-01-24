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
typedef  int /*<<< orphan*/  u32 ;
struct i2c_client {int dummy; } ;
struct ddb_port {TYPE_3__* dev; scalar_t__ en_freedata; TYPE_2__* dvb; TYPE_1__* i2c; int /*<<< orphan*/  en; } ;
struct cxd2099_cfg {int /*<<< orphan*/ * en; int /*<<< orphan*/  bitrate; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {struct i2c_client** i2c_client; } ;
struct TYPE_4__ {int /*<<< orphan*/  adap; } ;

/* Variables and functions */
 int ENODEV ; 
 struct cxd2099_cfg cxd_cfgtmpl ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct i2c_client* FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,struct cxd2099_cfg*) ; 

__attribute__((used)) static int FUNC2(struct ddb_port *port, u32 bitrate)
{
	struct cxd2099_cfg cxd_cfg = cxd_cfgtmpl;
	struct i2c_client *client;

	cxd_cfg.bitrate = bitrate;
	cxd_cfg.en = &port->en;

	client = FUNC1("cxd2099", NULL, &port->i2c->adap,
				  0x40, &cxd_cfg);
	if (!client)
		goto err;

	port->dvb[0].i2c_client[0] = client;
	port->en_freedata = 0;
	return 0;

err:
	FUNC0(port->dev->dev, "CXD2099AR attach failed\n");
	return -ENODEV;
}