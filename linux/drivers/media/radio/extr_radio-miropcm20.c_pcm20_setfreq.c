
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_miro_aci {int aci_version; } ;
struct pcm20 {struct snd_miro_aci* aci; } ;


 int ACI_WRITE_TUNE ;
 int RDS_RESET ;
 int rds_cmd (struct snd_miro_aci*,int ,int *,int ) ;
 int snd_aci_cmd (struct snd_miro_aci*,int ,unsigned char,unsigned char) ;

__attribute__((used)) static int pcm20_setfreq(struct pcm20 *dev, unsigned long freq)
{
 unsigned char freql;
 unsigned char freqh;
 struct snd_miro_aci *aci = dev->aci;

 freq /= 160;
 if (!(aci->aci_version == 0x07 || aci->aci_version >= 0xb0))
  freq /= 10;

 freql = freq & 0xff;
 freqh = freq >> 8;

 rds_cmd(aci, RDS_RESET, ((void*)0), 0);
 return snd_aci_cmd(aci, ACI_WRITE_TUNE, freql, freqh);
}
