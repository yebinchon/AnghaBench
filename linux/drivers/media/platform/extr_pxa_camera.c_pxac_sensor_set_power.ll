; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_pxa_camera.c_pxac_sensor_set_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_pxa_camera.c_pxac_sensor_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_camera_dev = type { i32 }

@core = common dso_local global i32 0, align 4
@s_power = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to put subdevice in %s mode: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"normal operation\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"power saving\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pxa_camera_dev*, i32)* @pxac_sensor_set_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxac_sensor_set_power(%struct.pxa_camera_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.pxa_camera_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pxa_camera_dev* %0, %struct.pxa_camera_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %3, align 8
  %7 = load i32, i32* @core, align 4
  %8 = load i32, i32* @s_power, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @sensor_call(%struct.pxa_camera_dev* %6, i32 %7, i32 %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @ENOIOCTLCMD, align 4
  %13 = sub nsw i32 0, %12
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %15, %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %3, align 8
  %21 = call i32 @pcdev_to_dev(%struct.pxa_camera_dev* %20)
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0)
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @dev_warn(i32 %21, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %25, i32 %26)
  br label %28

28:                                               ; preds = %19, %16
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local i32 @sensor_call(%struct.pxa_camera_dev*, i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i8*, i32) #1

declare dso_local i32 @pcdev_to_dev(%struct.pxa_camera_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
