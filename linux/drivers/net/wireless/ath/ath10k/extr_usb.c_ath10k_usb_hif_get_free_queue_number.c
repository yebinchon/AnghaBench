
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u16 ;
struct ath10k_usb {TYPE_1__* pipes; } ;
struct ath10k {int dummy; } ;
struct TYPE_2__ {int urb_cnt; } ;


 struct ath10k_usb* ath10k_usb_priv (struct ath10k*) ;

__attribute__((used)) static u16 ath10k_usb_hif_get_free_queue_number(struct ath10k *ar, u8 pipe_id)
{
 struct ath10k_usb *ar_usb = ath10k_usb_priv(ar);

 return ar_usb->pipes[pipe_id].urb_cnt;
}
