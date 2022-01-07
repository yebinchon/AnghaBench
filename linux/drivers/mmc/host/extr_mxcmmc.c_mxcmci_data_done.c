
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxcmci_host {int * cmd; int lock; struct mmc_request* req; int data; } ;
struct mmc_request {scalar_t__ stop; } ;


 int mxcmci_finish_data (struct mxcmci_host*,unsigned int) ;
 int mxcmci_finish_request (struct mxcmci_host*,struct mmc_request*) ;
 int mxcmci_read_response (struct mxcmci_host*,unsigned int) ;
 scalar_t__ mxcmci_start_cmd (struct mxcmci_host*,scalar_t__,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void mxcmci_data_done(struct mxcmci_host *host, unsigned int stat)
{
 struct mmc_request *req;
 int data_error;
 unsigned long flags;

 spin_lock_irqsave(&host->lock, flags);

 if (!host->data) {
  spin_unlock_irqrestore(&host->lock, flags);
  return;
 }

 if (!host->req) {
  spin_unlock_irqrestore(&host->lock, flags);
  return;
 }

 req = host->req;
 if (!req->stop)
  host->req = ((void*)0);

 data_error = mxcmci_finish_data(host, stat);

 spin_unlock_irqrestore(&host->lock, flags);

 if (data_error)
  return;

 mxcmci_read_response(host, stat);
 host->cmd = ((void*)0);

 if (req->stop) {
  if (mxcmci_start_cmd(host, req->stop, 0)) {
   mxcmci_finish_request(host, req);
   return;
  }
 } else {
  mxcmci_finish_request(host, req);
 }
}
