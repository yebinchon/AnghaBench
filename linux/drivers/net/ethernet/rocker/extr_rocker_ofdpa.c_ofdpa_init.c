
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rocker {struct ofdpa* wpriv; } ;
struct ofdpa {int ageing_time; int fdb_cleanup_timer; int neigh_tbl_lock; int neigh_tbl; int internal_vlan_tbl_lock; int internal_vlan_tbl; int fdb_tbl_lock; int fdb_tbl; int group_tbl_lock; int group_tbl; int flow_tbl_lock; int flow_tbl; struct rocker* rocker; } ;


 int BR_DEFAULT_AGEING_TIME ;
 int hash_init (int ) ;
 int jiffies ;
 int mod_timer (int *,int ) ;
 int ofdpa_fdb_cleanup ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int ofdpa_init(struct rocker *rocker)
{
 struct ofdpa *ofdpa = rocker->wpriv;

 ofdpa->rocker = rocker;

 hash_init(ofdpa->flow_tbl);
 spin_lock_init(&ofdpa->flow_tbl_lock);

 hash_init(ofdpa->group_tbl);
 spin_lock_init(&ofdpa->group_tbl_lock);

 hash_init(ofdpa->fdb_tbl);
 spin_lock_init(&ofdpa->fdb_tbl_lock);

 hash_init(ofdpa->internal_vlan_tbl);
 spin_lock_init(&ofdpa->internal_vlan_tbl_lock);

 hash_init(ofdpa->neigh_tbl);
 spin_lock_init(&ofdpa->neigh_tbl_lock);

 timer_setup(&ofdpa->fdb_cleanup_timer, ofdpa_fdb_cleanup, 0);
 mod_timer(&ofdpa->fdb_cleanup_timer, jiffies);

 ofdpa->ageing_time = BR_DEFAULT_AGEING_TIME;

 return 0;
}
