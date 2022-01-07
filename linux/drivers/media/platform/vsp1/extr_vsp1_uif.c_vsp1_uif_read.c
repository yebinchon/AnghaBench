
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int index; int vsp1; } ;
struct vsp1_uif {TYPE_1__ entity; } ;


 int VI6_UIF_OFFSET ;
 scalar_t__ vsp1_read (int ,scalar_t__) ;

__attribute__((used)) static inline u32 vsp1_uif_read(struct vsp1_uif *uif, u32 reg)
{
 return vsp1_read(uif->entity.vsp1,
    uif->entity.index * VI6_UIF_OFFSET + reg);
}
