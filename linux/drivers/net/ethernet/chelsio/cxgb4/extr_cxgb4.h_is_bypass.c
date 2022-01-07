
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bypass; } ;
struct adapter {TYPE_1__ params; } ;



__attribute__((used)) static inline int is_bypass(struct adapter *adap)
{
 return adap->params.bypass;
}
