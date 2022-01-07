
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpss_sync_pol {int ccdpg_hdpol; int ccdpg_vdpol; } ;


 int DM365_CCDC_PG_HD_POL_SHIFT ;
 int DM365_CCDC_PG_VD_POL_SHIFT ;
 int DM365_ISP5_CCDCMUX ;
 int isp5_read (int ) ;
 int isp5_write (int,int ) ;

void dm365_vpss_set_sync_pol(struct vpss_sync_pol sync)
{
 int val = 0;
 val = isp5_read(DM365_ISP5_CCDCMUX);

 val |= (sync.ccdpg_hdpol << DM365_CCDC_PG_HD_POL_SHIFT);
 val |= (sync.ccdpg_vdpol << DM365_CCDC_PG_VD_POL_SHIFT);

 isp5_write(val, DM365_ISP5_CCDCMUX);
}
