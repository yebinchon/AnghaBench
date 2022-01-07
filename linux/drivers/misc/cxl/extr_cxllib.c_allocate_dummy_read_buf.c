
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;


 unsigned long long CXL_DUMMY_READ_ALIGN ;
 unsigned long long CXL_DUMMY_READ_SIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int WARN (int,char*) ;
 int dummy_read_addr ;
 scalar_t__ kzalloc (size_t,int ) ;
 int virt_to_phys (void*) ;

__attribute__((used)) static int allocate_dummy_read_buf(void)
{
 u64 buf, vaddr;
 size_t buf_size;





 buf_size = CXL_DUMMY_READ_SIZE + (1ull << CXL_DUMMY_READ_ALIGN);
 buf = (u64) kzalloc(buf_size, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 vaddr = (buf + (1ull << CXL_DUMMY_READ_ALIGN) - 1) &
     (~0ull << CXL_DUMMY_READ_ALIGN);

 WARN((vaddr + CXL_DUMMY_READ_SIZE) > (buf + buf_size),
  "Dummy read buffer alignment issue");
 dummy_read_addr = virt_to_phys((void *) vaddr);
 return 0;
}
