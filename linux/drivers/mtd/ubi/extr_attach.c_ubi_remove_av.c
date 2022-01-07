
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_attach_info {int vols_found; int erase; int volumes; } ;
struct ubi_ainf_volume {int rb; int vol_id; } ;


 int dbg_bld (char*,int ) ;
 int destroy_av (struct ubi_attach_info*,struct ubi_ainf_volume*,int *) ;
 int rb_erase (int *,int *) ;

void ubi_remove_av(struct ubi_attach_info *ai, struct ubi_ainf_volume *av)
{
 dbg_bld("remove attaching information about volume %d", av->vol_id);

 rb_erase(&av->rb, &ai->volumes);
 destroy_av(ai, av, &ai->erase);
 ai->vols_found -= 1;
}
