
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; } ;
struct msgbuf_gen_status {TYPE_1__ compl_hdr; } ;
struct brcmf_pub {int dummy; } ;
struct brcmf_msgbuf {struct brcmf_pub* drvr; } ;


 int bphy_err (struct brcmf_pub*,char*,int) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static void brcmf_msgbuf_process_gen_status(struct brcmf_msgbuf *msgbuf,
         void *buf)
{
 struct msgbuf_gen_status *gen_status = buf;
 struct brcmf_pub *drvr = msgbuf->drvr;
 int err;

 err = le16_to_cpu(gen_status->compl_hdr.status);
 if (err)
  bphy_err(drvr, "Firmware reported general error: %d\n", err);
}
