
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_miro_aci {scalar_t__ aci_port; } ;


 scalar_t__ ACI_REG_RDS ;
 int outb (int ,scalar_t__) ;
 int rds_waitread (struct snd_miro_aci*) ;

__attribute__((used)) static int rds_readcycle_nowait(struct snd_miro_aci *aci)
{
 outb(0, aci->aci_port + ACI_REG_RDS);
 return rds_waitread(aci);
}
