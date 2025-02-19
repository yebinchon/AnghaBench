
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef size_t u32 ;
struct ampdu_info {size_t*** max_txlen; } ;


 size_t MCS_TABLE_SIZE ;
 size_t mcs_2_rate (size_t,int,int) ;

__attribute__((used)) static void brcms_c_scb_ampdu_update_max_txlen(struct ampdu_info *ampdu, u8 dur)
{
 u32 rate, mcs;

 for (mcs = 0; mcs < MCS_TABLE_SIZE; mcs++) {


  rate = mcs_2_rate(mcs, 0, 0);
  ampdu->max_txlen[mcs][0][0] = (rate * dur) >> 3;

  rate = mcs_2_rate(mcs, 1, 0);
  ampdu->max_txlen[mcs][1][0] = (rate * dur) >> 3;

  rate = mcs_2_rate(mcs, 0, 1);
  ampdu->max_txlen[mcs][0][1] = (rate * dur) >> 3;

  rate = mcs_2_rate(mcs, 1, 1);
  ampdu->max_txlen[mcs][1][1] = (rate * dur) >> 3;
 }
}
