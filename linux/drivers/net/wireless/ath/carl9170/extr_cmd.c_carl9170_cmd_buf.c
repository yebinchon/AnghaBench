
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct carl9170_cmd_head {int dummy; } ;
struct TYPE_2__ {int cmd; unsigned int len; } ;
struct carl9170_cmd {TYPE_1__ hdr; } ;
struct ar9170 {int dummy; } ;
typedef enum carl9170_cmd_oids { ____Placeholder_carl9170_cmd_oids } carl9170_cmd_oids ;


 int GFP_ATOMIC ;
 struct carl9170_cmd* kzalloc (int,int ) ;

struct carl9170_cmd *carl9170_cmd_buf(struct ar9170 *ar,
 const enum carl9170_cmd_oids cmd, const unsigned int len)
{
 struct carl9170_cmd *tmp;

 tmp = kzalloc(sizeof(struct carl9170_cmd_head) + len, GFP_ATOMIC);
 if (tmp) {
  tmp->hdr.cmd = cmd;
  tmp->hdr.len = len;
 }

 return tmp;
}
