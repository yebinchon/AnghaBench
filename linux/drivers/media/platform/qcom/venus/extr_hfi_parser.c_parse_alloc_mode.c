
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct venus_core {int caps; } ;
struct hfi_buffer_alloc_mode_supported {scalar_t__ num_entries; scalar_t__ buffer_type; scalar_t__* data; } ;


 int ARRAY_SIZE (int ) ;
 scalar_t__ HFI_BUFFER_OUTPUT ;
 scalar_t__ HFI_BUFFER_OUTPUT2 ;
 scalar_t__ MAX_ALLOC_MODE_ENTRIES ;
 int fill_buf_mode ;
 int for_each_codec (int ,int ,scalar_t__,scalar_t__,int ,scalar_t__*,int) ;

__attribute__((used)) static void
parse_alloc_mode(struct venus_core *core, u32 codecs, u32 domain, void *data)
{
 struct hfi_buffer_alloc_mode_supported *mode = data;
 u32 num_entries = mode->num_entries;
 u32 *type;

 if (num_entries > MAX_ALLOC_MODE_ENTRIES)
  return;

 type = mode->data;

 while (num_entries--) {
  if (mode->buffer_type == HFI_BUFFER_OUTPUT ||
      mode->buffer_type == HFI_BUFFER_OUTPUT2)
   for_each_codec(core->caps, ARRAY_SIZE(core->caps),
           codecs, domain, fill_buf_mode, type, 1);

  type++;
 }
}
