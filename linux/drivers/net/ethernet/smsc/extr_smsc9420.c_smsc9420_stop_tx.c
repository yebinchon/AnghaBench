
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct smsc9420_pdata {int dev; } ;


 int DMAC_CONTROL ;
 int DMAC_CONTROL_ST_ ;
 int DMAC_INTR_ENA ;
 int DMAC_INTR_ENA_TX_ ;
 int DMAC_STATUS ;
 int DMAC_STS_TS_ ;
 int DMAC_STS_TXPS_ ;
 int MAC_CR ;
 int MAC_CR_TXEN_ ;
 int ifdown ;
 int netif_warn (struct smsc9420_pdata*,int ,int ,char*) ;
 int smsc9420_pci_flush_write (struct smsc9420_pdata*) ;
 int smsc9420_reg_read (struct smsc9420_pdata*,int ) ;
 int smsc9420_reg_write (struct smsc9420_pdata*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void smsc9420_stop_tx(struct smsc9420_pdata *pd)
{
 u32 dmac_control, mac_cr, dma_intr_ena;
 int timeout = 1000;


 dmac_control = smsc9420_reg_read(pd, DMAC_CONTROL);
 dmac_control &= (~DMAC_CONTROL_ST_);
 smsc9420_reg_write(pd, DMAC_CONTROL, dmac_control);


 while (--timeout) {
  if (smsc9420_reg_read(pd, DMAC_STATUS) & DMAC_STS_TS_)
   break;
  udelay(10);
 }

 if (!timeout)
  netif_warn(pd, ifdown, pd->dev, "TX DMAC failed to stop\n");


 smsc9420_reg_write(pd, DMAC_STATUS, DMAC_STS_TXPS_);


 dma_intr_ena = smsc9420_reg_read(pd, DMAC_INTR_ENA);
 dma_intr_ena &= ~(DMAC_INTR_ENA_TX_);
 smsc9420_reg_write(pd, DMAC_INTR_ENA, dma_intr_ena);
 smsc9420_pci_flush_write(pd);


 mac_cr = smsc9420_reg_read(pd, MAC_CR) & (~MAC_CR_TXEN_);
 smsc9420_reg_write(pd, MAC_CR, mac_cr);
 smsc9420_pci_flush_write(pd);
}
