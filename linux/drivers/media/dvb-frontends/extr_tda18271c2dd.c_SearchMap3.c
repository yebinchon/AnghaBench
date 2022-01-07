
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct SMap2 {scalar_t__ m_Frequency; int m_Param2; int m_Param1; } ;



__attribute__((used)) static bool SearchMap3(struct SMap2 Map[], u32 Frequency,
         u8 *pParam1, u8 *pParam2)
{
 int i = 0;

 while ((Map[i].m_Frequency != 0) &&
        (Frequency > Map[i].m_Frequency))
  i += 1;
 if (Map[i].m_Frequency == 0)
  return 0;
 *pParam1 = Map[i].m_Param1;
 *pParam2 = Map[i].m_Param2;
 return 1;
}
