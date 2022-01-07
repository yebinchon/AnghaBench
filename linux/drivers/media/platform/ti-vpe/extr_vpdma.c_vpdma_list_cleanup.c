
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vpdma_dtd {int dummy; } ;
struct vpdma_desc_list {int buf; } ;
struct vpdma_data {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int EBUSY ;
 int VPDMA_LIST_ATTR ;
 int VPDMA_LIST_NUM_SHFT ;
 int VPDMA_LIST_STOP_SHFT ;
 int VPDMA_LIST_TYPE_NORMAL ;
 int dev_err (int *,char*) ;
 int vpdma_add_abort_channel_ctd (struct vpdma_desc_list*,int) ;
 int vpdma_create_desc_list (struct vpdma_desc_list*,int,int ) ;
 int vpdma_free_desc_buf (int *) ;
 scalar_t__ vpdma_list_busy (struct vpdma_data*,int) ;
 int vpdma_map_desc_buf (struct vpdma_data*,int *) ;
 int vpdma_submit_descs (struct vpdma_data*,struct vpdma_desc_list*,int) ;
 int vpdma_unmap_desc_buf (struct vpdma_data*,int *) ;
 int write_reg (struct vpdma_data*,int ,int) ;

int vpdma_list_cleanup(struct vpdma_data *vpdma, int list_num,
  int *channels, int size)
{
 struct vpdma_desc_list abort_list;
 int i, ret, timeout = 500;

 write_reg(vpdma, VPDMA_LIST_ATTR,
   (list_num << VPDMA_LIST_NUM_SHFT) |
   (1 << VPDMA_LIST_STOP_SHFT));

 if (size <= 0 || !channels)
  return 0;

 ret = vpdma_create_desc_list(&abort_list,
  size * sizeof(struct vpdma_dtd), VPDMA_LIST_TYPE_NORMAL);
 if (ret)
  return ret;

 for (i = 0; i < size; i++)
  vpdma_add_abort_channel_ctd(&abort_list, channels[i]);

 ret = vpdma_map_desc_buf(vpdma, &abort_list.buf);
 if (ret)
  goto free_desc;
 ret = vpdma_submit_descs(vpdma, &abort_list, list_num);
 if (ret)
  goto unmap_desc;

 while (vpdma_list_busy(vpdma, list_num) && --timeout)
  ;

 if (timeout == 0) {
  dev_err(&vpdma->pdev->dev, "Timed out cleaning up VPDMA list\n");
  ret = -EBUSY;
 }

unmap_desc:
 vpdma_unmap_desc_buf(vpdma, &abort_list.buf);
free_desc:
 vpdma_free_desc_buf(&abort_list.buf);

 return ret;
}
