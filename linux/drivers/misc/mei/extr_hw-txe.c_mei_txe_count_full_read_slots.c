
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_device {int dummy; } ;


 int TXE_HBUF_DEPTH ;

__attribute__((used)) static int mei_txe_count_full_read_slots(struct mei_device *dev)
{

 return TXE_HBUF_DEPTH;
}
