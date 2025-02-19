
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct s5p_mfc_priv_buf {scalar_t__ virt; int size; } ;
struct s5p_mfc_dev {struct s5p_mfc_priv_buf fw_buf; TYPE_2__* variant; } ;
struct TYPE_4__ {TYPE_1__* buf_size; } ;
struct TYPE_3__ {int fw; } ;


 int BANK_L_CTX ;
 int ENOMEM ;
 int mfc_err (char*) ;
 int s5p_mfc_alloc_priv_buf (struct s5p_mfc_dev*,int ,struct s5p_mfc_priv_buf*) ;

int s5p_mfc_alloc_firmware(struct s5p_mfc_dev *dev)
{
 struct s5p_mfc_priv_buf *fw_buf = &dev->fw_buf;
 int err;

 fw_buf->size = dev->variant->buf_size->fw;

 if (fw_buf->virt) {
  mfc_err("Attempting to allocate firmware when it seems that it is already loaded\n");
  return -ENOMEM;
 }

 err = s5p_mfc_alloc_priv_buf(dev, BANK_L_CTX, &dev->fw_buf);
 if (err) {
  mfc_err("Allocating bitprocessor buffer failed\n");
  return err;
 }

 return 0;
}
