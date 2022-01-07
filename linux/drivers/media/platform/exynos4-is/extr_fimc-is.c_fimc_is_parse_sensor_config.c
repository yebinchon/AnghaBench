
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct fimc_is_sensor {scalar_t__ i2c_bus; int drvdata; } ;
struct fimc_is {TYPE_1__* pdev; struct fimc_is_sensor* sensor; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int ENXIO ;
 scalar_t__ FIMC_INPUT_MIPI_CSI2_0 ;
 int dev_err (int *,char*,struct device_node*) ;
 int fimc_is_sensor_get_drvdata (struct device_node*) ;
 struct device_node* of_graph_get_next_endpoint (struct device_node*,int *) ;
 struct device_node* of_graph_get_remote_port (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 int of_property_read_u32 (struct device_node*,char*,scalar_t__*) ;

__attribute__((used)) static int fimc_is_parse_sensor_config(struct fimc_is *is, unsigned int index,
      struct device_node *node)
{
 struct fimc_is_sensor *sensor = &is->sensor[index];
 struct device_node *ep, *port;
 u32 tmp = 0;
 int ret;

 sensor->drvdata = fimc_is_sensor_get_drvdata(node);
 if (!sensor->drvdata) {
  dev_err(&is->pdev->dev, "no driver data found for: %pOF\n",
        node);
  return -EINVAL;
 }

 ep = of_graph_get_next_endpoint(node, ((void*)0));
 if (!ep)
  return -ENXIO;

 port = of_graph_get_remote_port(ep);
 of_node_put(ep);
 if (!port)
  return -ENXIO;


 ret = of_property_read_u32(port, "reg", &tmp);
 if (ret < 0) {
  dev_err(&is->pdev->dev, "reg property not found at: %pOF\n",
        port);
  of_node_put(port);
  return ret;
 }

 of_node_put(port);
 sensor->i2c_bus = tmp - FIMC_INPUT_MIPI_CSI2_0;
 return 0;
}
