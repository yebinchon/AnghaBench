
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mtu; } ;


 int XMTU ;
 TYPE_1__** arc_proto_map ;
 TYPE_1__ arc_proto_null ;

__attribute__((used)) static int choose_mtu(void)
{
 int count, mtu = 65535;


 for (count = 0; count < 256; count++) {
  if (arc_proto_map[count] != &arc_proto_null &&
      arc_proto_map[count]->mtu < mtu) {
   mtu = arc_proto_map[count]->mtu;
  }
 }

 return mtu == 65535 ? XMTU : mtu;
}
