
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct adapter {int dummy; } ;
typedef int __be32 ;


 int A_TP_EMBED_OP_FIELD0 ;
 int A_TP_EMBED_OP_FIELD1 ;
 int A_TP_EMBED_OP_FIELD2 ;
 int A_TP_EMBED_OP_FIELD3 ;
 int A_TP_EMBED_OP_FIELD4 ;
 int A_TP_EMBED_OP_FIELD5 ;
 int EIO ;
 int PROTO_SRAM_LINES ;
 int be32_to_cpu (int ) ;
 scalar_t__ t3_wait_op_done (struct adapter*,int ,int,int,int,int) ;
 int t3_write_reg (struct adapter*,int ,int) ;

int t3_set_proto_sram(struct adapter *adap, const u8 *data)
{
 int i;
 const __be32 *buf = (const __be32 *)data;

 for (i = 0; i < PROTO_SRAM_LINES; i++) {
  t3_write_reg(adap, A_TP_EMBED_OP_FIELD5, be32_to_cpu(*buf++));
  t3_write_reg(adap, A_TP_EMBED_OP_FIELD4, be32_to_cpu(*buf++));
  t3_write_reg(adap, A_TP_EMBED_OP_FIELD3, be32_to_cpu(*buf++));
  t3_write_reg(adap, A_TP_EMBED_OP_FIELD2, be32_to_cpu(*buf++));
  t3_write_reg(adap, A_TP_EMBED_OP_FIELD1, be32_to_cpu(*buf++));

  t3_write_reg(adap, A_TP_EMBED_OP_FIELD0, i << 1 | 1 << 31);
  if (t3_wait_op_done(adap, A_TP_EMBED_OP_FIELD0, 1, 1, 5, 1))
   return -EIO;
 }
 t3_write_reg(adap, A_TP_EMBED_OP_FIELD0, 0);

 return 0;
}
