
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct be_dma_mem {int dummy; } ;
struct be_adapter {int dummy; } ;
typedef int data_len_cmd ;


 int lancer_cmd_read_object (struct be_adapter*,struct be_dma_mem*,int ,int ,int *,int *,int *,int *) ;
 int memset (struct be_dma_mem*,int ,int) ;

__attribute__((used)) static u32 lancer_cmd_get_file_len(struct be_adapter *adapter, u8 *file_name)
{
 u32 data_read = 0, eof;
 u8 addn_status;
 struct be_dma_mem data_len_cmd;

 memset(&data_len_cmd, 0, sizeof(data_len_cmd));

 lancer_cmd_read_object(adapter, &data_len_cmd, 0, 0, file_name,
          &data_read, &eof, &addn_status);

 return data_read;
}
