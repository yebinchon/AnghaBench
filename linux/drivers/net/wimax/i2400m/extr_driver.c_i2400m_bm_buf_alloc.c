
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2400m {int * bm_cmd_buf; int * bm_ack_buf; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int I2400M_BM_ACK_BUF_SIZE ;
 int I2400M_BM_CMD_BUF_SIZE ;
 int kfree (int *) ;
 void* kzalloc (int ,int ) ;

__attribute__((used)) static
int i2400m_bm_buf_alloc(struct i2400m *i2400m)
{
 int result;

 result = -ENOMEM;
 i2400m->bm_cmd_buf = kzalloc(I2400M_BM_CMD_BUF_SIZE, GFP_KERNEL);
 if (i2400m->bm_cmd_buf == ((void*)0))
  goto error_bm_cmd_kzalloc;
 i2400m->bm_ack_buf = kzalloc(I2400M_BM_ACK_BUF_SIZE, GFP_KERNEL);
 if (i2400m->bm_ack_buf == ((void*)0))
  goto error_bm_ack_buf_kzalloc;
 return 0;

error_bm_ack_buf_kzalloc:
 kfree(i2400m->bm_cmd_buf);
error_bm_cmd_kzalloc:
 return result;
}
