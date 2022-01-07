
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct peespi {int * adapter; } ;
typedef int adapter_t ;


 int GFP_KERNEL ;
 struct peespi* kzalloc (int,int ) ;

struct peespi *t1_espi_create(adapter_t *adapter)
{
 struct peespi *espi = kzalloc(sizeof(*espi), GFP_KERNEL);

 if (espi)
  espi->adapter = adapter;
 return espi;
}
