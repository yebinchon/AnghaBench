
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofdpa_port {int rocker_port; struct ofdpa* ofdpa; } ;
struct ofdpa_group_tbl_entry {int group_id; int entry; int cmd; } ;
struct ofdpa {int group_tbl_lock; int group_tbl; } ;


 int ROCKER_TLV_CMD_TYPE_OF_DPA_GROUP_ADD ;
 int ROCKER_TLV_CMD_TYPE_OF_DPA_GROUP_MOD ;
 int hash_add (int ,int *,int ) ;
 int hash_del (int *) ;
 int ofdpa_cmd_group_tbl_add ;
 int ofdpa_flags_nowait (int) ;
 int ofdpa_group_tbl_entry_free (struct ofdpa_group_tbl_entry*) ;
 struct ofdpa_group_tbl_entry* ofdpa_group_tbl_find (struct ofdpa*,struct ofdpa_group_tbl_entry*) ;
 int rocker_cmd_exec (int ,int ,int ,struct ofdpa_group_tbl_entry*,int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ofdpa_group_tbl_add(struct ofdpa_port *ofdpa_port, int flags,
          struct ofdpa_group_tbl_entry *match)
{
 struct ofdpa *ofdpa = ofdpa_port->ofdpa;
 struct ofdpa_group_tbl_entry *found;
 unsigned long lock_flags;

 spin_lock_irqsave(&ofdpa->group_tbl_lock, lock_flags);

 found = ofdpa_group_tbl_find(ofdpa, match);

 if (found) {
  hash_del(&found->entry);
  ofdpa_group_tbl_entry_free(found);
  found = match;
  found->cmd = ROCKER_TLV_CMD_TYPE_OF_DPA_GROUP_MOD;
 } else {
  found = match;
  found->cmd = ROCKER_TLV_CMD_TYPE_OF_DPA_GROUP_ADD;
 }

 hash_add(ofdpa->group_tbl, &found->entry, found->group_id);

 spin_unlock_irqrestore(&ofdpa->group_tbl_lock, lock_flags);

 return rocker_cmd_exec(ofdpa_port->rocker_port,
          ofdpa_flags_nowait(flags),
          ofdpa_cmd_group_tbl_add,
          found, ((void*)0), ((void*)0));
}
