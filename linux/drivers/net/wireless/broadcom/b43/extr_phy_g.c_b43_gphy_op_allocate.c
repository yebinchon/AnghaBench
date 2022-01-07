
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct b43_txpower_lo_control* g; } ;
struct b43_wldev {TYPE_1__ phy; } ;
struct b43_txpower_lo_control {struct b43_txpower_lo_control* lo_control; } ;
struct b43_phy_g {struct b43_phy_g* lo_control; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int b43_gphy_init_tssi2dbm_table (struct b43_wldev*) ;
 int kfree (struct b43_txpower_lo_control*) ;
 struct b43_txpower_lo_control* kzalloc (int,int ) ;

__attribute__((used)) static int b43_gphy_op_allocate(struct b43_wldev *dev)
{
 struct b43_phy_g *gphy;
 struct b43_txpower_lo_control *lo;
 int err;

 gphy = kzalloc(sizeof(*gphy), GFP_KERNEL);
 if (!gphy) {
  err = -ENOMEM;
  goto error;
 }
 dev->phy.g = gphy;

 lo = kzalloc(sizeof(*lo), GFP_KERNEL);
 if (!lo) {
  err = -ENOMEM;
  goto err_free_gphy;
 }
 gphy->lo_control = lo;

 err = b43_gphy_init_tssi2dbm_table(dev);
 if (err)
  goto err_free_lo;

 return 0;

err_free_lo:
 kfree(lo);
err_free_gphy:
 kfree(gphy);
error:
 return err;
}
