
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SJA1105ET_FDB_BIN_SIZE ;

__attribute__((used)) static inline int sja1105et_fdb_index(int bin, int way)
{
 return bin * SJA1105ET_FDB_BIN_SIZE + way;
}
