
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_attach_info {int dummy; } ;
struct ubi_ainf_volume {int dummy; } ;


 int AV_ADD ;
 struct ubi_ainf_volume* find_or_add_av (struct ubi_attach_info*,int,int ,int*) ;

struct ubi_ainf_volume *ubi_add_av(struct ubi_attach_info *ai, int vol_id)
{
 bool created;

 return find_or_add_av(ai, vol_id, AV_ADD, &created);
}
