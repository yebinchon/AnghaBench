
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_attach_info {int dummy; } ;
struct ubi_ainf_volume {int dummy; } ;


 int AV_FIND_OR_ADD ;
 struct ubi_ainf_volume* find_or_add_av (struct ubi_attach_info*,int,int ,int*) ;

__attribute__((used)) static struct ubi_ainf_volume *ubi_find_or_add_av(struct ubi_attach_info *ai,
        int vol_id, bool *created)
{
 return find_or_add_av(ai, vol_id, AV_FIND_OR_ADD, created);
}
