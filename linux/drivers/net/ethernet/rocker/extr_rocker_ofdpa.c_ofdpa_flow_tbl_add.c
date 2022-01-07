
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofdpa_port {int rocker_port; struct ofdpa* ofdpa; } ;
struct ofdpa_flow_tbl_entry {size_t key_len; int key_crc32; int entry; int cmd; scalar_t__ cookie; int key; } ;
struct ofdpa {int flow_tbl_lock; int flow_tbl; int flow_tbl_next_cookie; } ;


 int ROCKER_TLV_CMD_TYPE_OF_DPA_FLOW_ADD ;
 int ROCKER_TLV_CMD_TYPE_OF_DPA_FLOW_MOD ;
 int crc32 (int ,int *,size_t) ;
 int hash_add (int ,int *,int ) ;
 int hash_del (int *) ;
 int kfree (struct ofdpa_flow_tbl_entry*) ;
 int ofdpa_cmd_flow_tbl_add ;
 int ofdpa_flags_nowait (int) ;
 struct ofdpa_flow_tbl_entry* ofdpa_flow_tbl_find (struct ofdpa*,struct ofdpa_flow_tbl_entry*) ;
 int rocker_cmd_exec (int ,int ,int ,struct ofdpa_flow_tbl_entry*,int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ofdpa_flow_tbl_add(struct ofdpa_port *ofdpa_port,
         int flags, struct ofdpa_flow_tbl_entry *match)
{
 struct ofdpa *ofdpa = ofdpa_port->ofdpa;
 struct ofdpa_flow_tbl_entry *found;
 size_t key_len = match->key_len ? match->key_len : sizeof(found->key);
 unsigned long lock_flags;

 match->key_crc32 = crc32(~0, &match->key, key_len);

 spin_lock_irqsave(&ofdpa->flow_tbl_lock, lock_flags);

 found = ofdpa_flow_tbl_find(ofdpa, match);

 if (found) {
  match->cookie = found->cookie;
  hash_del(&found->entry);
  kfree(found);
  found = match;
  found->cmd = ROCKER_TLV_CMD_TYPE_OF_DPA_FLOW_MOD;
 } else {
  found = match;
  found->cookie = ofdpa->flow_tbl_next_cookie++;
  found->cmd = ROCKER_TLV_CMD_TYPE_OF_DPA_FLOW_ADD;
 }

 hash_add(ofdpa->flow_tbl, &found->entry, found->key_crc32);
 spin_unlock_irqrestore(&ofdpa->flow_tbl_lock, lock_flags);

 return rocker_cmd_exec(ofdpa_port->rocker_port,
          ofdpa_flags_nowait(flags),
          ofdpa_cmd_flow_tbl_add,
          found, ((void*)0), ((void*)0));
}
