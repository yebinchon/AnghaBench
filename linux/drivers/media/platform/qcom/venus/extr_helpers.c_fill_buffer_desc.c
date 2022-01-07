
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_buffer {int dma_addr; int size; } ;
struct hfi_buffer_desc {int num_buffers; int response_required; int device_addr; int buffer_size; int buffer_type; } ;


 int HFI_BUFFER_OUTPUT ;
 int memset (struct hfi_buffer_desc*,int ,int) ;

__attribute__((used)) static void fill_buffer_desc(const struct venus_buffer *buf,
        struct hfi_buffer_desc *bd, bool response)
{
 memset(bd, 0, sizeof(*bd));
 bd->buffer_type = HFI_BUFFER_OUTPUT;
 bd->buffer_size = buf->size;
 bd->num_buffers = 1;
 bd->device_addr = buf->dma_addr;
 bd->response_required = response;
}
