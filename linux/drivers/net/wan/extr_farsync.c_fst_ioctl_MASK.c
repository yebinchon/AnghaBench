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
struct net_device {int dummy; } ;
struct TYPE_2__ {int type; } ;
struct ifreq {TYPE_1__ ifr_settings; int /*<<< orphan*/ * ifr_data; } ;
struct fstioc_write {scalar_t__ size; scalar_t__ offset; } ;
struct fstioc_info {scalar_t__ size; scalar_t__ offset; } ;
struct fst_port_info {int /*<<< orphan*/  mode; struct fst_card_info* card; } ;
struct fst_card_info {int /*<<< orphan*/  state; int /*<<< orphan*/  card_no; int /*<<< orphan*/  card_lock; scalar_t__ mem; } ;
typedef  int /*<<< orphan*/  info ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int /*<<< orphan*/  DBG_IOCTL ; 
 int EFAULT ; 
 int EINVAL ; 
 int EIO ; 
 int ENXIO ; 
 int EPERM ; 
#define  FSTCPURELEASE 143 
#define  FSTCPURESET 142 
#define  FSTGETCONF 141 
#define  FSTSETCONF 140 
#define  FSTWRITE 139 
 int /*<<< orphan*/  FST_DOWNLOAD ; 
 int /*<<< orphan*/  FST_GEN_HDLC ; 
 scalar_t__ FST_MEMSIZE ; 
 int /*<<< orphan*/  FST_RAW ; 
 int /*<<< orphan*/  FST_RESET ; 
 int /*<<< orphan*/  FST_RUNNING ; 
 int /*<<< orphan*/  FST_STARTING ; 
 int /*<<< orphan*/  FUNC0 (struct fst_card_info*,int /*<<< orphan*/ ,int) ; 
#define  IF_GET_IFACE 138 
#define  IF_GET_PROTO 137 
#define  IF_IFACE_E1 136 
#define  IF_IFACE_SYNC_SERIAL 135 
#define  IF_IFACE_T1 134 
#define  IF_IFACE_V24 133 
#define  IF_IFACE_V35 132 
#define  IF_IFACE_X21 131 
#define  IF_IFACE_X21D 130 
#define  IF_PROTO_RAW 129 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
#define  SIOCWANDEV 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fst_card_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct fstioc_write*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct fstioc_write*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int,...) ; 
 struct fst_port_info* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct fst_card_info*) ; 
 int /*<<< orphan*/  FUNC10 (struct fst_card_info*) ; 
 int /*<<< orphan*/  FUNC11 (struct fst_card_info*) ; 
 int FUNC12 (struct fst_card_info*,struct fst_port_info*,struct ifreq*) ; 
 int FUNC13 (struct fst_card_info*,struct fst_port_info*,struct ifreq*) ; 
 int /*<<< orphan*/  FUNC14 (struct fst_card_info*,struct fst_port_info*,struct fstioc_write*) ; 
 int FUNC15 (struct net_device*,struct ifreq*,int) ; 
 int /*<<< orphan*/  interruptHandshake ; 
 int /*<<< orphan*/  FUNC16 (void*) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,void*,scalar_t__) ; 
 void* FUNC18 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC20 (struct fst_card_info*,struct fst_port_info*,struct fstioc_write*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC23(struct net_device *dev, struct ifreq *ifr, int cmd)
{
	struct fst_card_info *card;
	struct fst_port_info *port;
	struct fstioc_write wrthdr;
	struct fstioc_info info;
	unsigned long flags;
	void *buf;

	FUNC7(DBG_IOCTL, "ioctl: %x, %p\n", cmd, ifr->ifr_data);

	port = FUNC8(dev);
	card = port->card;

	if (!FUNC3(CAP_NET_ADMIN))
		return -EPERM;

	switch (cmd) {
	case FSTCPURESET:
		FUNC10(card);
		card->state = FST_RESET;
		return 0;

	case FSTCPURELEASE:
		FUNC9(card);
		card->state = FST_STARTING;
		return 0;

	case FSTWRITE:		/* Code write (download) */

		/* First copy in the header with the length and offset of data
		 * to write
		 */
		if (ifr->ifr_data == NULL) {
			return -EINVAL;
		}
		if (FUNC5(&wrthdr, ifr->ifr_data,
				   sizeof (struct fstioc_write))) {
			return -EFAULT;
		}

		/* Sanity check the parameters. We don't support partial writes
		 * when going over the top
		 */
		if (wrthdr.size > FST_MEMSIZE || wrthdr.offset > FST_MEMSIZE ||
		    wrthdr.size + wrthdr.offset > FST_MEMSIZE) {
			return -ENXIO;
		}

		/* Now copy the data to the card. */

		buf = FUNC18(*(ifr->ifr_data + sizeof(struct fstioc_write)),
				  wrthdr.size);
		if (FUNC1(buf))
			return FUNC2(buf);

		FUNC17(card->mem + wrthdr.offset, buf, wrthdr.size);
		FUNC16(buf);

		/* Writes to the memory of a card in the reset state constitute
		 * a download
		 */
		if (card->state == FST_RESET) {
			card->state = FST_DOWNLOAD;
		}
		return 0;

	case FSTGETCONF:

		/* If card has just been started check the shared memory config
		 * version and marker
		 */
		if (card->state == FST_STARTING) {
			FUNC4(card);

			/* If everything checked out enable card interrupts */
			if (card->state == FST_RUNNING) {
				FUNC21(&card->card_lock, flags);
				FUNC11(card);
				FUNC0(card, interruptHandshake, 0xEE);
				FUNC22(&card->card_lock, flags);
			}
		}

		if (ifr->ifr_data == NULL) {
			return -EINVAL;
		}

		FUNC14(card, port, &info);

		if (FUNC6(ifr->ifr_data, &info, sizeof (info))) {
			return -EFAULT;
		}
		return 0;

	case FSTSETCONF:

		/*
		 * Most of the settings have been moved to the generic ioctls
		 * this just covers debug and board ident now
		 */

		if (card->state != FST_RUNNING) {
			FUNC19("Attempt to configure card %d in non-running state (%d)\n",
			       card->card_no, card->state);
			return -EIO;
		}
		if (FUNC5(&info, ifr->ifr_data, sizeof (info))) {
			return -EFAULT;
		}

		return FUNC20(card, port, &info);

	case SIOCWANDEV:
		switch (ifr->ifr_settings.type) {
		case IF_GET_IFACE:
			return FUNC12(card, port, ifr);

		case IF_IFACE_SYNC_SERIAL:
		case IF_IFACE_V35:
		case IF_IFACE_V24:
		case IF_IFACE_X21:
		case IF_IFACE_X21D:
		case IF_IFACE_T1:
		case IF_IFACE_E1:
			return FUNC13(card, port, ifr);

		case IF_PROTO_RAW:
			port->mode = FST_RAW;
			return 0;

		case IF_GET_PROTO:
			if (port->mode == FST_RAW) {
				ifr->ifr_settings.type = IF_PROTO_RAW;
				return 0;
			}
			return FUNC15(dev, ifr, cmd);

		default:
			port->mode = FST_GEN_HDLC;
			FUNC7(DBG_IOCTL, "Passing this type to hdlc %x\n",
			    ifr->ifr_settings.type);
			return FUNC15(dev, ifr, cmd);
		}

	default:
		/* Not one of ours. Pass through to HDLC package */
		return FUNC15(dev, ifr, cmd);
	}
}