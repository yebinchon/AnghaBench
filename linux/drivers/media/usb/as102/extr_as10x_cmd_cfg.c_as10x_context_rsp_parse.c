
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_4__ {int error; int proc_id; } ;
struct TYPE_5__ {TYPE_1__ rsp; } ;
struct TYPE_6__ {TYPE_2__ context; } ;
struct as10x_cmd_t {TYPE_3__ body; } ;


 int AS10X_CMD_ERROR ;
 scalar_t__ le16_to_cpu (int ) ;

int as10x_context_rsp_parse(struct as10x_cmd_t *prsp, uint16_t proc_id)
{
 int err;

 err = prsp->body.context.rsp.error;

 if ((err == 0) &&
     (le16_to_cpu(prsp->body.context.rsp.proc_id) == proc_id)) {
  return 0;
 }
 return AS10X_CMD_ERROR;
}
