; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-capture.c_sensor_set_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-capture.c_sensor_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camif_dev = type { %struct.cam_sensor }
%struct.cam_sensor = type { i32, i32 }

@core = common dso_local global i32 0, align 4
@s_power = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"on: %d, power_count: %d, err: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.camif_dev*, i32)* @sensor_set_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sensor_set_power(%struct.camif_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.camif_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cam_sensor*, align 8
  %6 = alloca i32, align 4
  store %struct.camif_dev* %0, %struct.camif_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.camif_dev*, %struct.camif_dev** %3, align 8
  %8 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %7, i32 0, i32 0
  store %struct.cam_sensor* %8, %struct.cam_sensor** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.camif_dev*, %struct.camif_dev** %3, align 8
  %10 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.cam_sensor, %struct.cam_sensor* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = icmp eq i32 %12, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load %struct.cam_sensor*, %struct.cam_sensor** %5, align 8
  %20 = getelementptr inbounds %struct.cam_sensor, %struct.cam_sensor* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @core, align 4
  %23 = load i32, i32* @s_power, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @v4l2_subdev_call(i32 %21, i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %18, %2
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @ENOIOCTLCMD, align 4
  %29 = sub nsw i32 0, %28
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %31, %26
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 1, i32 -1
  %40 = load %struct.cam_sensor*, %struct.cam_sensor** %5, align 8
  %41 = getelementptr inbounds %struct.cam_sensor, %struct.cam_sensor* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, %39
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %35, %32
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.cam_sensor*, %struct.cam_sensor** %5, align 8
  %47 = getelementptr inbounds %struct.cam_sensor, %struct.cam_sensor* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %48, i32 %49)
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
