; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-capture.c_sensor_set_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-capture.c_sensor_set_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camif_dev = type { %struct.cam_sensor }
%struct.cam_sensor = type { i32, i32 }

@video = common dso_local global i32 0, align 4
@s_stream = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"on: %d, stream_count: %d, err: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.camif_dev*, i32)* @sensor_set_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sensor_set_streaming(%struct.camif_dev* %0, i32 %1) #0 {
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
  %22 = load i32, i32* @video, align 4
  %23 = load i32, i32* @s_stream, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @v4l2_subdev_call(i32 %21, i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %18, %2
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 1, i32 -1
  %34 = load %struct.cam_sensor*, %struct.cam_sensor** %5, align 8
  %35 = getelementptr inbounds %struct.cam_sensor, %struct.cam_sensor* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %29, %26
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.cam_sensor*, %struct.cam_sensor** %5, align 8
  %41 = getelementptr inbounds %struct.cam_sensor, %struct.cam_sensor* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %42, i32 %43)
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
