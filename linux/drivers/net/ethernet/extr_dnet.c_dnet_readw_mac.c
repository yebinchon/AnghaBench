
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dnet {int dummy; } ;


 int MACREG_ADDR ;
 int MACREG_DATA ;
 int dnet_readl (struct dnet*,int ) ;
 int dnet_writel (struct dnet*,int ,int ) ;
 int ndelay (int) ;

__attribute__((used)) static u16 dnet_readw_mac(struct dnet *bp, u16 reg)
{
 u16 data_read;


 dnet_writel(bp, reg, MACREG_ADDR);



 ndelay(500);


 data_read = dnet_readl(bp, MACREG_DATA);


 return data_read;
}
