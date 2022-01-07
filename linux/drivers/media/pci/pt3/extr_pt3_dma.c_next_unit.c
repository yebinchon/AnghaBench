
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pt3_adapter {int num_bufs; TYPE_1__* buffer; } ;
struct TYPE_2__ {int * data; } ;


 int DATA_BUF_SZ ;
 scalar_t__ PT3_ACCESS_UNIT ;

__attribute__((used)) static u8 *next_unit(struct pt3_adapter *adap, int *idx, int *ofs)
{
 *ofs += PT3_ACCESS_UNIT;
 if (*ofs >= DATA_BUF_SZ) {
  *ofs -= DATA_BUF_SZ;
  (*idx)++;
  if (*idx == adap->num_bufs)
   *idx = 0;
 }
 return &adap->buffer[*idx].data[*ofs];
}
