#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_9__ ;
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct virtio_net_hdr {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/  sk_destruct; int /*<<< orphan*/  sk_write_space; } ;
struct TYPE_11__ {int /*<<< orphan*/  wait; } ;
struct TYPE_13__ {int /*<<< orphan*/ * ops; struct file* file; int /*<<< orphan*/  state; int /*<<< orphan*/  type; TYPE_2__ wq; } ;
struct tap_queue {int flags; int vnet_hdr_sz; TYPE_3__ sk; TYPE_5__ sock; int /*<<< orphan*/  ring; } ;
struct tap_dev {TYPE_8__* dev; } ;
struct net {int dummy; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_15__ {TYPE_1__* nsproxy; } ;
struct TYPE_14__ {int features; int /*<<< orphan*/  tx_queue_len; } ;
struct TYPE_10__ {struct net* net_ns; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IFF_NO_PI ; 
 int IFF_TAP ; 
 int IFF_VNET_HDR ; 
 int NETIF_F_HIGHDMA ; 
 int NETIF_F_SG ; 
 int /*<<< orphan*/  SOCK_RAW ; 
 int /*<<< orphan*/  SOCK_ZEROCOPY ; 
 int /*<<< orphan*/  SS_CONNECTED ; 
 TYPE_9__* current ; 
 struct tap_dev* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tap_proto ; 
 int FUNC13 (struct tap_dev*,struct file*,struct tap_queue*) ; 
 int /*<<< orphan*/  tap_sock_destruct ; 
 int /*<<< orphan*/  tap_sock_write_space ; 
 int /*<<< orphan*/  tap_socket_ops ; 

__attribute__((used)) static int FUNC14(struct inode *inode, struct file *file)
{
	struct net *net = current->nsproxy->net_ns;
	struct tap_dev *tap;
	struct tap_queue *q;
	int err = -ENODEV;

	FUNC6();
	tap = FUNC0(FUNC2(inode), FUNC3(inode));
	if (!tap)
		goto err;

	err = -ENOMEM;
	q = (struct tap_queue *)FUNC8(net, AF_UNSPEC, GFP_KERNEL,
					     &tap_proto, 0);
	if (!q)
		goto err;
	if (FUNC5(&q->ring, tap->dev->tx_queue_len, GFP_KERNEL)) {
		FUNC9(&q->sk);
		goto err;
	}

	FUNC4(&q->sock.wq.wait);
	q->sock.type = SOCK_RAW;
	q->sock.state = SS_CONNECTED;
	q->sock.file = file;
	q->sock.ops = &tap_socket_ops;
	FUNC10(&q->sock, &q->sk);
	q->sk.sk_write_space = tap_sock_write_space;
	q->sk.sk_destruct = tap_sock_destruct;
	q->flags = IFF_VNET_HDR | IFF_NO_PI | IFF_TAP;
	q->vnet_hdr_sz = sizeof(struct virtio_net_hdr);

	/*
	 * so far only KVM virtio_net uses tap, enable zero copy between
	 * guest kernel and host kernel when lower device supports zerocopy
	 *
	 * The macvlan supports zerocopy iff the lower device supports zero
	 * copy so we don't have to look at the lower device directly.
	 */
	if ((tap->dev->features & NETIF_F_HIGHDMA) && (tap->dev->features & NETIF_F_SG))
		FUNC12(&q->sk, SOCK_ZEROCOPY);

	err = FUNC13(tap, file, q);
	if (err) {
		/* tap_sock_destruct() will take care of freeing ptr_ring */
		goto err_put;
	}

	FUNC1(tap->dev);

	FUNC7();
	return err;

err_put:
	FUNC11(&q->sk);
err:
	if (tap)
		FUNC1(tap->dev);

	FUNC7();
	return err;
}