
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct media_link {int flags; TYPE_1__* reverse; TYPE_2__* sink; TYPE_2__* source; } ;
struct TYPE_5__ {int entity; } ;
struct TYPE_4__ {int flags; } ;


 int ENOIOCTLCMD ;
 int link_setup ;
 int media_entity_call (int ,int ,TYPE_2__*,TYPE_2__*,int ) ;

__attribute__((used)) static int __media_entity_setup_link_notify(struct media_link *link, u32 flags)
{
 int ret;


 ret = media_entity_call(link->source->entity, link_setup,
    link->source, link->sink, flags);
 if (ret < 0 && ret != -ENOIOCTLCMD)
  return ret;

 ret = media_entity_call(link->sink->entity, link_setup,
    link->sink, link->source, flags);
 if (ret < 0 && ret != -ENOIOCTLCMD) {
  media_entity_call(link->source->entity, link_setup,
      link->source, link->sink, link->flags);
  return ret;
 }

 link->flags = flags;
 link->reverse->flags = link->flags;

 return 0;
}
