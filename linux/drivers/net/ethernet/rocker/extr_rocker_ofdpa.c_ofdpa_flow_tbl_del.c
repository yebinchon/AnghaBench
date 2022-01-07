
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofdpa_port {int rocker_port; struct ofdpa* ofdpa; } ;
struct ofdpa_flow_tbl_entry {size_t key_len; int cmd; int entry; int key; int key_crc32; } ;
struct ofdpa {int flow_tbl_lock; } ;


 int ROCKER_TLV_CMD_TYPE_OF_DPA_FLOW_DEL ;
 int crc32 (int ,int *,size_t) ;
 int hash_del (int *) ;
 int kfree (struct ofdpa_flow_tbl_entry*) ;
 int ofdpa_cmd_flow_tbl_del ;
 int ofdpa_flags_nowait (int) ;
 struct ofdpa_flow_tbl_entry* ofdpa_flow_tbl_find (struct ofdpa*,struct ofdpa_flow_tbl_entry*) ;
 int rocker_cmd_exec (int ,int ,int ,struct ofdpa_flow_tbl_entry*,int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ofdpa_flow_tbl_del(struct ofdpa_port *ofdpa_port,
         int flags, struct ofdpa_flow_tbl_entry *match)
{
 struct ofdpa *ofdpa = ofdpa_port->ofdpa;
 struct ofdpa_flow_tbl_entry *found;
 size_t key_len = match->key_len ? match->key_len : sizeof(found->key);
 unsigned long lock_flags;
 int err = 0;

 match->key_crc32 = crc32(~0, &match->key, key_len);

 spin_lock_irqsave(&ofdpa->flow_tbl_lock, lock_flags);

 found = ofdpa_flow_tbl_find(ofdpa, match);

 if (found) {
  hash_del(&found->entry);
  found->cmd = ROCKER_TLV_CMD_TYPE_OF_DPA_FLOW_DEL;
 }

 spin_unlock_irqrestore(&ofdpa->flow_tbl_lock, lock_flags);

 kfree(match);

 if (found) {
  err = rocker_cmd_exec(ofdpa_port->rocker_port,
          ofdpa_flags_nowait(flags),
          ofdpa_cmd_flow_tbl_del,
          found, ((void*)0), ((void*)0));
  kfree(found);
 }

 return err;
}
