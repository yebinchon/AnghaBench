
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ehea_port_res {int send_mr; int recv_mr; TYPE_1__* port; } ;
struct ehea_adapter {int mr; } ;
struct TYPE_2__ {struct ehea_adapter* adapter; } ;


 int EIO ;
 int ehea_gen_smr (struct ehea_adapter*,int *,int *) ;
 int ehea_rem_mr (int *) ;
 int pr_err (char*) ;

__attribute__((used)) static int ehea_gen_smrs(struct ehea_port_res *pr)
{
 int ret;
 struct ehea_adapter *adapter = pr->port->adapter;

 ret = ehea_gen_smr(adapter, &adapter->mr, &pr->send_mr);
 if (ret)
  goto out;

 ret = ehea_gen_smr(adapter, &adapter->mr, &pr->recv_mr);
 if (ret)
  goto out_free;

 return 0;

out_free:
 ehea_rem_mr(&pr->send_mr);
out:
 pr_err("Generating SMRS failed\n");
 return -EIO;
}
