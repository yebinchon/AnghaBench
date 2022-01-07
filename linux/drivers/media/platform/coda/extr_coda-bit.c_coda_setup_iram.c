
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int width; } ;
struct coda_q_data {int width; TYPE_2__ rect; } ;
struct coda_iram_info {int search_ram_size; int axi_sram_use; void* buf_ip_ac_dc_use; void* buf_bit_use; void* buf_dbk_c_use; void* buf_dbk_y_use; void* search_ram_paddr; int remaining; int next_paddr; } ;
struct TYPE_4__ {int vaddr; int size; int paddr; } ;
struct coda_dev {TYPE_3__* devtype; TYPE_1__ iram; } ;
struct coda_ctx {scalar_t__ inst_type; struct coda_dev* dev; struct coda_iram_info iram_info; } ;
struct TYPE_6__ {int product; } ;


 int CODA7_USE_BIT_ENABLE ;
 int CODA7_USE_DBK_ENABLE ;
 int CODA7_USE_HOST_BIT_ENABLE ;
 int CODA7_USE_HOST_DBK_ENABLE ;
 int CODA7_USE_HOST_IP_ENABLE ;
 int CODA7_USE_HOST_ME_ENABLE ;
 int CODA7_USE_IP_ENABLE ;
 int CODA7_USE_ME_ENABLE ;
 int CODA9_USE_DBK_ENABLE ;
 int CODA9_USE_HOST_BIT_ENABLE ;
 int CODA9_USE_HOST_DBK_ENABLE ;
 int CODA9_USE_HOST_IP_ENABLE ;



 scalar_t__ CODA_INST_DECODER ;
 scalar_t__ CODA_INST_ENCODER ;
 int DIV_ROUND_UP (int ,int) ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_BUF_TYPE_VIDEO_OUTPUT ;
 int coda_dbg (int,struct coda_ctx*,char*) ;
 void* coda_iram_alloc (struct coda_iram_info*,int) ;
 struct coda_q_data* get_q_data (struct coda_ctx*,int ) ;
 int memset (struct coda_iram_info*,int ,int) ;
 int pr_err (char*) ;
 int round_up (int,int) ;

__attribute__((used)) static void coda_setup_iram(struct coda_ctx *ctx)
{
 struct coda_iram_info *iram_info = &ctx->iram_info;
 struct coda_dev *dev = ctx->dev;
 int w64, w128;
 int mb_width;
 int dbk_bits;
 int bit_bits;
 int ip_bits;
 int me_bits;

 memset(iram_info, 0, sizeof(*iram_info));
 iram_info->next_paddr = dev->iram.paddr;
 iram_info->remaining = dev->iram.size;

 if (!dev->iram.vaddr)
  return;

 switch (dev->devtype->product) {
 case 128:
  dbk_bits = CODA7_USE_HOST_DBK_ENABLE;
  bit_bits = CODA7_USE_HOST_BIT_ENABLE;
  ip_bits = CODA7_USE_HOST_IP_ENABLE;
  me_bits = CODA7_USE_HOST_ME_ENABLE;
  break;
 case 130:
  dbk_bits = CODA7_USE_HOST_DBK_ENABLE | CODA7_USE_DBK_ENABLE;
  bit_bits = CODA7_USE_HOST_BIT_ENABLE | CODA7_USE_BIT_ENABLE;
  ip_bits = CODA7_USE_HOST_IP_ENABLE | CODA7_USE_IP_ENABLE;
  me_bits = CODA7_USE_HOST_ME_ENABLE | CODA7_USE_ME_ENABLE;
  break;
 case 129:
  dbk_bits = CODA9_USE_HOST_DBK_ENABLE | CODA9_USE_DBK_ENABLE;
  bit_bits = CODA9_USE_HOST_BIT_ENABLE | CODA7_USE_BIT_ENABLE;
  ip_bits = CODA9_USE_HOST_IP_ENABLE | CODA7_USE_IP_ENABLE;
  me_bits = 0;
  break;
 default:
  return;
 }

 if (ctx->inst_type == CODA_INST_ENCODER) {
  struct coda_q_data *q_data_src;

  q_data_src = get_q_data(ctx, V4L2_BUF_TYPE_VIDEO_OUTPUT);
  mb_width = DIV_ROUND_UP(q_data_src->rect.width, 16);
  w128 = mb_width * 128;
  w64 = mb_width * 64;


  if (dev->devtype->product == 128 ||
      dev->devtype->product == 130) {
   iram_info->search_ram_size = round_up(mb_width * 16 *
             36 + 2048, 1024);
   iram_info->search_ram_paddr = coda_iram_alloc(iram_info,
      iram_info->search_ram_size);
   if (!iram_info->search_ram_paddr) {
    pr_err("IRAM is smaller than the search ram size\n");
    goto out;
   }
   iram_info->axi_sram_use |= me_bits;
  }


  iram_info->buf_dbk_y_use = coda_iram_alloc(iram_info, w64);
  iram_info->buf_dbk_c_use = coda_iram_alloc(iram_info, w64);
  if (!iram_info->buf_dbk_c_use)
   goto out;
  iram_info->axi_sram_use |= dbk_bits;

  iram_info->buf_bit_use = coda_iram_alloc(iram_info, w128);
  if (!iram_info->buf_bit_use)
   goto out;
  iram_info->axi_sram_use |= bit_bits;

  iram_info->buf_ip_ac_dc_use = coda_iram_alloc(iram_info, w128);
  if (!iram_info->buf_ip_ac_dc_use)
   goto out;
  iram_info->axi_sram_use |= ip_bits;


 } else if (ctx->inst_type == CODA_INST_DECODER) {
  struct coda_q_data *q_data_dst;

  q_data_dst = get_q_data(ctx, V4L2_BUF_TYPE_VIDEO_CAPTURE);
  mb_width = DIV_ROUND_UP(q_data_dst->width, 16);
  w128 = mb_width * 128;

  iram_info->buf_dbk_y_use = coda_iram_alloc(iram_info, w128);
  iram_info->buf_dbk_c_use = coda_iram_alloc(iram_info, w128);
  if (!iram_info->buf_dbk_c_use)
   goto out;
  iram_info->axi_sram_use |= dbk_bits;

  iram_info->buf_bit_use = coda_iram_alloc(iram_info, w128);
  if (!iram_info->buf_bit_use)
   goto out;
  iram_info->axi_sram_use |= bit_bits;

  iram_info->buf_ip_ac_dc_use = coda_iram_alloc(iram_info, w128);
  if (!iram_info->buf_ip_ac_dc_use)
   goto out;
  iram_info->axi_sram_use |= ip_bits;


 }

out:
 if (!(iram_info->axi_sram_use & CODA7_USE_HOST_IP_ENABLE))
  coda_dbg(1, ctx, "IRAM smaller than needed\n");

 if (dev->devtype->product == 128 ||
     dev->devtype->product == 130) {

  if (ctx->inst_type == CODA_INST_DECODER) {

   iram_info->axi_sram_use &= ~(CODA7_USE_HOST_IP_ENABLE |
           CODA7_USE_IP_ENABLE);
  } else {

   iram_info->axi_sram_use &= ~(CODA7_USE_HOST_IP_ENABLE |
           CODA7_USE_HOST_DBK_ENABLE |
           CODA7_USE_IP_ENABLE |
           CODA7_USE_DBK_ENABLE);
  }
 }
}
