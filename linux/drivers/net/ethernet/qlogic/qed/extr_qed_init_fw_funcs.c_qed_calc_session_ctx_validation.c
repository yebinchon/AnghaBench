
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
typedef int u16 ;


 size_t** con_region_offsets ;
 int memset (size_t*,int ,int ) ;
 size_t qed_calc_cdu_validation_byte (size_t,int,int ) ;

void qed_calc_session_ctx_validation(void *p_ctx_mem,
         u16 ctx_size, u8 ctx_type, u32 cid)
{
 u8 *x_val_ptr, *t_val_ptr, *u_val_ptr, *p_ctx;

 p_ctx = (u8 * const)p_ctx_mem;
 x_val_ptr = &p_ctx[con_region_offsets[0][ctx_type]];
 t_val_ptr = &p_ctx[con_region_offsets[1][ctx_type]];
 u_val_ptr = &p_ctx[con_region_offsets[2][ctx_type]];

 memset(p_ctx, 0, ctx_size);

 *x_val_ptr = qed_calc_cdu_validation_byte(ctx_type, 3, cid);
 *t_val_ptr = qed_calc_cdu_validation_byte(ctx_type, 4, cid);
 *u_val_ptr = qed_calc_cdu_validation_byte(ctx_type, 5, cid);
}
