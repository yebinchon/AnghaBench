
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum vpss_ccdc_source_sel { ____Placeholder_vpss_ccdc_source_sel } vpss_ccdc_source_sel ;


 int CCD_SRC_SEL_MASK ;
 int CCD_SRC_SEL_SHIFT ;
 int DM365_ISP5_CCDCMUX ;
 int VPSS_CCDCPG ;
 int VPSS_PGLPBK ;
 int isp5_read (int ) ;
 int isp5_write (int,int ) ;

__attribute__((used)) static void dm365_select_ccdc_source(enum vpss_ccdc_source_sel src_sel)
{
 u32 temp = isp5_read(DM365_ISP5_CCDCMUX) & ~CCD_SRC_SEL_MASK;


 if (src_sel == VPSS_PGLPBK || src_sel == VPSS_CCDCPG)
  temp |= 0x08;

 temp |= (src_sel << CCD_SRC_SEL_SHIFT);
 isp5_write(temp, DM365_ISP5_CCDCMUX);
}
