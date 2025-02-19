
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int swreg ;
struct nfp_prog {int dummy; } ;
struct TYPE_3__ {int src_reg; } ;
struct TYPE_4__ {int range_start; int range_end; } ;
struct nfp_insn_meta {TYPE_1__ insn; TYPE_2__ pkt_cache; } ;
typedef int s16 ;


 int CMD_CTX_SWAP ;
 int CMD_MODE_32b ;
 int CMD_OVE_LEN ;
 int CMD_OV_LEN ;
 int CMD_TGT_READ32_SWAP ;
 int FIELD_PREP (int ,int) ;
 int REG_WIDTH ;
 int emit_cmd_any (struct nfp_prog*,int ,int ,int ,int ,int ,int,int ,int) ;
 int imm_b (struct nfp_prog*) ;
 int re_load_imm_any (struct nfp_prog*,int,int ) ;
 int reg_a (int) ;
 int reg_none () ;
 int round_up (int,int) ;
 int wrp_immed (struct nfp_prog*,int ,int) ;

__attribute__((used)) static void
mem_ldx_data_init_pktcache(struct nfp_prog *nfp_prog,
      struct nfp_insn_meta *meta)
{
 s16 range_start = meta->pkt_cache.range_start;
 s16 range_end = meta->pkt_cache.range_end;
 swreg src_base, off;
 u8 xfer_num, len;
 bool indir;

 off = re_load_imm_any(nfp_prog, range_start, imm_b(nfp_prog));
 src_base = reg_a(meta->insn.src_reg * 2);
 len = range_end - range_start;
 xfer_num = round_up(len, REG_WIDTH) / REG_WIDTH;

 indir = len > 8 * REG_WIDTH;

 if (indir)
  wrp_immed(nfp_prog, reg_none(),
     CMD_OVE_LEN | FIELD_PREP(CMD_OV_LEN, xfer_num - 1));


 emit_cmd_any(nfp_prog, CMD_TGT_READ32_SWAP, CMD_MODE_32b, 0, src_base,
       off, xfer_num - 1, CMD_CTX_SWAP, indir);
}
