
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct adapter {TYPE_1__** port; } ;
struct TYPE_2__ {char const* name; } ;



__attribute__((used)) static inline const char *port_name(struct adapter *adapter, int pidx)
{
 return adapter->port[pidx]->name;
}
