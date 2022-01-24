#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/ * data; TYPE_1__* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  tx_errors; int /*<<< orphan*/  tx_dropped; int /*<<< orphan*/  tx_packets; } ;
struct net_device {int type; TYPE_2__ stats; scalar_t__ mem_start; } ;
struct frad_local {int type; struct net_device** master; } ;
struct buf_entry {int opp_flag; int /*<<< orphan*/  buf_addr; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
typedef  int /*<<< orphan*/  addr ;
struct TYPE_3__ {int type; scalar_t__ dev_addr; } ;

/* Variables and functions */
 int ARPHRD_DLCI ; 
#define  ARPHRD_FRAD 135 
 int CONFIG_DLCI_MAX ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int SDLA_ADDR_MASK ; 
 int /*<<< orphan*/  SDLA_INFORMATION_WRITE ; 
#define  SDLA_RET_BUF_OVERSIZE 134 
#define  SDLA_RET_CIR_OVERFLOW 133 
#define  SDLA_RET_NO_BUFS 132 
#define  SDLA_RET_OK 131 
#define  SDLA_S502A 130 
#define  SDLA_S502E 129 
#define  SDLA_S508 128 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct frad_local* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int FUNC7 (struct net_device*,int /*<<< orphan*/ ,short,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,short*) ; 
 int /*<<< orphan*/  sdla_lock ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static netdev_tx_t FUNC10(struct sk_buff *skb,
				 struct net_device *dev)
{
	struct frad_local *flp;
	int               ret, addr, accept, i;
	short             size;
	unsigned long     flags;
	struct buf_entry  *pbuf;

	flp = FUNC3(dev);
	ret = 0;
	accept = 1;

	FUNC5(dev);

	/*
	 * stupid GateD insists on setting up the multicast router thru us
	 * and we're ill equipped to handle a non Frame Relay packet at this
	 * time!
	 */

	accept = 1;
	switch (dev->type)
	{
		case ARPHRD_FRAD:
			if (skb->dev->type != ARPHRD_DLCI)
			{
				FUNC4(dev, "Non DLCI device, type %i, tried to send on FRAD module\n",
					    skb->dev->type);
				accept = 0;
			}
			break;
		default:
			FUNC4(dev, "unknown firmware type 0x%04X\n",
				    dev->type);
			accept = 0;
			break;
	}
	if (accept)
	{
		/* this is frame specific, but till there's a PPP module, it's the default */
		switch (flp->type)
		{
			case SDLA_S502A:
			case SDLA_S502E:
				ret = FUNC7(dev, SDLA_INFORMATION_WRITE, *(short *)(skb->dev->dev_addr), 0, skb->data, skb->len, NULL, NULL);
				break;
				case SDLA_S508:
				size = sizeof(addr);
				ret = FUNC7(dev, SDLA_INFORMATION_WRITE, *(short *)(skb->dev->dev_addr), 0, NULL, skb->len, &addr, &size);
				if (ret == SDLA_RET_OK)
				{

					FUNC8(&sdla_lock, flags);
					FUNC0(dev, addr);
					pbuf = (void *)(((int) dev->mem_start) + (addr & SDLA_ADDR_MASK));
					FUNC1(dev, pbuf->buf_addr, skb->data, skb->len);
					FUNC0(dev, addr);
					pbuf->opp_flag = 1;
					FUNC9(&sdla_lock, flags);
				}
				break;
		}

		switch (ret)
		{
			case SDLA_RET_OK:
				dev->stats.tx_packets++;
				break;

			case SDLA_RET_CIR_OVERFLOW:
			case SDLA_RET_BUF_OVERSIZE:
			case SDLA_RET_NO_BUFS:
				dev->stats.tx_dropped++;
				break;

			default:
				dev->stats.tx_errors++;
				break;
		}
	}
	FUNC6(dev);
	for(i=0;i<CONFIG_DLCI_MAX;i++)
	{
		if(flp->master[i]!=NULL)
			FUNC6(flp->master[i]);
	}		

	FUNC2(skb);
	return NETDEV_TX_OK;
}