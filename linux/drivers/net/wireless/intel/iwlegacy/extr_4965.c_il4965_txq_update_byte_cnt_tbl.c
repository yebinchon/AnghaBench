
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {int id; int write_ptr; } ;
struct il_tx_queue {TYPE_2__ q; } ;
struct TYPE_3__ {struct il4965_scd_bc_tbl* addr; } ;
struct il_priv {TYPE_1__ scd_bc_tbls; } ;
struct il4965_scd_bc_tbl {void** tfd_offset; } ;
typedef void* __le16 ;


 int IL_TX_CRC_SIZE ;
 int IL_TX_DELIMITER_SIZE ;
 int TFD_QUEUE_SIZE_BC_DUP ;
 int TFD_QUEUE_SIZE_MAX ;
 int WARN_ON (int) ;
 void* cpu_to_le16 (int) ;

__attribute__((used)) static void
il4965_txq_update_byte_cnt_tbl(struct il_priv *il, struct il_tx_queue *txq,
          u16 byte_cnt)
{
 struct il4965_scd_bc_tbl *scd_bc_tbl = il->scd_bc_tbls.addr;
 int txq_id = txq->q.id;
 int write_ptr = txq->q.write_ptr;
 int len = byte_cnt + IL_TX_CRC_SIZE + IL_TX_DELIMITER_SIZE;
 __le16 bc_ent;

 WARN_ON(len > 0xFFF || write_ptr >= TFD_QUEUE_SIZE_MAX);

 bc_ent = cpu_to_le16(len & 0xFFF);

 scd_bc_tbl[txq_id].tfd_offset[write_ptr] = bc_ent;


 if (write_ptr < TFD_QUEUE_SIZE_BC_DUP)
  scd_bc_tbl[txq_id].tfd_offset[TFD_QUEUE_SIZE_MAX + write_ptr] =
      bc_ent;
}
