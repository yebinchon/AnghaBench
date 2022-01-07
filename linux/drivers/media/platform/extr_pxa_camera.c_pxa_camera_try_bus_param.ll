; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_pxa_camera.c_pxa_camera_try_bus_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_pxa_camera.c_pxa_camera_try_bus_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_camera_dev = type { i32 }
%struct.v4l2_mbus_config = type { i32, i32 }

@V4L2_MBUS_PARALLEL = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@g_mbus_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Flags incompatible: camera 0x%x, host 0x%lx\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pxa_camera_dev*, i8)* @pxa_camera_try_bus_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa_camera_try_bus_param(%struct.pxa_camera_dev* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pxa_camera_dev*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.v4l2_mbus_config, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.pxa_camera_dev* %0, %struct.pxa_camera_dev** %4, align 8
  store i8 %1, i8* %5, align 1
  %10 = getelementptr inbounds %struct.v4l2_mbus_config, %struct.v4l2_mbus_config* %6, i32 0, i32 0
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds %struct.v4l2_mbus_config, %struct.v4l2_mbus_config* %6, i32 0, i32 1
  %12 = load i32, i32* @V4L2_MBUS_PARALLEL, align 4
  store i32 %12, i32* %11, align 4
  %13 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %4, align 8
  %14 = load i8, i8* %5, align 1
  %15 = call i32 @test_platform_param(%struct.pxa_camera_dev* %13, i8 zeroext %14, i64* %7)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %3, align 4
  br label %51

20:                                               ; preds = %2
  %21 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %4, align 8
  %22 = load i32, i32* @video, align 4
  %23 = load i32, i32* @g_mbus_config, align 4
  %24 = call i32 @sensor_call(%struct.pxa_camera_dev* %21, i32 %22, i32 %23, %struct.v4l2_mbus_config* %6)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %42, label %27

27:                                               ; preds = %20
  %28 = load i64, i64* %7, align 8
  %29 = call i64 @pxa_mbus_config_compatible(%struct.v4l2_mbus_config* %6, i64 %28)
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %8, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %27
  %33 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %4, align 8
  %34 = call i32 @pcdev_to_dev(%struct.pxa_camera_dev* %33)
  %35 = getelementptr inbounds %struct.v4l2_mbus_config, %struct.v4l2_mbus_config* %6, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @dev_warn(i32 %34, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %36, i64 %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %51

41:                                               ; preds = %27
  br label %49

42:                                               ; preds = %20
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @ENOIOCTLCMD, align 4
  %45 = sub nsw i32 0, %44
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %47, %42
  br label %49

49:                                               ; preds = %48, %41
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %49, %32, %18
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @test_platform_param(%struct.pxa_camera_dev*, i8 zeroext, i64*) #1

declare dso_local i32 @sensor_call(%struct.pxa_camera_dev*, i32, i32, %struct.v4l2_mbus_config*) #1

declare dso_local i64 @pxa_mbus_config_compatible(%struct.v4l2_mbus_config*, i64) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i64) #1

declare dso_local i32 @pcdev_to_dev(%struct.pxa_camera_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
