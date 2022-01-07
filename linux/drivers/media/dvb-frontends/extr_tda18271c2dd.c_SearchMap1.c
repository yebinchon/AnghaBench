
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct SMap {scalar_t__ m_Frequency; int m_Param; } ;



__attribute__((used)) static bool SearchMap1(struct SMap Map[],
         u32 Frequency, u8 *pParam)
{
 int i = 0;

 while ((Map[i].m_Frequency != 0) && (Frequency > Map[i].m_Frequency))
  i += 1;
 if (Map[i].m_Frequency == 0)
  return 0;
 *pParam = Map[i].m_Param;
 return 1;
}
