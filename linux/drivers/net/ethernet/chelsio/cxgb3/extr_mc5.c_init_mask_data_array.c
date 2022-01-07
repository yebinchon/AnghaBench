
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mc5 {unsigned int tcam_size; scalar_t__ mode; struct adapter* adapter; } ;
struct adapter {int dummy; } ;


 int A_MC5_DB_DBGI_REQ_DATA0 ;
 int A_MC5_DB_SERVER_INDEX ;
 scalar_t__ MC5_MODE_144_BIT ;
 int dbgi_wr_data3 (struct adapter*,int,int,int) ;
 scalar_t__ mc5_write (struct adapter*,scalar_t__,scalar_t__) ;
 unsigned int t3_read_reg (struct adapter*,int ) ;
 int t3_write_reg (struct adapter*,int ,int) ;

__attribute__((used)) static int init_mask_data_array(struct mc5 *mc5, u32 mask_array_base,
    u32 data_array_base, u32 write_cmd,
    int addr_shift)
{
 unsigned int i;
 struct adapter *adap = mc5->adapter;





 unsigned int size72 = mc5->tcam_size;
 unsigned int server_base = t3_read_reg(adap, A_MC5_DB_SERVER_INDEX);

 if (mc5->mode == MC5_MODE_144_BIT) {
  size72 *= 2;
  server_base *= 2;
 }


 dbgi_wr_data3(adap, 0, 0, 0);
 for (i = 0; i < size72; i++)
  if (mc5_write(adap, data_array_base + (i << addr_shift),
         write_cmd))
   return -1;


 dbgi_wr_data3(adap, 0xffffffff, 0xffffffff, 0xff);
 for (i = 0; i < size72; i++) {
  if (i == server_base)
   t3_write_reg(adap, A_MC5_DB_DBGI_REQ_DATA0,
         mc5->mode == MC5_MODE_144_BIT ?
         0xfffffff9 : 0xfffffffd);
  if (mc5_write(adap, mask_array_base + (i << addr_shift),
         write_cmd))
   return -1;
 }
 return 0;
}
