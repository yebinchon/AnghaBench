
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MLX4_BOARD_ID_LEN ;
 int VSD_OFFSET_MLX_BOARD_ID ;
 int VSD_OFFSET_SIG1 ;
 int VSD_OFFSET_SIG2 ;
 int VSD_OFFSET_TS_BOARD_ID ;
 scalar_t__ VSD_SIGNATURE_TOPSPIN ;
 scalar_t__ be16_to_cpup (void*) ;
 int get_unaligned (int *) ;
 int memset (char*,int ,int ) ;
 int put_unaligned (int ,int *) ;
 int strlcpy (char*,void*,int ) ;
 int swab32 (int ) ;

__attribute__((used)) static void get_board_id(void *vsd, char *board_id)
{
 int i;
 memset(board_id, 0, MLX4_BOARD_ID_LEN);

 if (be16_to_cpup(vsd + 0x00) == 0x5ad &&
     be16_to_cpup(vsd + 0xde) == 0x5ad) {
  strlcpy(board_id, vsd + 0x20, MLX4_BOARD_ID_LEN);
 } else {





  u32 *bid_u32 = (u32 *)board_id;

  for (i = 0; i < 4; ++i) {
   u32 *addr;
   u32 val;

   addr = (u32 *) (vsd + 0xd0 + i * 4);
   val = get_unaligned(addr);
   val = swab32(val);
   put_unaligned(val, &bid_u32[i]);
  }
 }
}
