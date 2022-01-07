
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_miro_aci {int dummy; } ;


 scalar_t__ rds_rawwrite (struct snd_miro_aci*,int ) ;
 int rds_waitread (struct snd_miro_aci*) ;

__attribute__((used)) static int rds_readcycle(struct snd_miro_aci *aci)
{
 if (rds_rawwrite(aci, 0) < 0)
  return -1;
 return rds_waitread(aci);
}
