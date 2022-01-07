
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct ati_remote {int dummy; } ;


 int ati_remote_close (struct ati_remote*) ;
 struct ati_remote* input_get_drvdata (struct input_dev*) ;

__attribute__((used)) static void ati_remote_input_close(struct input_dev *inputdev)
{
 struct ati_remote *ati_remote = input_get_drvdata(inputdev);
 ati_remote_close(ati_remote);
}
