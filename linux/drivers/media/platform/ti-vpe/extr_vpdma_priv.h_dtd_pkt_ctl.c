
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DTD_CHAN_SHFT ;
 int DTD_DIR_SHFT ;
 int DTD_MODE_SHFT ;
 int DTD_PKT_TYPE ;
 int DTD_PKT_TYPE_SHFT ;
 int DTD_PRI_SHFT ;

__attribute__((used)) static inline u32 dtd_pkt_ctl(bool mode, bool dir, int chan, int pri,
   int next_chan)
{
 return (DTD_PKT_TYPE << DTD_PKT_TYPE_SHFT) | (mode << DTD_MODE_SHFT) |
  (dir << DTD_DIR_SHFT) | (chan << DTD_CHAN_SHFT) |
  (pri << DTD_PRI_SHFT) | next_chan;
}
