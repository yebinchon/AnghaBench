
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct carl9170fw_txsq_desc {int seq_table_addr; } ;
struct TYPE_2__ {int tx_seq_table; } ;
struct ar9170 {TYPE_1__ fw; } ;


 int CARL9170FW_TXSQ_DESC_CUR_VER ;
 int EINVAL ;
 int TXSQ_MAGIC ;
 struct carl9170fw_txsq_desc* carl9170_fw_find_desc (struct ar9170*,int ,int,int ) ;
 int le32_to_cpu (int ) ;
 int valid_cpu_addr (int ) ;

__attribute__((used)) static int carl9170_fw_tx_sequence(struct ar9170 *ar)
{
 const struct carl9170fw_txsq_desc *txsq_desc;

 txsq_desc = carl9170_fw_find_desc(ar, TXSQ_MAGIC, sizeof(*txsq_desc),
       CARL9170FW_TXSQ_DESC_CUR_VER);
 if (txsq_desc) {
  ar->fw.tx_seq_table = le32_to_cpu(txsq_desc->seq_table_addr);
  if (!valid_cpu_addr(ar->fw.tx_seq_table))
   return -EINVAL;
 } else {
  ar->fw.tx_seq_table = 0;
 }

 return 0;
}
