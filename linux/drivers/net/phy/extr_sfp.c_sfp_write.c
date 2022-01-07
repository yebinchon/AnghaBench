
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sfp {int (* write ) (struct sfp*,int,int ,void*,size_t) ;} ;


 int stub1 (struct sfp*,int,int ,void*,size_t) ;

__attribute__((used)) static int sfp_write(struct sfp *sfp, bool a2, u8 addr, void *buf, size_t len)
{
 return sfp->write(sfp, a2, addr, buf, len);
}
