
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_func {scalar_t__ class; scalar_t__ vendor; scalar_t__ device; } ;
struct sdio_device_id {scalar_t__ class; scalar_t__ vendor; scalar_t__ device; } ;
typedef scalar_t__ __u8 ;
typedef scalar_t__ __u16 ;


 scalar_t__ SDIO_ANY_ID ;

__attribute__((used)) static const struct sdio_device_id *sdio_match_one(struct sdio_func *func,
 const struct sdio_device_id *id)
{
 if (id->class != (__u8)SDIO_ANY_ID && id->class != func->class)
  return ((void*)0);
 if (id->vendor != (__u16)SDIO_ANY_ID && id->vendor != func->vendor)
  return ((void*)0);
 if (id->device != (__u16)SDIO_ANY_ID && id->device != func->device)
  return ((void*)0);
 return id;
}
