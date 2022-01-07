
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int y; int x; int line; int filename_0_7; } ;
struct TYPE_3__ {TYPE_2__ assert; } ;
struct fw_debug_cmd {TYPE_1__ u; } ;
struct adapter {int pdev_dev; } ;
typedef int asrt ;
typedef int __be64 ;


 int be32_to_cpu (int ) ;
 int dev_alert (int ,char*,int ,int ,int ,int ) ;
 int get_mbox_rpl (struct adapter*,int *,int,int ) ;

__attribute__((used)) static void fw_asrt(struct adapter *adap, u32 mbox_addr)
{
 struct fw_debug_cmd asrt;

 get_mbox_rpl(adap, (__be64 *)&asrt, sizeof(asrt) / 8, mbox_addr);
 dev_alert(adap->pdev_dev,
    "FW assertion at %.16s:%u, val0 %#x, val1 %#x\n",
    asrt.u.assert.filename_0_7, be32_to_cpu(asrt.u.assert.line),
    be32_to_cpu(asrt.u.assert.x), be32_to_cpu(asrt.u.assert.y));
}
