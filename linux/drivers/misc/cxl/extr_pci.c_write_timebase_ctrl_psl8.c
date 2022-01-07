
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxl {int dummy; } ;


 int CXL_PSL_TB_CTLSTAT ;
 int PSL_2048_250MHZ_CYCLES ;
 int TBSYNC_CNT (int) ;
 int cxl_p1_write (struct cxl*,int ,int ) ;

__attribute__((used)) static void write_timebase_ctrl_psl8(struct cxl *adapter)
{
 cxl_p1_write(adapter, CXL_PSL_TB_CTLSTAT,
       TBSYNC_CNT(2 * PSL_2048_250MHZ_CYCLES));
}
