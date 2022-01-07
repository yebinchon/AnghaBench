
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2400m {int bm_cmd_buf; int bm_ack_buf; } ;


 int kfree (int ) ;

__attribute__((used)) static
void i2400m_bm_buf_free(struct i2400m *i2400m)
{
 kfree(i2400m->bm_ack_buf);
 kfree(i2400m->bm_cmd_buf);
}
