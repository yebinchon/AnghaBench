
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum bufdesc_len { ____Placeholder_bufdesc_len } bufdesc_len ;




 unsigned int WQE_LCMD_SIZE ;
 unsigned int WQE_SCMD_SIZE ;

__attribute__((used)) static unsigned int cmdq_wqe_size_from_bdlen(enum bufdesc_len len)
{
 unsigned int wqe_size = 0;

 switch (len) {
 case 129:
  wqe_size = WQE_LCMD_SIZE;
  break;
 case 128:
  wqe_size = WQE_SCMD_SIZE;
  break;
 }

 return wqe_size;
}
