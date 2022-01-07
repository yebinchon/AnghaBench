
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bitrate; int automatic; } ;


 int BITRATE_TABLE_SIZE ;
 int BUG_ON (int) ;
 TYPE_1__* bitrate_table ;

void orinoco_get_ratemode_cfg(int ratemode, int *bitrate, int *automatic)
{
 BUG_ON((ratemode < 0) || (ratemode >= BITRATE_TABLE_SIZE));

 *bitrate = bitrate_table[ratemode].bitrate * 100000;
 *automatic = bitrate_table[ratemode].automatic;
}
