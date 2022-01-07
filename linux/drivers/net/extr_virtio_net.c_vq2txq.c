
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtqueue {int index; } ;



__attribute__((used)) static int vq2txq(struct virtqueue *vq)
{
 return (vq->index - 1) / 2;
}
