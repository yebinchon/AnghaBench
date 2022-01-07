
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct iwl_mvm {int dummy; } ;


 int IWL_NVM_DEFAULT_CHUNK_SIZE ;
 int iwl_nvm_write_chunk (struct iwl_mvm*,int,int,int,int const*) ;
 int min (int ,int) ;

__attribute__((used)) static int iwl_nvm_write_section(struct iwl_mvm *mvm, u16 section,
     const u8 *data, u16 length)
{
 int offset = 0;



 while (offset < length) {
  int chunk_size, ret;

  chunk_size = min(IWL_NVM_DEFAULT_CHUNK_SIZE,
     length - offset);

  ret = iwl_nvm_write_chunk(mvm, section, offset,
       chunk_size, data + offset);
  if (ret < 0)
   return ret;

  offset += chunk_size;
 }

 return 0;
}
