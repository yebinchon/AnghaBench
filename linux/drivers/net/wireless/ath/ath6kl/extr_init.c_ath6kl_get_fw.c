
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct firmware {size_t size; int data; } ;
struct ath6kl {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int * kmemdup (int ,size_t,int ) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,char const*,int ) ;

__attribute__((used)) static int ath6kl_get_fw(struct ath6kl *ar, const char *filename,
    u8 **fw, size_t *fw_len)
{
 const struct firmware *fw_entry;
 int ret;

 ret = request_firmware(&fw_entry, filename, ar->dev);
 if (ret)
  return ret;

 *fw_len = fw_entry->size;
 *fw = kmemdup(fw_entry->data, fw_entry->size, GFP_KERNEL);

 if (*fw == ((void*)0))
  ret = -ENOMEM;

 release_firmware(fw_entry);

 return ret;
}
