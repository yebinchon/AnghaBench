
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int adapter_t ;


 int A_ELMER0_GPO ;
 int msleep (int) ;
 int t1_tpi_read (int *,int ,int*) ;
 int t1_tpi_write (int *,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static int mv88x201x_phy_reset(adapter_t *adapter)
{
 u32 val;

 t1_tpi_read(adapter, A_ELMER0_GPO, &val);
 val &= ~4;
 t1_tpi_write(adapter, A_ELMER0_GPO, val);
 msleep(100);

 t1_tpi_write(adapter, A_ELMER0_GPO, val | 4);
 msleep(1000);


 t1_tpi_read(adapter, A_ELMER0_GPO, &val);
 val |= 0x8000;
 t1_tpi_write(adapter, A_ELMER0_GPO, val);
 udelay(100);
 return 0;
}
