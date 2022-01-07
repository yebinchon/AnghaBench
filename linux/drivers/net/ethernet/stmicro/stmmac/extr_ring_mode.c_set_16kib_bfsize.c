
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUF_SIZE_16KiB ;
 int BUF_SIZE_8KiB ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int set_16kib_bfsize(int mtu)
{
 int ret = 0;
 if (unlikely(mtu > BUF_SIZE_8KiB))
  ret = BUF_SIZE_16KiB;
 return ret;
}
