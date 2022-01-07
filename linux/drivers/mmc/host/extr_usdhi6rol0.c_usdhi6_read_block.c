
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usdhi6_host {int wait; } ;


 int USDHI6_WAIT_FOR_DATA_END ;
 int usdhi6_blk_read (struct usdhi6_host*) ;
 int usdhi6_sg_unmap (struct usdhi6_host*,int) ;

__attribute__((used)) static bool usdhi6_read_block(struct usdhi6_host *host)
{

 int ret = usdhi6_blk_read(host);






 usdhi6_sg_unmap(host, 1);

 if (ret < 0)
  return 0;

 host->wait = USDHI6_WAIT_FOR_DATA_END;
 return 1;
}
