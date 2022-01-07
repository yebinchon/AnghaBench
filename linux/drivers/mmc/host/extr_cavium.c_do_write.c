
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_request {TYPE_1__* data; } ;
struct TYPE_2__ {int bytes_xfered; int blocks; int blksz; scalar_t__ error; } ;



__attribute__((used)) static void do_write(struct mmc_request *req)
{
 req->data->bytes_xfered = req->data->blocks * req->data->blksz;
 req->data->error = 0;
}
