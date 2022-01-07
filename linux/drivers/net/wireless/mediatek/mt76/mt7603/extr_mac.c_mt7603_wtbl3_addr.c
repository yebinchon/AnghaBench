
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int MT7603_WTBL_SIZE ;
 int MT_WTBL3_SIZE ;
 scalar_t__ mt7603_wtbl2_addr (int ) ;

__attribute__((used)) static u32
mt7603_wtbl3_addr(int idx)
{
 u32 base = mt7603_wtbl2_addr(MT7603_WTBL_SIZE);

 return base + idx * MT_WTBL3_SIZE;
}
