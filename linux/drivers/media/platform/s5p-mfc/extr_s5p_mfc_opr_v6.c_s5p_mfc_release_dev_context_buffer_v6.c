
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_dev {int ctx_buf; } ;


 int s5p_mfc_release_priv_buf (struct s5p_mfc_dev*,int *) ;

__attribute__((used)) static void s5p_mfc_release_dev_context_buffer_v6(struct s5p_mfc_dev *dev)
{
 s5p_mfc_release_priv_buf(dev, &dev->ctx_buf);
}
