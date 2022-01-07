
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENTRY_BITPOS_DESCRIPTOR ;
 int ENTRY_BITPOS_QWORDS ;

__attribute__((used)) static inline int mk_entry(int id, int len)
{
 int qlen = len & 7 ? (len >> 3) + 1 : len >> 3;
 return id << ENTRY_BITPOS_DESCRIPTOR | qlen << ENTRY_BITPOS_QWORDS;
}
