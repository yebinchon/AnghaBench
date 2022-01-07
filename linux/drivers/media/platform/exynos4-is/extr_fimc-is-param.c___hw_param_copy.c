
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FIMC_IS_PARAM_MAX_SIZE ;
 int memcpy (void*,void*,int ) ;

__attribute__((used)) static void __hw_param_copy(void *dst, void *src)
{
 memcpy(dst, src, FIMC_IS_PARAM_MAX_SIZE);
}
