
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int adapter_t ;


 int A_ELMER0_GPI_STAT ;
 int A_ELMER0_GPO ;
 int ELMER0_GP_BIT18 ;
 int ELMER0_GP_BIT5 ;
 int t1_tpi_read (int *,int ,int*) ;
 int t1_tpi_write (int *,int ,int) ;

__attribute__((used)) static void power_sequence_xpak(adapter_t* adapter)
{
 u32 mod_detect;
 u32 gpo;


 t1_tpi_read(adapter, A_ELMER0_GPI_STAT, &mod_detect);
 if (!(ELMER0_GP_BIT5 & mod_detect)) {

  t1_tpi_read(adapter, A_ELMER0_GPO, &gpo);
  gpo |= ELMER0_GP_BIT18;
  t1_tpi_write(adapter, A_ELMER0_GPO, gpo);
 }
}
