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
typedef  int u64 ;
struct vnet_port {int* raddr; int switch_port; int tso; int /*<<< orphan*/  vio; int /*<<< orphan*/  napi; int /*<<< orphan*/  clean_timer; int /*<<< orphan*/  hash; int /*<<< orphan*/  list; scalar_t__ tsolen; struct vnet* vp; } ;
struct vnet {TYPE_1__* dev; int /*<<< orphan*/  lock; int /*<<< orphan*/ * port_hash; int /*<<< orphan*/  port_list; } ;
struct vio_device_id {int dummy; } ;
struct vio_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  mp; } ;
struct mdesc_handle {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct vnet*) ; 
 int /*<<< orphan*/  NAPI_POLL_WEIGHT ; 
 int FUNC4 (struct vnet*) ; 
 int /*<<< orphan*/  VDEV_NETWORK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct vnet_port*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct vnet_port*) ; 
 struct vnet_port* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int* FUNC11 (struct mdesc_handle*,int /*<<< orphan*/ ,char*,int*) ; 
 struct mdesc_handle* FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct mdesc_handle*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 
 int /*<<< orphan*/  FUNC17 (char*,int /*<<< orphan*/ ,int*,char*) ; 
 char* remote_macaddr_prop ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  sunvnet_clean_timer_expire_common ; 
 int /*<<< orphan*/  sunvnet_poll_common ; 
 int /*<<< orphan*/  FUNC20 (struct vnet_port*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC22 (int /*<<< orphan*/ *,struct vio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct vnet_port*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 struct vnet* FUNC25 (struct mdesc_handle*,int /*<<< orphan*/ ,struct vio_dev*) ; 
 size_t FUNC26 (int*) ; 
 int /*<<< orphan*/  vnet_ldc_cfg ; 
 int /*<<< orphan*/  vnet_versions ; 
 int /*<<< orphan*/  vnet_vio_ops ; 

__attribute__((used)) static int FUNC27(struct vio_dev *vdev, const struct vio_device_id *id)
{
	struct mdesc_handle *hp;
	struct vnet_port *port;
	unsigned long flags;
	struct vnet *vp;
	const u64 *rmac;
	int len, i, err, switch_port;

	hp = FUNC12();

	vp = FUNC25(hp, vdev->mp, vdev);
	if (FUNC3(vp)) {
		FUNC16("Cannot find port parent vnet\n");
		err = FUNC4(vp);
		goto err_out_put_mdesc;
	}

	rmac = FUNC11(hp, vdev->mp, remote_macaddr_prop, &len);
	err = -ENODEV;
	if (!rmac) {
		FUNC16("Port lacks %s property\n", remote_macaddr_prop);
		goto err_out_put_mdesc;
	}

	port = FUNC8(sizeof(*port), GFP_KERNEL);
	err = -ENOMEM;
	if (!port)
		goto err_out_put_mdesc;

	for (i = 0; i < ETH_ALEN; i++)
		port->raddr[i] = (*rmac >> (5 - i) * 8) & 0xff;

	port->vp = vp;

	err = FUNC22(&port->vio, vdev, VDEV_NETWORK,
			      vnet_versions, FUNC0(vnet_versions),
			      &vnet_vio_ops, vp->dev->name);
	if (err)
		goto err_out_free_port;

	err = FUNC23(&port->vio, &vnet_ldc_cfg, port);
	if (err)
		goto err_out_free_port;

	FUNC15(port->vp->dev, &port->napi, sunvnet_poll_common,
		       NAPI_POLL_WEIGHT);

	FUNC1(&port->hash);
	FUNC2(&port->list);

	switch_port = 0;
	if (FUNC11(hp, vdev->mp, "switch-port", NULL))
		switch_port = 1;
	port->switch_port = switch_port;
	port->tso = true;
	port->tsolen = 0;

	FUNC18(&vp->lock, flags);
	if (switch_port)
		FUNC9(&port->list, &vp->port_list);
	else
		FUNC10(&port->list, &vp->port_list);
	FUNC6(&port->hash,
			   &vp->port_hash[FUNC26(port->raddr)]);
	FUNC20(port);
	FUNC19(&vp->lock, flags);

	FUNC5(&vdev->dev, port);

	FUNC17("%s: PORT ( remote-mac %pM%s )\n",
		vp->dev->name, port->raddr, switch_port ? " switch-port" : "");

	FUNC21(&port->clean_timer, sunvnet_clean_timer_expire_common, 0);

	FUNC14(&port->napi);
	FUNC24(&port->vio);

	FUNC13(hp);

	return 0;

err_out_free_port:
	FUNC7(port);

err_out_put_mdesc:
	FUNC13(hp);
	return err;
}