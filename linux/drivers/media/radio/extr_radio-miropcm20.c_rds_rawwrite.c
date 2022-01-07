
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_miro_aci {scalar_t__ aci_port; } ;


 scalar_t__ ACI_REG_RDS ;
 int outb (int ,scalar_t__) ;
 scalar_t__ rds_waitread (struct snd_miro_aci*) ;

__attribute__((used)) static int rds_rawwrite(struct snd_miro_aci *aci, u8 byte)
{
 if (rds_waitread(aci) >= 0) {
  outb(byte, aci->aci_port + ACI_REG_RDS);
  return 0;
 }
 return -1;
}
