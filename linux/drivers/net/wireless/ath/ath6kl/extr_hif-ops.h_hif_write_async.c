
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct htc_packet {int dummy; } ;
struct ath6kl {TYPE_1__* hif_ops; } ;
struct TYPE_2__ {int (* write_async ) (struct ath6kl*,int ,int *,int ,int ,struct htc_packet*) ;} ;


 int ATH6KL_DBG_HIF ;
 int ath6kl_dbg (int ,char*,int ,int *,int ,int ) ;
 int stub1 (struct ath6kl*,int ,int *,int ,int ,struct htc_packet*) ;

__attribute__((used)) static inline int hif_write_async(struct ath6kl *ar, u32 address, u8 *buffer,
      u32 length, u32 request,
      struct htc_packet *packet)
{
 ath6kl_dbg(ATH6KL_DBG_HIF,
     "hif write async addr 0x%x buf 0x%p len %d request 0x%x\n",
     address, buffer, length, request);

 return ar->hif_ops->write_async(ar, address, buffer, length,
     request, packet);
}
