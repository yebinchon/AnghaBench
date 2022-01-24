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
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  protocol; struct net_device* dev; scalar_t__ data; } ;
struct TYPE_2__ {int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct frhdr {scalar_t__ control; int IP_NLPID; int NLPID; int pad; int /*<<< orphan*/  PID; scalar_t__* OUI; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_IP ; 
 scalar_t__ FRAD_I_UI ; 
#define  FRAD_P_CLNP 132 
#define  FRAD_P_IP 131 
#define  FRAD_P_PADDING 130 
#define  FRAD_P_Q933 129 
#define  FRAD_P_SNAP 128 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC8(struct sk_buff *skb, struct net_device *dev)
{
	struct frhdr		*hdr;
	int					process, header;

	if (!FUNC5(skb, sizeof(*hdr))) {
		FUNC3(dev, "invalid data no header\n");
		dev->stats.rx_errors++;
		FUNC2(skb);
		return;
	}

	hdr = (struct frhdr *) skb->data;
	process = 0;
	header = 0;
	skb->dev = dev;

	if (hdr->control != FRAD_I_UI)
	{
		FUNC3(dev, "Invalid header flag 0x%02X\n",
			      hdr->control);
		dev->stats.rx_errors++;
	}
	else
		switch (hdr->IP_NLPID)
		{
			case FRAD_P_PADDING:
				if (hdr->NLPID != FRAD_P_SNAP)
				{
					FUNC3(dev, "Unsupported NLPID 0x%02X\n",
						      hdr->NLPID);
					dev->stats.rx_errors++;
					break;
				}
	 
				if (hdr->OUI[0] + hdr->OUI[1] + hdr->OUI[2] != 0)
				{
					FUNC3(dev, "Unsupported organizationally unique identifier 0x%02X-%02X-%02X\n",
						      hdr->OUI[0],
						      hdr->OUI[1],
						      hdr->OUI[2]);
					dev->stats.rx_errors++;
					break;
				}

				/* at this point, it's an EtherType frame */
				header = sizeof(struct frhdr);
				/* Already in network order ! */
				skb->protocol = hdr->PID;
				process = 1;
				break;

			case FRAD_P_IP:
				header = sizeof(hdr->control) + sizeof(hdr->IP_NLPID);
				skb->protocol = FUNC1(ETH_P_IP);
				process = 1;
				break;

			case FRAD_P_SNAP:
			case FRAD_P_Q933:
			case FRAD_P_CLNP:
				FUNC3(dev, "Unsupported NLPID 0x%02X\n",
					      hdr->pad);
				dev->stats.rx_errors++;
				break;

			default:
				FUNC3(dev, "Invalid pad byte 0x%02X\n",
					      hdr->pad);
				dev->stats.rx_errors++;
				break;				
		}

	if (process)
	{
		/* we've set up the protocol, so discard the header */
		FUNC7(skb);
		FUNC6(skb, header);
		dev->stats.rx_bytes += skb->len;
		FUNC4(skb);
		dev->stats.rx_packets++;
	}
	else
		FUNC0(skb);
}