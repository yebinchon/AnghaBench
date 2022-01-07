
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct octeon_recv_pkt {int dummy; } ;
struct octeon_recv_info {int * rsvd; struct octeon_recv_pkt* recv_pkt; } ;


 int GFP_ATOMIC ;
 int OCT_RECV_INFO_SIZE ;
 int OCT_RECV_PKT_SIZE ;
 int * kmalloc (int,int ) ;

__attribute__((used)) static inline struct octeon_recv_info *octeon_alloc_recv_info(int extra_bytes)
{
 struct octeon_recv_info *recv_info;
 u8 *buf;

 buf = kmalloc(OCT_RECV_PKT_SIZE + OCT_RECV_INFO_SIZE +
        extra_bytes, GFP_ATOMIC);
 if (!buf)
  return ((void*)0);

 recv_info = (struct octeon_recv_info *)buf;
 recv_info->recv_pkt =
  (struct octeon_recv_pkt *)(buf + OCT_RECV_INFO_SIZE);
 recv_info->rsvd = ((void*)0);
 if (extra_bytes)
  recv_info->rsvd = buf + OCT_RECV_INFO_SIZE + OCT_RECV_PKT_SIZE;

 return recv_info;
}
