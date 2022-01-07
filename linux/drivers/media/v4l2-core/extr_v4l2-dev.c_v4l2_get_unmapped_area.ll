; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-dev.c_v4l2_get_unmapped_area.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-dev.c_v4l2_get_unmapped_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.video_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.file*, i64, i64, i64, i64)* }

@ENOSYS = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i64 0, align 8
@V4L2_DEV_DEBUG_FOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: get_unmapped_area (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i64, i64, i64, i64)* @v4l2_get_unmapped_area to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @v4l2_get_unmapped_area(%struct.file* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.video_device*, align 8
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.file*, %struct.file** %7, align 8
  %15 = call %struct.video_device* @video_devdata(%struct.file* %14)
  store %struct.video_device* %15, %struct.video_device** %12, align 8
  %16 = load %struct.video_device*, %struct.video_device** %12, align 8
  %17 = getelementptr inbounds %struct.video_device, %struct.video_device* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.file*, i64, i64, i64, i64)*, i32 (%struct.file*, i64, i64, i64, i64)** %19, align 8
  %21 = icmp ne i32 (%struct.file*, i64, i64, i64, i64)* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %5
  %23 = load i64, i64* @ENOSYS, align 8
  %24 = sub i64 0, %23
  store i64 %24, i64* %6, align 8
  br label %58

25:                                               ; preds = %5
  %26 = load %struct.video_device*, %struct.video_device** %12, align 8
  %27 = call i32 @video_is_registered(%struct.video_device* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load i64, i64* @ENODEV, align 8
  %31 = sub i64 0, %30
  store i64 %31, i64* %6, align 8
  br label %58

32:                                               ; preds = %25
  %33 = load %struct.video_device*, %struct.video_device** %12, align 8
  %34 = getelementptr inbounds %struct.video_device, %struct.video_device* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32 (%struct.file*, i64, i64, i64, i64)*, i32 (%struct.file*, i64, i64, i64, i64)** %36, align 8
  %38 = load %struct.file*, %struct.file** %7, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* %11, align 8
  %43 = call i32 %37(%struct.file* %38, i64 %39, i64 %40, i64 %41, i64 %42)
  store i32 %43, i32* %13, align 4
  %44 = load %struct.video_device*, %struct.video_device** %12, align 8
  %45 = getelementptr inbounds %struct.video_device, %struct.video_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @V4L2_DEV_DEBUG_FOP, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %32
  %51 = load %struct.video_device*, %struct.video_device** %12, align 8
  %52 = call i32 @video_device_node_name(%struct.video_device* %51)
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @dprintk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %50, %32
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  store i64 %57, i64* %6, align 8
  br label %58

58:                                               ; preds = %55, %29, %22
  %59 = load i64, i64* %6, align 8
  ret i64 %59
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local i32 @video_is_registered(%struct.video_device*) #1

declare dso_local i32 @dprintk(i8*, i32, i32) #1

declare dso_local i32 @video_device_node_name(%struct.video_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
