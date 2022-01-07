
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u16 ;
struct ath6kl_usb {TYPE_1__* pipes; } ;
struct ath6kl {int dummy; } ;
struct TYPE_2__ {int urb_cnt; } ;


 struct ath6kl_usb* ath6kl_usb_priv (struct ath6kl*) ;

__attribute__((used)) static u16 ath6kl_usb_get_free_queue_number(struct ath6kl *ar, u8 pipe_id)
{
 struct ath6kl_usb *device = ath6kl_usb_priv(ar);

 return device->pipes[pipe_id].urb_cnt;
}
