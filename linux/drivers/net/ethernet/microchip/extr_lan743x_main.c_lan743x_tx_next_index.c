
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lan743x_tx {int ring_size; } ;



__attribute__((used)) static int lan743x_tx_next_index(struct lan743x_tx *tx, int index)
{
 return ((++index) % tx->ring_size);
}
