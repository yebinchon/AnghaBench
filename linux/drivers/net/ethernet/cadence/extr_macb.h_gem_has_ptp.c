
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macb {int caps; } ;


 int MACB_CAPS_GEM_HAS_PTP ;

__attribute__((used)) static inline bool gem_has_ptp(struct macb *bp)
{
 return !!(bp->caps & MACB_CAPS_GEM_HAS_PTP);
}
