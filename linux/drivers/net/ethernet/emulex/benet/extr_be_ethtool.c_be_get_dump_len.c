
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct be_adapter {int fat_dump_len; } ;


 int LANCER_FW_DUMP_FILE ;
 scalar_t__ lancer_chip (struct be_adapter*) ;
 int lancer_cmd_get_file_len (struct be_adapter*,int ) ;

__attribute__((used)) static int be_get_dump_len(struct be_adapter *adapter)
{
 u32 dump_size = 0;

 if (lancer_chip(adapter))
  dump_size = lancer_cmd_get_file_len(adapter,
          LANCER_FW_DUMP_FILE);
 else
  dump_size = adapter->fat_dump_len;

 return dump_size;
}
