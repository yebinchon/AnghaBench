
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m5mols_info {int sd; } ;


 int AE_MODE ;
 unsigned int REG_AE_ALL ;
 unsigned int REG_AE_CENTER ;
 unsigned int REG_AE_SPOT ;


 int m5mols_write (int *,int ,unsigned int) ;

__attribute__((used)) static int m5mols_set_metering_mode(struct m5mols_info *info, int mode)
{
 unsigned int metering;

 switch (mode) {
 case 129:
  metering = REG_AE_CENTER;
  break;
 case 128:
  metering = REG_AE_SPOT;
  break;
 default:
  metering = REG_AE_ALL;
  break;
 }

 return m5mols_write(&info->sd, AE_MODE, metering);
}
