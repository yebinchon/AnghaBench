
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct port_info {int viid; } ;
struct TYPE_5__ {int ovlan; int lip; scalar_t__ ovlan_vld; scalar_t__ encap_vld; } ;
struct TYPE_6__ {TYPE_2__ val; scalar_t__ type; scalar_t__ hash; } ;
struct filter_entry {TYPE_3__ fs; int dev; scalar_t__ smt; scalar_t__ l2t; } ;
struct TYPE_4__ {int chip; } ;
struct adapter {TYPE_1__ params; } ;


 int cxgb4_clip_release (int ,int const*,int) ;
 int cxgb4_l2t_release (scalar_t__) ;
 int cxgb4_smt_release (scalar_t__) ;
 scalar_t__ is_t6 (int ) ;
 int memset (struct filter_entry*,int ,int) ;
 struct port_info* netdev_priv (int ) ;
 int t4_free_encap_mac_filt (struct adapter*,int ,int,int ) ;

void clear_filter(struct adapter *adap, struct filter_entry *f)
{
 struct port_info *pi = netdev_priv(f->dev);





 if (f->l2t)
  cxgb4_l2t_release(f->l2t);

 if (f->smt)
  cxgb4_smt_release(f->smt);

 if (f->fs.val.encap_vld && f->fs.val.ovlan_vld)
  t4_free_encap_mac_filt(adap, pi->viid,
           f->fs.val.ovlan & 0x1ff, 0);

 if ((f->fs.hash || is_t6(adap->params.chip)) && f->fs.type)
  cxgb4_clip_release(f->dev, (const u32 *)&f->fs.val.lip, 1);





 memset(f, 0, sizeof(*f));
}
