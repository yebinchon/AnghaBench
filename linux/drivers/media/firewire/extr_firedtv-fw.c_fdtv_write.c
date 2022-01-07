
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct firedtv {int dummy; } ;


 int TCODE_WRITE_BLOCK_REQUEST ;
 int node_req (struct firedtv*,int ,void*,size_t,int ) ;

int fdtv_write(struct firedtv *fdtv, u64 addr, void *data, size_t len)
{
 return node_req(fdtv, addr, data, len, TCODE_WRITE_BLOCK_REQUEST);
}
