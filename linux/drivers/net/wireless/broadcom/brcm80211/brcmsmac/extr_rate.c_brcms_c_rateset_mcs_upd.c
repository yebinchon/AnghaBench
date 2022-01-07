
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct brcms_c_rateset {scalar_t__* mcs; } ;


 int MAX_STREAMS_SUPPORTED ;

void brcms_c_rateset_mcs_upd(struct brcms_c_rateset *rs, u8 txstreams)
{
 int i;
 for (i = txstreams; i < MAX_STREAMS_SUPPORTED; i++)
  rs->mcs[i] = 0;
}
