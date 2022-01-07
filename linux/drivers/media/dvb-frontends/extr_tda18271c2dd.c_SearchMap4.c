
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct SRFBandMap {scalar_t__ m_RF_max; } ;



__attribute__((used)) static bool SearchMap4(struct SRFBandMap Map[],
         u32 Frequency, u8 *pRFBand)
{
 int i = 0;

 while (i < 7 && (Frequency > Map[i].m_RF_max))
  i += 1;
 if (i == 7)
  return 0;
 *pRFBand = i;
 return 1;
}
