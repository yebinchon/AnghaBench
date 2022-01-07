
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s5p_mfc_dev {int dummy; } ;
struct TYPE_2__ {int ofs; } ;
struct s5p_mfc_ctx {TYPE_1__ shm; struct s5p_mfc_dev* dev; } ;


 int S5P_FIMV_SI_CH0_HOST_WR_ADR ;
 int mfc_write (struct s5p_mfc_dev*,int ,int ) ;

__attribute__((used)) static void s5p_mfc_set_shared_buffer(struct s5p_mfc_ctx *ctx)
{
 struct s5p_mfc_dev *dev = ctx->dev;
 mfc_write(dev, ctx->shm.ofs, S5P_FIMV_SI_CH0_HOST_WR_ADR);
}
