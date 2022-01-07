
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct __vxge_hw_fifo {TYPE_1__* stats; } ;
typedef enum vxge_hw_status { ____Placeholder_vxge_hw_status } vxge_hw_status ;
typedef enum vxge_hw_fifo_tcode { ____Placeholder_vxge_hw_fifo_tcode } vxge_hw_fifo_tcode ;
struct TYPE_2__ {int * txd_t_code_err_cnt; } ;


 int VXGE_HW_ERR_INVALID_TCODE ;
 int VXGE_HW_OK ;

enum vxge_hw_status vxge_hw_fifo_handle_tcode(struct __vxge_hw_fifo *fifo,
           void *txdlh,
           enum vxge_hw_fifo_tcode t_code)
{
 enum vxge_hw_status status = VXGE_HW_OK;

 if (((t_code & 0x7) < 0) || ((t_code & 0x7) > 0x4)) {
  status = VXGE_HW_ERR_INVALID_TCODE;
  goto exit;
 }

 fifo->stats->txd_t_code_err_cnt[t_code]++;
exit:
 return status;
}
