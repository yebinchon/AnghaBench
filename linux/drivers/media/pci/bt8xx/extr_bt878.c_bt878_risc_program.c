
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct bt878 {scalar_t__ line_count; scalar_t__ line_bytes; scalar_t__ block_bytes; int block_count; scalar_t__ buf_dma; scalar_t__ risc_dma; } ;


 int BT878_APACK_LEN ;
 int RISC_FLUSH () ;
 int RISC_INSTR (scalar_t__) ;
 scalar_t__ RISC_IRQ ;
 scalar_t__ RISC_JUMP ;
 scalar_t__ RISC_STATUS (scalar_t__) ;
 scalar_t__ RISC_SYNC ;
 scalar_t__ RISC_SYNC_FM1 ;
 scalar_t__ RISC_SYNC_VRO ;
 scalar_t__ RISC_WRITE ;
 scalar_t__ RISC_WR_EOL ;
 scalar_t__ RISC_WR_SOL ;
 int btwrite (int,int ) ;
 int dprintk (char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void bt878_risc_program(struct bt878 *bt, u32 op_sync_orin)
{
 u32 buf_pos = 0;
 u32 line;

 RISC_FLUSH();
 RISC_INSTR(RISC_SYNC | RISC_SYNC_FM1 | op_sync_orin);
 RISC_INSTR(0);

 dprintk("bt878: risc len lines %u, bytes per line %u\n",
   bt->line_count, bt->line_bytes);
 for (line = 0; line < bt->line_count; line++) {

  if (!(buf_pos % bt->block_bytes))
   RISC_INSTR(RISC_WRITE | RISC_WR_SOL | RISC_WR_EOL |
       RISC_IRQ |
       RISC_STATUS(((buf_pos /
       bt->block_bytes) +
      (bt->block_count -
       1)) %
            bt->block_count) | bt->
       line_bytes);
  else
   RISC_INSTR(RISC_WRITE | RISC_WR_SOL | RISC_WR_EOL |
       bt->line_bytes);
  RISC_INSTR(bt->buf_dma + buf_pos);
  buf_pos += bt->line_bytes;
 }

 RISC_INSTR(RISC_SYNC | op_sync_orin | RISC_SYNC_VRO);
 RISC_INSTR(0);

 RISC_INSTR(RISC_JUMP);
 RISC_INSTR(bt->risc_dma);

 btwrite((bt->line_count << 16) | bt->line_bytes, BT878_APACK_LEN);
}
