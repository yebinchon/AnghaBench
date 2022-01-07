
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql3_adapter {scalar_t__ small_buf_index; int small_buf_release_cnt; } ;


 scalar_t__ NUM_SMALL_BUFFERS ;

__attribute__((used)) static void ql_get_sbuf(struct ql3_adapter *qdev)
{
 if (++qdev->small_buf_index == NUM_SMALL_BUFFERS)
  qdev->small_buf_index = 0;
 qdev->small_buf_release_cnt++;
}
