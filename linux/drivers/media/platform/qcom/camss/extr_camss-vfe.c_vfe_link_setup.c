
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct media_pad {int dummy; } ;
struct media_entity {int dummy; } ;


 int EBUSY ;
 int MEDIA_LNK_FL_ENABLED ;
 scalar_t__ media_entity_remote_pad (struct media_pad const*) ;

__attribute__((used)) static int vfe_link_setup(struct media_entity *entity,
     const struct media_pad *local,
     const struct media_pad *remote, u32 flags)
{
 if (flags & MEDIA_LNK_FL_ENABLED)
  if (media_entity_remote_pad(local))
   return -EBUSY;

 return 0;
}
