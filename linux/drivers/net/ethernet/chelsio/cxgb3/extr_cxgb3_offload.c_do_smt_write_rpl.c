
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t3cdev {int dummy; } ;
struct sk_buff {int dummy; } ;
struct cpl_smt_write_rpl {scalar_t__ status; } ;


 scalar_t__ CPL_ERR_NONE ;
 int CPL_RET_BUF_DONE ;
 int GET_TID (struct cpl_smt_write_rpl*) ;
 struct cpl_smt_write_rpl* cplhdr (struct sk_buff*) ;
 int pr_err (char*,scalar_t__,int ) ;

__attribute__((used)) static int do_smt_write_rpl(struct t3cdev *dev, struct sk_buff *skb)
{
 struct cpl_smt_write_rpl *rpl = cplhdr(skb);

 if (rpl->status != CPL_ERR_NONE)
  pr_err("Unexpected SMT_WRITE_RPL status %u for entry %u\n",
         rpl->status, GET_TID(rpl));

 return CPL_RET_BUF_DONE;
}
