
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct firedtv {int dummy; } ;


 int TCODE_LOCK_COMPARE_SWAP ;
 int node_req (struct firedtv*,int ,void*,int,int ) ;

int fdtv_lock(struct firedtv *fdtv, u64 addr, void *data)
{
 return node_req(fdtv, addr, data, 8, TCODE_LOCK_COMPARE_SWAP);
}
