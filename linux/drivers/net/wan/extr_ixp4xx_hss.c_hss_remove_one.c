
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port {int npe; int netdev; } ;
struct platform_device {int dummy; } ;


 int free_netdev (int ) ;
 int kfree (struct port*) ;
 int npe_release (int ) ;
 struct port* platform_get_drvdata (struct platform_device*) ;
 int unregister_hdlc_device (int ) ;

__attribute__((used)) static int hss_remove_one(struct platform_device *pdev)
{
 struct port *port = platform_get_drvdata(pdev);

 unregister_hdlc_device(port->netdev);
 free_netdev(port->netdev);
 npe_release(port->npe);
 kfree(port);
 return 0;
}
