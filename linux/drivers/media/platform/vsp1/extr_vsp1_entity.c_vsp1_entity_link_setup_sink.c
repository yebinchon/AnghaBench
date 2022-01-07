
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vsp1_entity {struct vsp1_entity** sources; } ;
struct media_pad {size_t index; int entity; } ;


 int EBUSY ;
 int MEDIA_LNK_FL_ENABLED ;
 struct vsp1_entity* media_entity_to_vsp1_entity (int ) ;

__attribute__((used)) static int vsp1_entity_link_setup_sink(const struct media_pad *source_pad,
           const struct media_pad *sink_pad,
           u32 flags)
{
 struct vsp1_entity *sink;
 struct vsp1_entity *source;

 sink = media_entity_to_vsp1_entity(sink_pad->entity);
 source = media_entity_to_vsp1_entity(source_pad->entity);

 if (flags & MEDIA_LNK_FL_ENABLED) {

  if (sink->sources[sink_pad->index])
   return -EBUSY;

  sink->sources[sink_pad->index] = source;
 } else {
  sink->sources[sink_pad->index] = ((void*)0);
 }

 return 0;
}
