
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct firedtv {int device; } ;
typedef int __be32 ;


 int dev_err (int ,char*) ;
 int fdtv_lock (struct firedtv*,int ,int *) ;

__attribute__((used)) static int cmp_lock(struct firedtv *fdtv, u64 addr, __be32 data[])
{
 int ret;

 ret = fdtv_lock(fdtv, addr, data);
 if (ret < 0)
  dev_err(fdtv->device, "CMP: lock I/O error\n");

 return ret;
}
