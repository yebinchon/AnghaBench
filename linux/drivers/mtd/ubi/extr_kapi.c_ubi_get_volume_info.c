
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubi_volume_info {int dummy; } ;
struct ubi_volume_desc {TYPE_1__* vol; } ;
struct TYPE_2__ {int ubi; } ;


 int ubi_do_get_volume_info (int ,TYPE_1__*,struct ubi_volume_info*) ;

void ubi_get_volume_info(struct ubi_volume_desc *desc,
    struct ubi_volume_info *vi)
{
 ubi_do_get_volume_info(desc->vol->ubi, desc->vol, vi);
}
