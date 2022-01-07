
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct em28xx {int resources; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 int EBUSY ;
 int em28xx_videodbg (char*,int) ;
 int get_resource (int) ;

__attribute__((used)) static int res_get(struct em28xx *dev, enum v4l2_buf_type f_type)
{
 int res_type = get_resource(f_type);


 if (dev->resources & res_type) {

  return -EBUSY;
 }


 dev->resources |= res_type;
 em28xx_videodbg("res: get %d\n", res_type);
 return 0;
}
