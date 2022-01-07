
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DIV_ROUND_UP (unsigned int const,int) ;

__attribute__((used)) static inline u32 cio2_bytesperline(const unsigned int width)
{




 return DIV_ROUND_UP(width, 50) * 64;
}
