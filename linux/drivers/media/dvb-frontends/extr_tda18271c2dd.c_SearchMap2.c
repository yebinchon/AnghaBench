
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct SMapI {scalar_t__ m_Frequency; int m_Param; } ;
typedef int s32 ;



__attribute__((used)) static bool SearchMap2(struct SMapI Map[],
         u32 Frequency, s32 *pParam)
{
 int i = 0;

 while ((Map[i].m_Frequency != 0) &&
        (Frequency > Map[i].m_Frequency))
  i += 1;
 if (Map[i].m_Frequency == 0)
  return 0;
 *pParam = Map[i].m_Param;
 return 1;
}
