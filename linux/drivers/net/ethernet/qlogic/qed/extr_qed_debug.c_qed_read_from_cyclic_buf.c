
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef size_t u32 ;


 size_t qed_cyclic_add (size_t,int,size_t) ;

__attribute__((used)) static u32 qed_read_from_cyclic_buf(void *buf,
        u32 *offset,
        u32 buf_size, u8 num_bytes_to_read)
{
 u8 i, *val_ptr, *bytes_buf = (u8 *)buf;
 u32 val = 0;

 val_ptr = (u8 *)&val;




 for (i = 0; i < num_bytes_to_read; i++) {
  val_ptr[i] = bytes_buf[*offset];
  *offset = qed_cyclic_add(*offset, 1, buf_size);
 }

 return val;
}
