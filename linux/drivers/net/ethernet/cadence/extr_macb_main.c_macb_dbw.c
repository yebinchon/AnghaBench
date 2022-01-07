
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct macb {int dummy; } ;


 int DBW ;
 int DBWDEF ;
 int DCFG1 ;
 int GEM_BF (int ,int ) ;
 int GEM_BFEXT (int ,int ) ;
 int GEM_DBW128 ;
 int GEM_DBW32 ;
 int GEM_DBW64 ;
 int gem_readl (struct macb*,int ) ;
 int macb_is_gem (struct macb*) ;

__attribute__((used)) static u32 macb_dbw(struct macb *bp)
{
 if (!macb_is_gem(bp))
  return 0;

 switch (GEM_BFEXT(DBWDEF, gem_readl(bp, DCFG1))) {
 case 4:
  return GEM_BF(DBW, GEM_DBW128);
 case 2:
  return GEM_BF(DBW, GEM_DBW64);
 case 1:
 default:
  return GEM_BF(DBW, GEM_DBW32);
 }
}
