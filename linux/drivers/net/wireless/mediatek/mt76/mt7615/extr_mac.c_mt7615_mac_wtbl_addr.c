
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ MT_WTBL_BASE ;
 int MT_WTBL_ENTRY_SIZE ;

__attribute__((used)) static u32 mt7615_mac_wtbl_addr(int wcid)
{
 return MT_WTBL_BASE + wcid * MT_WTBL_ENTRY_SIZE;
}
