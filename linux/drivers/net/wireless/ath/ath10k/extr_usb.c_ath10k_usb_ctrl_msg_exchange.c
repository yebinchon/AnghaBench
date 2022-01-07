
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ath10k {int dummy; } ;


 int ath10k_usb_submit_ctrl_in (struct ath10k*,int ,int ,int ,int *,int ) ;
 int ath10k_usb_submit_ctrl_out (struct ath10k*,int ,int ,int ,int *,int ) ;

__attribute__((used)) static int ath10k_usb_ctrl_msg_exchange(struct ath10k *ar,
     u8 req_val, u8 *req_buf, u32 req_len,
     u8 resp_val, u8 *resp_buf,
     u32 *resp_len)
{
 int ret;


 ret = ath10k_usb_submit_ctrl_out(ar, req_val, 0, 0,
      req_buf, req_len);
 if (ret)
  goto err;


 if (resp_buf) {
  ret = ath10k_usb_submit_ctrl_in(ar, resp_val, 0, 0,
      resp_buf, *resp_len);
  if (ret)
   goto err;
 }

 return 0;
err:
 return ret;
}
