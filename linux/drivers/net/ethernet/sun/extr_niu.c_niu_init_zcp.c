
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct niu {int port; TYPE_1__* parent; } ;
struct TYPE_2__ {scalar_t__ plat_type; } ;


 int ATLAS_P0_P1_CFIFO_ENTRIES ;
 int ATLAS_P2_P3_CFIFO_ENTRIES ;
 int CFIFO_ECC (int) ;
 int NIU_CFIFO_ENTRIES ;
 scalar_t__ PLAT_TYPE_NIU ;
 int ZCP_INT_MASK ;
 int ZCP_INT_MASK_ALL ;
 int ZCP_INT_STAT ;
 int ZCP_INT_STAT_ALL ;
 int niu_zcp_cfifo_reset (struct niu*) ;
 int niu_zcp_read (struct niu*,int,scalar_t__*) ;
 int niu_zcp_write (struct niu*,int,scalar_t__*) ;
 int nr64 (int ) ;
 int nw64 (int ,int ) ;

__attribute__((used)) static int niu_init_zcp(struct niu *np)
{
 u64 data[5], rbuf[5];
 int i, max, err;

 if (np->parent->plat_type != PLAT_TYPE_NIU) {
  if (np->port == 0 || np->port == 1)
   max = ATLAS_P0_P1_CFIFO_ENTRIES;
  else
   max = ATLAS_P2_P3_CFIFO_ENTRIES;
 } else
  max = NIU_CFIFO_ENTRIES;

 data[0] = 0;
 data[1] = 0;
 data[2] = 0;
 data[3] = 0;
 data[4] = 0;

 for (i = 0; i < max; i++) {
  err = niu_zcp_write(np, i, data);
  if (err)
   return err;
  err = niu_zcp_read(np, i, rbuf);
  if (err)
   return err;
 }

 niu_zcp_cfifo_reset(np);
 nw64(CFIFO_ECC(np->port), 0);
 nw64(ZCP_INT_STAT, ZCP_INT_STAT_ALL);
 (void) nr64(ZCP_INT_STAT);
 nw64(ZCP_INT_MASK, ZCP_INT_MASK_ALL);

 return 0;
}
