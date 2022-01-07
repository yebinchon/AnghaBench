
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct neighbour {int nud_state; int lock; int ha; int dead; } ;
struct neigh_table {int dummy; } ;


 int ENOENT ;
 int ETH_ALEN ;
 scalar_t__ IS_ERR (struct neighbour*) ;
 int NUD_VALID ;
 int PTR_ERR (struct neighbour*) ;
 int memcpy (unsigned char*,int ,int ) ;
 struct neighbour* neigh_create (struct neigh_table*,void const*,struct net_device*) ;
 int neigh_event_send (struct neighbour*,int *) ;
 struct neighbour* neigh_lookup (struct neigh_table*,void const*,struct net_device*) ;
 int neigh_release (struct neighbour*) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;

__attribute__((used)) static int mlxsw_sp_span_dmac(struct neigh_table *tbl,
         const void *pkey,
         struct net_device *dev,
         unsigned char dmac[ETH_ALEN])
{
 struct neighbour *neigh = neigh_lookup(tbl, pkey, dev);
 int err = 0;

 if (!neigh) {
  neigh = neigh_create(tbl, pkey, dev);
  if (IS_ERR(neigh))
   return PTR_ERR(neigh);
 }

 neigh_event_send(neigh, ((void*)0));

 read_lock_bh(&neigh->lock);
 if ((neigh->nud_state & NUD_VALID) && !neigh->dead)
  memcpy(dmac, neigh->ha, ETH_ALEN);
 else
  err = -ENOENT;
 read_unlock_bh(&neigh->lock);

 neigh_release(neigh);
 return err;
}
