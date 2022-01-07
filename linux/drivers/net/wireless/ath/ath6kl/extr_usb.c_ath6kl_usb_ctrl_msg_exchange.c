
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ath6kl_usb {int dummy; } ;


 int ath6kl_usb_submit_ctrl_in (struct ath6kl_usb*,int ,int ,int ,int *,int ) ;
 int ath6kl_usb_submit_ctrl_out (struct ath6kl_usb*,int ,int ,int ,int *,int ) ;

__attribute__((used)) static int ath6kl_usb_ctrl_msg_exchange(struct ath6kl_usb *ar_usb,
         u8 req_val, u8 *req_buf, u32 req_len,
         u8 resp_val, u8 *resp_buf, u32 *resp_len)
{
 int ret;


 ret = ath6kl_usb_submit_ctrl_out(ar_usb, req_val, 0, 0,
      req_buf, req_len);

 if (ret != 0)
  return ret;

 if (resp_buf == ((void*)0)) {

  return ret;
 }


 ret = ath6kl_usb_submit_ctrl_in(ar_usb, resp_val, 0, 0,
     resp_buf, *resp_len);

 return ret;
}
