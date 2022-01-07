
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int disconnected; int connected; } ;


 int _scif_zap_mmaps (int,int *) ;
 TYPE_1__ scif_info ;

void scif_zap_mmaps(int node)
{
 _scif_zap_mmaps(node, &scif_info.connected);
 _scif_zap_mmaps(node, &scif_info.disconnected);
}
