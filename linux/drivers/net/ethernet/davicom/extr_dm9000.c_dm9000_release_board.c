
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct board_info {scalar_t__ addr_req; scalar_t__ data_req; int io_data; int io_addr; } ;


 int iounmap (int ) ;
 int kfree (scalar_t__) ;
 int release_resource (scalar_t__) ;

__attribute__((used)) static void
dm9000_release_board(struct platform_device *pdev, struct board_info *db)
{


 iounmap(db->io_addr);
 iounmap(db->io_data);



 if (db->data_req)
  release_resource(db->data_req);
 kfree(db->data_req);

 if (db->addr_req)
  release_resource(db->addr_req);
 kfree(db->addr_req);
}
