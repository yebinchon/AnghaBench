
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mei_device {int dummy; } ;


 int TXE_HBUF_DEPTH ;

__attribute__((used)) static u32 mei_txe_hbuf_depth(const struct mei_device *dev)
{
 return TXE_HBUF_DEPTH;
}
