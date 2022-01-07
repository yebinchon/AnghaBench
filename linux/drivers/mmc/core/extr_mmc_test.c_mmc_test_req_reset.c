
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * stop; int * data; int * cmd; } ;
struct mmc_test_req {int stop; TYPE_1__ mrq; int data; int cmd; } ;


 int memset (struct mmc_test_req*,int ,int) ;

__attribute__((used)) static void mmc_test_req_reset(struct mmc_test_req *rq)
{
 memset(rq, 0, sizeof(struct mmc_test_req));

 rq->mrq.cmd = &rq->cmd;
 rq->mrq.data = &rq->data;
 rq->mrq.stop = &rq->stop;
}
