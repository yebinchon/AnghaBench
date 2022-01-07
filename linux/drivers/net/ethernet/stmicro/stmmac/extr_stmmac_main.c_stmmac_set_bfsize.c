
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUF_SIZE_2KiB ;
 int BUF_SIZE_4KiB ;
 int BUF_SIZE_8KiB ;
 int DEFAULT_BUFSIZE ;

__attribute__((used)) static int stmmac_set_bfsize(int mtu, int bufsize)
{
 int ret = bufsize;

 if (mtu >= BUF_SIZE_4KiB)
  ret = BUF_SIZE_8KiB;
 else if (mtu >= BUF_SIZE_2KiB)
  ret = BUF_SIZE_4KiB;
 else if (mtu > DEFAULT_BUFSIZE)
  ret = BUF_SIZE_2KiB;
 else
  ret = DEFAULT_BUFSIZE;

 return ret;
}
