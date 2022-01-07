
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_desc {int dummy; } ;



__attribute__((used)) static inline int
typhoon_num_free(int lastWrite, int lastRead, int ringSize)
{



 lastWrite /= sizeof(struct cmd_desc);
 lastRead /= sizeof(struct cmd_desc);
 return (ringSize + lastRead - lastWrite - 1) % ringSize;
}
