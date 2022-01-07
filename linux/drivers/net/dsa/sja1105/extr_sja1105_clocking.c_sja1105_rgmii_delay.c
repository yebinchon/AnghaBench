
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;



__attribute__((used)) static inline u64 sja1105_rgmii_delay(u64 phase)
{




 phase *= 10;
 return (phase - 738) / 9;
}
