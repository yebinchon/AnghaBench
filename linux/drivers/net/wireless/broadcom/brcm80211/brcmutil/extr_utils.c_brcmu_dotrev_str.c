
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int BRCMU_DOTREV_LEN ;
 int snprintf (char*,int ,char*,...) ;

char *brcmu_dotrev_str(u32 dotrev, char *buf)
{
 u8 dotval[4];

 if (!dotrev) {
  snprintf(buf, BRCMU_DOTREV_LEN, "unknown");
  return buf;
 }
 dotval[0] = (dotrev >> 24) & 0xFF;
 dotval[1] = (dotrev >> 16) & 0xFF;
 dotval[2] = (dotrev >> 8) & 0xFF;
 dotval[3] = dotrev & 0xFF;

 if (dotval[3])
  snprintf(buf, BRCMU_DOTREV_LEN, "%d.%d.%d.%d", dotval[0],
   dotval[1], dotval[2], dotval[3]);
 else if (dotval[2])
  snprintf(buf, BRCMU_DOTREV_LEN, "%d.%d.%d", dotval[0],
   dotval[1], dotval[2]);
 else
  snprintf(buf, BRCMU_DOTREV_LEN, "%d.%d", dotval[0],
   dotval[1]);

 return buf;
}
