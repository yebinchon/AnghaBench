
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt7530_hw_vlan_entry {int port; int untagged; } ;



__attribute__((used)) static inline void mt7530_hw_vlan_entry_init(struct mt7530_hw_vlan_entry *e,
          int port, bool untagged)
{
 e->port = port;
 e->untagged = untagged;
}
