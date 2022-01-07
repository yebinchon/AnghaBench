
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ MT_WTBL1_BASE ;
 int MT_WTBL1_SIZE ;

__attribute__((used)) static u32
mt7603_wtbl1_addr(int idx)
{
 return MT_WTBL1_BASE + idx * MT_WTBL1_SIZE;
}
