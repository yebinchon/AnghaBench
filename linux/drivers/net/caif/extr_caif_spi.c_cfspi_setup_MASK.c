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
struct net_device {int flags; int needs_free_netdev; int /*<<< orphan*/  mtu; int /*<<< orphan*/  priv_flags; int /*<<< orphan*/  type; int /*<<< orphan*/ * netdev_ops; scalar_t__ features; } ;
struct TYPE_2__ {int use_frag; int use_stx; int use_fcs; int /*<<< orphan*/  link_select; } ;
struct cfspi {struct net_device* ndev; TYPE_1__ cfdev; int /*<<< orphan*/  chead; int /*<<< orphan*/  qhead; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARPHRD_CAIF ; 
 int /*<<< orphan*/  CAIF_LINK_HIGH_BANDW ; 
 int IFF_NOARP ; 
 int /*<<< orphan*/  IFF_NO_QUEUE ; 
 int IFF_POINTOPOINT ; 
 int /*<<< orphan*/  SPI_MAX_PAYLOAD_SIZE ; 
 int /*<<< orphan*/  cfspi_ops ; 
 struct cfspi* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct net_device *dev)
{
	struct cfspi *cfspi = FUNC0(dev);
	dev->features = 0;
	dev->netdev_ops = &cfspi_ops;
	dev->type = ARPHRD_CAIF;
	dev->flags = IFF_NOARP | IFF_POINTOPOINT;
	dev->priv_flags |= IFF_NO_QUEUE;
	dev->mtu = SPI_MAX_PAYLOAD_SIZE;
	dev->needs_free_netdev = true;
	FUNC1(&cfspi->qhead);
	FUNC1(&cfspi->chead);
	cfspi->cfdev.link_select = CAIF_LINK_HIGH_BANDW;
	cfspi->cfdev.use_frag = false;
	cfspi->cfdev.use_stx = false;
	cfspi->cfdev.use_fcs = false;
	cfspi->ndev = dev;
}