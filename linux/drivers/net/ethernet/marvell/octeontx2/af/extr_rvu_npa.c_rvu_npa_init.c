
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvu_hwinfo {int * block; } ;
struct rvu {struct rvu_hwinfo* hw; } ;


 int BLKTYPE_NPA ;
 int npa_aq_init (struct rvu*,int *) ;
 int rvu_get_blkaddr (struct rvu*,int ,int ) ;

int rvu_npa_init(struct rvu *rvu)
{
 struct rvu_hwinfo *hw = rvu->hw;
 int blkaddr, err;

 blkaddr = rvu_get_blkaddr(rvu, BLKTYPE_NPA, 0);
 if (blkaddr < 0)
  return 0;


 err = npa_aq_init(rvu, &hw->block[blkaddr]);
 if (err)
  return err;

 return 0;
}
