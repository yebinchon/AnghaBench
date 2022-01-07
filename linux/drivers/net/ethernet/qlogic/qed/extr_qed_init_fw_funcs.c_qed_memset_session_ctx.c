
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;


 size_t** con_region_offsets ;
 int memset (size_t*,int ,int ) ;

void qed_memset_session_ctx(void *p_ctx_mem, u32 ctx_size, u8 ctx_type)
{
 u8 *x_val_ptr, *t_val_ptr, *u_val_ptr, *p_ctx;
 u8 x_val, t_val, u_val;

 p_ctx = (u8 * const)p_ctx_mem;
 x_val_ptr = &p_ctx[con_region_offsets[0][ctx_type]];
 t_val_ptr = &p_ctx[con_region_offsets[1][ctx_type]];
 u_val_ptr = &p_ctx[con_region_offsets[2][ctx_type]];

 x_val = *x_val_ptr;
 t_val = *t_val_ptr;
 u_val = *u_val_ptr;

 memset(p_ctx, 0, ctx_size);

 *x_val_ptr = x_val;
 *t_val_ptr = t_val;
 *u_val_ptr = u_val;
}
