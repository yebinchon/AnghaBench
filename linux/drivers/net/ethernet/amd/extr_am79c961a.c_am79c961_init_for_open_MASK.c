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
typedef  int u_int ;
typedef  int u16 ;
struct net_device {unsigned char* dev_addr; int /*<<< orphan*/  base_addr; } ;
struct dev_priv {int rxhdr; int* rxbuffer; int txhdr; int* txbuffer; scalar_t__ txtail; scalar_t__ txhead; scalar_t__ rxtail; scalar_t__ rxhead; int /*<<< orphan*/  chip_lock; } ;

/* Variables and functions */
 int BASERXH ; 
 int BASERXL ; 
 int BASETXL ; 
 int CSR0 ; 
 int CSR0_BABL ; 
 int CSR0_CERR ; 
 int CSR0_IENA ; 
 int CSR0_MERR ; 
 int CSR0_MISS ; 
 int CSR0_RINT ; 
 int CSR0_STOP ; 
 int CSR0_STRT ; 
 int CSR0_TINT ; 
 int CSR3 ; 
 int CSR3_BABLM ; 
 int CSR3_DXSUFLO ; 
 int CSR3_IDONM ; 
 int CSR4 ; 
 int CSR4_APAD_XMIT ; 
 int CSR4_JABM ; 
 int CSR4_MFCOM ; 
 int CSR4_RCVCCOM ; 
 int CSR4_TXSTRTM ; 
 int LADRH ; 
 int LADRL ; 
 int MODE ; 
 int PADRH ; 
 int PADRL ; 
 int POLLINT ; 
 int RMD_OWN ; 
 int RX_BUFFERS ; 
 int SIZERXR ; 
 int SIZETXR ; 
 int TMD_ENP ; 
 int TMD_STP ; 
 int TX_BUFFERS ; 
 int FUNC0 (struct net_device*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int,int) ; 
 struct dev_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC7(struct net_device *dev)
{
	struct dev_priv *priv = FUNC2(dev);
	unsigned long flags;
	unsigned char *p;
	u_int hdr_addr, first_free_addr;
	u16 multi_hash[4], mode = FUNC0(dev, multi_hash);
	int i;

	/*
	 * Stop the chip.
	 */
	FUNC3(&priv->chip_lock, flags);
	FUNC6 (dev->base_addr, CSR0, CSR0_BABL|CSR0_CERR|CSR0_MISS|CSR0_MERR|CSR0_TINT|CSR0_RINT|CSR0_STOP);
	FUNC4(&priv->chip_lock, flags);

	FUNC5 (dev->base_addr, 5, 0x00a0); /* Receive address LED */
	FUNC5 (dev->base_addr, 6, 0x0081); /* Collision LED */
	FUNC5 (dev->base_addr, 7, 0x0090); /* XMIT LED */
	FUNC5 (dev->base_addr, 2, 0x0000); /* MODE register selects media */

	for (i = LADRL; i <= LADRH; i++)
		FUNC6 (dev->base_addr, i, multi_hash[i - LADRL]);

	for (i = PADRL, p = dev->dev_addr; i <= PADRH; i++, p += 2)
		FUNC6 (dev->base_addr, i, p[0] | (p[1] << 8));

	FUNC6 (dev->base_addr, MODE, mode);
	FUNC6 (dev->base_addr, POLLINT, 0);
	FUNC6 (dev->base_addr, SIZERXR, -RX_BUFFERS);
	FUNC6 (dev->base_addr, SIZETXR, -TX_BUFFERS);

	first_free_addr = RX_BUFFERS * 8 + TX_BUFFERS * 8 + 16;
	hdr_addr = 0;

	priv->rxhead = 0;
	priv->rxtail = 0;
	priv->rxhdr = hdr_addr;

	for (i = 0; i < RX_BUFFERS; i++) {
		priv->rxbuffer[i] = first_free_addr;
		FUNC1 (dev, hdr_addr, first_free_addr);
		FUNC1 (dev, hdr_addr + 2, RMD_OWN);
		FUNC1 (dev, hdr_addr + 4, (-1600));
		FUNC1 (dev, hdr_addr + 6, 0);
		first_free_addr += 1600;
		hdr_addr += 8;
	}
	priv->txhead = 0;
	priv->txtail = 0;
	priv->txhdr = hdr_addr;
	for (i = 0; i < TX_BUFFERS; i++) {
		priv->txbuffer[i] = first_free_addr;
		FUNC1 (dev, hdr_addr, first_free_addr);
		FUNC1 (dev, hdr_addr + 2, TMD_STP|TMD_ENP);
		FUNC1 (dev, hdr_addr + 4, 0xf000);
		FUNC1 (dev, hdr_addr + 6, 0);
		first_free_addr += 1600;
		hdr_addr += 8;
	}

	FUNC6 (dev->base_addr, BASERXL, priv->rxhdr);
	FUNC6 (dev->base_addr, BASERXH, 0);
	FUNC6 (dev->base_addr, BASETXL, priv->txhdr);
	FUNC6 (dev->base_addr, BASERXH, 0);
	FUNC6 (dev->base_addr, CSR0, CSR0_STOP);
	FUNC6 (dev->base_addr, CSR3, CSR3_IDONM|CSR3_BABLM|CSR3_DXSUFLO);
	FUNC6 (dev->base_addr, CSR4, CSR4_APAD_XMIT|CSR4_MFCOM|CSR4_RCVCCOM|CSR4_TXSTRTM|CSR4_JABM);
	FUNC6 (dev->base_addr, CSR0, CSR0_IENA|CSR0_STRT);
}