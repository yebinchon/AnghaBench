
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int vsp1; } ;
struct TYPE_4__ {TYPE_1__ entity; } ;
struct vsp1_hgt {TYPE_2__ histo; } ;


 int vsp1_read (int ,int ) ;

__attribute__((used)) static inline u32 vsp1_hgt_read(struct vsp1_hgt *hgt, u32 reg)
{
 return vsp1_read(hgt->histo.entity.vsp1, reg);
}
