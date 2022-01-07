
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ArcProto {int dummy; } ;


 struct ArcProto* arc_bcast_proto ;
 struct ArcProto* arc_proto_default ;
 struct ArcProto** arc_proto_map ;
 struct ArcProto arc_proto_null ;
 struct ArcProto* arc_raw_proto ;

void arcnet_unregister_proto(struct ArcProto *proto)
{
 int count;

 if (arc_proto_default == proto)
  arc_proto_default = &arc_proto_null;
 if (arc_bcast_proto == proto)
  arc_bcast_proto = arc_proto_default;
 if (arc_raw_proto == proto)
  arc_raw_proto = arc_proto_default;

 for (count = 0; count < 256; count++) {
  if (arc_proto_map[count] == proto)
   arc_proto_map[count] = arc_proto_default;
 }
}
