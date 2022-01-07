
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sis190_private {scalar_t__ cur_rx; scalar_t__ cur_tx; scalar_t__ dirty_rx; scalar_t__ dirty_tx; } ;



__attribute__((used)) static void sis190_init_ring_indexes(struct sis190_private *tp)
{
 tp->dirty_tx = tp->dirty_rx = tp->cur_tx = tp->cur_rx = 0;
}
