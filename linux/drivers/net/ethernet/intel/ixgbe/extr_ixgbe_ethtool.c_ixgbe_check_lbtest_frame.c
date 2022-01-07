
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_rx_buffer {int page_offset; int page; } ;


 unsigned char* kmap (int ) ;
 int kunmap (int ) ;

__attribute__((used)) static bool ixgbe_check_lbtest_frame(struct ixgbe_rx_buffer *rx_buffer,
         unsigned int frame_size)
{
 unsigned char *data;
 bool match = 1;

 frame_size >>= 1;

 data = kmap(rx_buffer->page) + rx_buffer->page_offset;

 if (data[3] != 0xFF ||
     data[frame_size + 10] != 0xBE ||
     data[frame_size + 12] != 0xAF)
  match = 0;

 kunmap(rx_buffer->page);

 return match;
}
