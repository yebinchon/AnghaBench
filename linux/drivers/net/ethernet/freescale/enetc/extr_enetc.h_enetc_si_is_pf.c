
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int port; } ;
struct enetc_si {TYPE_1__ hw; } ;



__attribute__((used)) static inline bool enetc_si_is_pf(struct enetc_si *si)
{
 return !!(si->hw.port);
}
