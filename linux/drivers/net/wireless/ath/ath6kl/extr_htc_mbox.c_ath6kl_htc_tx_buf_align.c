
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int IS_ALIGNED (unsigned long,int) ;
 int * PTR_ALIGN (int *,int) ;
 int memmove (int *,int *,unsigned long) ;

__attribute__((used)) static void ath6kl_htc_tx_buf_align(u8 **buf, unsigned long len)
{
 u8 *align_addr;

 if (!IS_ALIGNED((unsigned long) *buf, 4)) {
  align_addr = PTR_ALIGN(*buf - 4, 4);
  memmove(align_addr, *buf, len);
  *buf = align_addr;
 }
}
