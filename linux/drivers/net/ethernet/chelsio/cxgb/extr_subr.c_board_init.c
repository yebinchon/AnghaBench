
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct board_info {int board; } ;
typedef int adapter_t ;


 int A_ELMER0_GPO ;
 int power_sequence_xpak (int *) ;
 int t1_tpi_par (int *,int) ;
 int t1_tpi_write (int *,int ,int) ;

__attribute__((used)) static int board_init(adapter_t *adapter, const struct board_info *bi)
{
 switch (bi->board) {
 case 137:
 case 129:
 case 128:
 case 130:
  t1_tpi_par(adapter, 0xf);
  t1_tpi_write(adapter, A_ELMER0_GPO, 0x800);
  break;
 case 134:
  t1_tpi_par(adapter, 0xf);
  t1_tpi_write(adapter, A_ELMER0_GPO, 0x1800);




  power_sequence_xpak(adapter);
  break;
 }
 return 0;
}
