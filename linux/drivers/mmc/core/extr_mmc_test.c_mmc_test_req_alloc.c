
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_test_req {int dummy; } ;


 int GFP_KERNEL ;
 struct mmc_test_req* kmalloc (int,int ) ;
 int mmc_test_req_reset (struct mmc_test_req*) ;

__attribute__((used)) static struct mmc_test_req *mmc_test_req_alloc(void)
{
 struct mmc_test_req *rq = kmalloc(sizeof(*rq), GFP_KERNEL);

 if (rq)
  mmc_test_req_reset(rq);

 return rq;
}
