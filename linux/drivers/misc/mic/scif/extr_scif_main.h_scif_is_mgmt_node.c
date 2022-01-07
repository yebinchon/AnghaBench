
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nodeid; } ;


 TYPE_1__ scif_info ;

__attribute__((used)) static inline bool scif_is_mgmt_node(void)
{
 return !scif_info.nodeid;
}
