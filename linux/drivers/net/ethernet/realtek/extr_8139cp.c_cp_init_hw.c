
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ dev_addr; } ;
struct cp_private {scalar_t__ wol_enabled; struct net_device* dev; } ;
typedef int __le32 ;


 int Cfg9346 ;
 int Cfg9346_Lock ;
 int Cfg9346_Unlock ;
 int Config1 ;
 int Config3 ;
 int Config5 ;
 int DriverLoaded ;
 int IFG ;
 scalar_t__ MAC0 ;
 int MultiIntr ;
 int PARMEnable ;
 int PMEStatus ;
 int PMEnable ;
 int TX_DMA_BURST ;
 scalar_t__ TxConfig ;
 int TxDMAShift ;
 int TxThresh ;
 int __cp_set_rx_mode (struct net_device*) ;
 int cp_reset_hw (struct cp_private*) ;
 int cp_start_hw (struct cp_private*) ;
 int cpr8 (int ) ;
 int cpw16 (int ,int ) ;
 int cpw32_f (scalar_t__,int) ;
 int cpw8 (int ,int) ;
 int cpw8_f (int ,int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static void cp_init_hw (struct cp_private *cp)
{
 struct net_device *dev = cp->dev;

 cp_reset_hw(cp);

 cpw8_f (Cfg9346, Cfg9346_Unlock);


 cpw32_f (MAC0 + 0, le32_to_cpu (*(__le32 *) (dev->dev_addr + 0)));
 cpw32_f (MAC0 + 4, le32_to_cpu (*(__le32 *) (dev->dev_addr + 4)));

 cp_start_hw(cp);
 cpw8(TxThresh, 0x06);

 __cp_set_rx_mode(dev);
 cpw32_f (TxConfig, IFG | (TX_DMA_BURST << TxDMAShift));

 cpw8(Config1, cpr8(Config1) | DriverLoaded | PMEnable);

 cpw8(Config3, PARMEnable);
 cp->wol_enabled = 0;

 cpw8(Config5, cpr8(Config5) & PMEStatus);

 cpw16(MultiIntr, 0);

 cpw8_f(Cfg9346, Cfg9346_Lock);
}
