
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t3cdev {int name; } ;
struct sk_buff {int * data; } ;


 int CPL_RET_BAD_MSG ;
 int CPL_RET_BUF_DONE ;
 int pr_err (char*,int ,int ) ;

__attribute__((used)) static int do_bad_cpl(struct t3cdev *dev, struct sk_buff *skb)
{
 pr_err("%s: received bad CPL command 0x%x\n", dev->name, *skb->data);
 return CPL_RET_BUF_DONE | CPL_RET_BAD_MSG;
}
