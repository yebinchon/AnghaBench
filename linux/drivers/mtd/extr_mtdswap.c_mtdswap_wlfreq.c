
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int COLLECT_NONDIRTY_BASE ;
 int COLLECT_NONDIRTY_FREQ1 ;
 int COLLECT_NONDIRTY_FREQ2 ;
 unsigned int MAX_ERASE_DIFF ;

__attribute__((used)) static int mtdswap_wlfreq(unsigned int maxdiff)
{
 unsigned int h, x, y, dist, base;







 dist = maxdiff - MAX_ERASE_DIFF;
 if (dist > COLLECT_NONDIRTY_BASE)
  dist = COLLECT_NONDIRTY_BASE;






 h = COLLECT_NONDIRTY_FREQ1 - COLLECT_NONDIRTY_FREQ2;
 base = COLLECT_NONDIRTY_BASE;

 x = dist - base;
 y = (x * h + base / 2) / base;

 return COLLECT_NONDIRTY_FREQ2 + y;
}
