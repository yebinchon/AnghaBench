
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_miro_aci {int dummy; } ;


 int RDS_DATAMASK ;
 int rds_readcycle (struct snd_miro_aci*) ;

__attribute__((used)) static int rds_ack(struct snd_miro_aci *aci)
{
 int i = rds_readcycle(aci);

 if (i < 0)
  return -1;
 if (i & RDS_DATAMASK)
  return 0;
 return 1;
}
