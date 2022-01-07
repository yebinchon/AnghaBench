
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct enetc_cbdr {int next_to_clean; int bd_count; int cir; } ;
struct enetc_si {TYPE_1__* pdev; struct enetc_cbdr cbd_ring; } ;
struct enetc_cbd {int status_flags; int cmd; } ;
struct TYPE_2__ {int dev; } ;


 struct enetc_cbd* ENETC_CBD (struct enetc_cbdr,int) ;
 int ENETC_CBD_STATUS_MASK ;
 int dev_warn (int *,char*,int,int ) ;
 int enetc_rd_reg (int ) ;
 int memset (struct enetc_cbd*,int ,int) ;

__attribute__((used)) static void enetc_clean_cbdr(struct enetc_si *si)
{
 struct enetc_cbdr *ring = &si->cbd_ring;
 struct enetc_cbd *dest_cbd;
 int i, status;

 i = ring->next_to_clean;

 while (enetc_rd_reg(ring->cir) != i) {
  dest_cbd = ENETC_CBD(*ring, i);
  status = dest_cbd->status_flags & ENETC_CBD_STATUS_MASK;
  if (status)
   dev_warn(&si->pdev->dev, "CMD err %04x for cmd %04x\n",
     status, dest_cbd->cmd);

  memset(dest_cbd, 0, sizeof(*dest_cbd));

  i = (i + 1) % ring->bd_count;
 }

 ring->next_to_clean = i;
}
