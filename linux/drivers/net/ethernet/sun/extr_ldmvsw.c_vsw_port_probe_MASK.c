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
typedef  int u64 ;
struct vnet_port {int* raddr; int switch_port; int tso; int vsw; int /*<<< orphan*/  vio; int /*<<< orphan*/  napi; int /*<<< orphan*/  list; int /*<<< orphan*/  clean_timer; scalar_t__ tsolen; struct vnet* dev; struct vnet* vp; } ;
struct vnet {int /*<<< orphan*/  name; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  lock; int /*<<< orphan*/  port_list; } ;
struct vio_device_id {int dummy; } ;
struct vio_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  mp; } ;
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  lock; int /*<<< orphan*/  port_list; } ;
struct mdesc_handle {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct vnet*) ; 
 int /*<<< orphan*/  NAPI_POLL_WEIGHT ; 
 int FUNC3 (struct vnet*) ; 
 int /*<<< orphan*/  VDEV_NETWORK ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct vnet_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct vnet*) ; 
 int /*<<< orphan*/  id_prop ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int* FUNC9 (struct mdesc_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 struct mdesc_handle* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct mdesc_handle*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct vnet*,char*,int /*<<< orphan*/ ) ; 
 struct vnet_port* FUNC14 (struct vnet*) ; 
 int /*<<< orphan*/  FUNC15 (struct vnet*) ; 
 int /*<<< orphan*/  FUNC16 (struct vnet*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (char*,...) ; 
 int /*<<< orphan*/  FUNC19 (char*,int /*<<< orphan*/ ,int*,char*) ; 
 int FUNC20 (struct vnet*) ; 
 int /*<<< orphan*/  remote_macaddr_prop ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  sunvnet_clean_timer_expire_common ; 
 int /*<<< orphan*/  sunvnet_poll_common ; 
 int /*<<< orphan*/  FUNC23 (struct vnet_port*) ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC26 (int /*<<< orphan*/ *,struct vio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct vnet_port*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 struct vnet* FUNC30 (int /*<<< orphan*/ ,struct vio_dev*,int,int const) ; 
 struct vnet* FUNC31 (struct mdesc_handle*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  vsw_ldc_cfg ; 
 int /*<<< orphan*/  vsw_port_hwaddr ; 
 int /*<<< orphan*/  vsw_versions ; 
 int /*<<< orphan*/  vsw_vio_ops ; 

__attribute__((used)) static int FUNC32(struct vio_dev *vdev, const struct vio_device_id *id)
{
	struct mdesc_handle *hp;
	struct vnet_port *port;
	unsigned long flags;
	struct vnet *vp;
	struct net_device *dev;
	const u64 *rmac;
	int len, i, err;
	const u64 *port_id;
	u64 handle;

	hp = FUNC10();

	rmac = FUNC9(hp, vdev->mp, remote_macaddr_prop, &len);
	err = -ENODEV;
	if (!rmac) {
		FUNC18("Port lacks %s property\n", remote_macaddr_prop);
		FUNC11(hp);
		return err;
	}

	port_id = FUNC9(hp, vdev->mp, id_prop, NULL);
	err = -ENODEV;
	if (!port_id) {
		FUNC18("Port lacks %s property\n", id_prop);
		FUNC11(hp);
		return err;
	}

	/* Get (or create) the vnet associated with this port */
	vp = FUNC31(hp, vdev->mp, &handle);
	if (FUNC2(vp)) {
		err = FUNC3(vp);
		FUNC18("Failed to get vnet for vsw-port\n");
		FUNC11(hp);
		return err;
	}

	FUNC11(hp);

	dev = FUNC30(vsw_port_hwaddr, vdev, handle, *port_id);
	if (FUNC2(dev)) {
		err = FUNC3(dev);
		FUNC18("Failed to alloc netdev for vsw-port\n");
		return err;
	}

	port = FUNC14(dev);

	FUNC1(&port->list);

	for (i = 0; i < ETH_ALEN; i++)
		port->raddr[i] = (*rmac >> (5 - i) * 8) & 0xff;

	port->vp = vp;
	port->dev = dev;
	port->switch_port = 1;
	port->tso = false; /* no tso in vsw, misbehaves in bridge */
	port->tsolen = 0;

	/* Mark the port as belonging to ldmvsw which directs the
	 * the common code to use the net_device in the vnet_port
	 * rather than the net_device in the vnet (which is used
	 * by sunvnet). This bit is used by the VNET_PORT_TO_NET_DEVICE
	 * macro.
	 */
	port->vsw = 1;

	err = FUNC26(&port->vio, vdev, VDEV_NETWORK,
			      vsw_versions, FUNC0(vsw_versions),
			      &vsw_vio_ops, dev->name);
	if (err)
		goto err_out_free_dev;

	err = FUNC27(&port->vio, &vsw_ldc_cfg, port);
	if (err)
		goto err_out_free_dev;

	FUNC5(&vdev->dev, port);

	FUNC16(dev, &port->napi, sunvnet_poll_common,
		       NAPI_POLL_WEIGHT);

	FUNC21(&vp->lock, flags);
	FUNC7(&port->list, &vp->port_list);
	FUNC22(&vp->lock, flags);

	FUNC25(&port->clean_timer, sunvnet_clean_timer_expire_common, 0);

	err = FUNC20(dev);
	if (err) {
		FUNC18("Cannot register net device, aborting\n");
		goto err_out_del_timer;
	}

	FUNC21(&vp->lock, flags);
	FUNC23(port);
	FUNC22(&vp->lock, flags);

	FUNC12(&port->napi);
	FUNC29(&port->vio);

	/* assure no carrier until we receive an LDC_EVENT_UP,
	 * even if the vsw config script tries to force us up
	 */
	FUNC15(dev);

	FUNC13(dev, "LDOM vsw-port %pM\n", dev->dev_addr);

	FUNC19("%s: PORT ( remote-mac %pM%s )\n", dev->name,
		port->raddr, " switch-port");

	return 0;

err_out_del_timer:
	FUNC4(&port->clean_timer);
	FUNC8(&port->list);
	FUNC24();
	FUNC17(&port->napi);
	FUNC5(&vdev->dev, NULL);
	FUNC28(&port->vio);

err_out_free_dev:
	FUNC6(dev);
	return err;
}