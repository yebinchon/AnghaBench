
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct tda1004x_state {int dummy; } ;
typedef int bandwidth_8mhz ;
typedef int bandwidth_7mhz ;
typedef int bandwidth_6mhz ;


 int EINVAL ;
 int TDA10045H_CONFPLL_P ;
 int TDA10045H_IOFFSET ;
 int tda1004x_write_buf (struct tda1004x_state*,int ,int*,int) ;
 int tda1004x_write_byteI (struct tda1004x_state*,int ,int ) ;

__attribute__((used)) static int tda10045h_set_bandwidth(struct tda1004x_state *state,
       u32 bandwidth)
{
 static u8 bandwidth_6mhz[] = { 0x02, 0x00, 0x3d, 0x00, 0x60, 0x1e, 0xa7, 0x45, 0x4f };
 static u8 bandwidth_7mhz[] = { 0x02, 0x00, 0x37, 0x00, 0x4a, 0x2f, 0x6d, 0x76, 0xdb };
 static u8 bandwidth_8mhz[] = { 0x02, 0x00, 0x3d, 0x00, 0x48, 0x17, 0x89, 0xc7, 0x14 };

 switch (bandwidth) {
 case 6000000:
  tda1004x_write_buf(state, TDA10045H_CONFPLL_P, bandwidth_6mhz, sizeof(bandwidth_6mhz));
  break;

 case 7000000:
  tda1004x_write_buf(state, TDA10045H_CONFPLL_P, bandwidth_7mhz, sizeof(bandwidth_7mhz));
  break;

 case 8000000:
  tda1004x_write_buf(state, TDA10045H_CONFPLL_P, bandwidth_8mhz, sizeof(bandwidth_8mhz));
  break;

 default:
  return -EINVAL;
 }

 tda1004x_write_byteI(state, TDA10045H_IOFFSET, 0);

 return 0;
}
