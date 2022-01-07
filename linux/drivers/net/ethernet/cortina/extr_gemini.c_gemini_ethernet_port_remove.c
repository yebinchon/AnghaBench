
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct gemini_ethernet_port {int dummy; } ;


 int gemini_port_remove (struct gemini_ethernet_port*) ;
 struct gemini_ethernet_port* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int gemini_ethernet_port_remove(struct platform_device *pdev)
{
 struct gemini_ethernet_port *port = platform_get_drvdata(pdev);

 gemini_port_remove(port);
 return 0;
}
