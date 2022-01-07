
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int RXCLK_RCD ;

__attribute__((used)) static inline u16 count_to_clock_divider(unsigned int d)
{
 if (d > RXCLK_RCD + 1)
  d = RXCLK_RCD;
 else if (d < 2)
  d = 1;
 else
  d--;
 return (u16) d;
}
