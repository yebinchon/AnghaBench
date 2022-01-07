
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_IO ;
 int PAGE_IO_SIZE ;
 scalar_t__ all_mtd ;
 int iomapadr ;
 int iounmap (int ) ;
 int map_destroy (scalar_t__) ;
 int mtd_device_unregister (scalar_t__) ;
 int release_region (int ,int ) ;

__attribute__((used)) static void cleanup_sbc_gxx(void)
{
 if( all_mtd ) {
  mtd_device_unregister(all_mtd);
  map_destroy( all_mtd );
 }

 iounmap(iomapadr);
 release_region(PAGE_IO,PAGE_IO_SIZE);
}
