
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int virt; int size; } ;
struct s5p_mfc_dev {TYPE_3__ ctx_buf; TYPE_2__* variant; } ;
struct s5p_mfc_buf_size_v6 {int dev_ctx; } ;
struct TYPE_5__ {TYPE_1__* buf_size; } ;
struct TYPE_4__ {struct s5p_mfc_buf_size_v6* priv; } ;


 int BANK_L_CTX ;
 int memset (int ,int ,int ) ;
 int mfc_debug_enter () ;
 int mfc_debug_leave () ;
 int mfc_err (char*) ;
 int s5p_mfc_alloc_priv_buf (struct s5p_mfc_dev*,int ,TYPE_3__*) ;
 int wmb () ;

__attribute__((used)) static int s5p_mfc_alloc_dev_context_buffer_v6(struct s5p_mfc_dev *dev)
{
 struct s5p_mfc_buf_size_v6 *buf_size = dev->variant->buf_size->priv;
 int ret;

 mfc_debug_enter();

 dev->ctx_buf.size = buf_size->dev_ctx;
 ret = s5p_mfc_alloc_priv_buf(dev, BANK_L_CTX, &dev->ctx_buf);
 if (ret) {
  mfc_err("Failed to allocate device context buffer\n");
  return ret;
 }

 memset(dev->ctx_buf.virt, 0, buf_size->dev_ctx);
 wmb();

 mfc_debug_leave();

 return 0;
}
