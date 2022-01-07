
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct be_adapter {int dummy; } ;


 int LANCER_FW_DUMP_FILE ;
 int be_cmd_get_fat_dump (struct be_adapter*,int ,void*) ;
 scalar_t__ lancer_chip (struct be_adapter*) ;
 int lancer_cmd_read_file (struct be_adapter*,int ,int ,void*) ;

__attribute__((used)) static int be_read_dump_data(struct be_adapter *adapter, u32 dump_len,
        void *buf)
{
 int status = 0;

 if (lancer_chip(adapter))
  status = lancer_cmd_read_file(adapter, LANCER_FW_DUMP_FILE,
           dump_len, buf);
 else
  status = be_cmd_get_fat_dump(adapter, dump_len, buf);

 return status;
}
