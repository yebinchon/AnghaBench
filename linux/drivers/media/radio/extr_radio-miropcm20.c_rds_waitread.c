
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_miro_aci {scalar_t__ aci_port; } ;


 scalar_t__ ACI_REG_RDS ;
 int RDS_BUSYMASK ;
 int inb (scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static int rds_waitread(struct snd_miro_aci *aci)
{
 u8 byte;
 int i = 2000;

 do {
  byte = inb(aci->aci_port + ACI_REG_RDS);
  i--;
 } while ((byte & RDS_BUSYMASK) && i);






 udelay(1);
 return i ? byte : -1;
}
