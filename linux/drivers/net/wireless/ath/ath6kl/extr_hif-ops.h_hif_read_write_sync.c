
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct ath6kl {TYPE_1__* hif_ops; } ;
struct TYPE_2__ {int (* read_write_sync ) (struct ath6kl*,int,int *,int,int) ;} ;


 int ATH6KL_DBG_HIF ;
 int HIF_WRITE ;
 int ath6kl_dbg (int ,char*,char*,int,int *,int,int) ;
 int stub1 (struct ath6kl*,int,int *,int,int) ;

__attribute__((used)) static inline int hif_read_write_sync(struct ath6kl *ar, u32 addr, u8 *buf,
          u32 len, u32 request)
{
 ath6kl_dbg(ATH6KL_DBG_HIF,
     "hif %s sync addr 0x%x buf 0x%p len %d request 0x%x\n",
     (request & HIF_WRITE) ? "write" : "read",
     addr, buf, len, request);

 return ar->hif_ops->read_write_sync(ar, addr, buf, len, request);
}
