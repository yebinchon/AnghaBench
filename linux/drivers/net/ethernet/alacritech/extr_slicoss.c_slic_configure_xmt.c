
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct slic_device {scalar_t__ duplex; } ;


 scalar_t__ DUPLEX_FULL ;
 int SLIC_GXCR_PAUSEEN ;
 int SLIC_GXCR_RESET ;
 int SLIC_GXCR_XMTEN ;
 int SLIC_REG_WXCFG ;
 int slic_write (struct slic_device*,int ,int) ;

__attribute__((used)) static void slic_configure_xmt(struct slic_device *sdev)
{
 u32 val;

 val = SLIC_GXCR_RESET | SLIC_GXCR_XMTEN;

 if (sdev->duplex == DUPLEX_FULL)
  val |= SLIC_GXCR_PAUSEEN;

 slic_write(sdev, SLIC_REG_WXCFG, val);
}
