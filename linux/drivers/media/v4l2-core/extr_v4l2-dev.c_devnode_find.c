
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int vfl_type; } ;


 int devnode_bits (int ) ;
 int find_next_zero_bit (int ,int,int) ;

__attribute__((used)) static inline int devnode_find(struct video_device *vdev, int from, int to)
{
 return find_next_zero_bit(devnode_bits(vdev->vfl_type), to, from);
}
