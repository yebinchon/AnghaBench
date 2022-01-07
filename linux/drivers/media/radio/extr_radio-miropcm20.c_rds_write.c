
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_miro_aci {int dummy; } ;


 int RDS_CLOCKMASK ;
 int RDS_DATAMASK ;
 int rds_rawwrite (struct snd_miro_aci*,int) ;

__attribute__((used)) static int rds_write(struct snd_miro_aci *aci, u8 byte)
{
 u8 sendbuffer[8];
 int i;

 for (i = 7; i >= 0; i--)
  sendbuffer[7 - i] = (byte & (1 << i)) ? RDS_DATAMASK : 0;
 sendbuffer[0] |= RDS_CLOCKMASK;

 for (i = 0; i < 8; i++)
  rds_rawwrite(aci, sendbuffer[i]);
 return 0;
}
