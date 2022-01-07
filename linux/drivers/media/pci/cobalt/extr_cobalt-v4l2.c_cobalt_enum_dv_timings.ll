; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-v4l2.c_cobalt_enum_dv_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-v4l2.c_cobalt_enum_dv_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_enum_dv_timings = type { i64, i32, i32, i64 }
%struct.cobalt_stream = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@cea1080p60 = common dso_local global i32 0, align 4
@pad = common dso_local global i32 0, align 4
@enum_dv_timings = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_enum_dv_timings*)* @cobalt_enum_dv_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cobalt_enum_dv_timings(%struct.file* %0, i8* %1, %struct.v4l2_enum_dv_timings* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_enum_dv_timings*, align 8
  %8 = alloca %struct.cobalt_stream*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_enum_dv_timings* %2, %struct.v4l2_enum_dv_timings** %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.cobalt_stream* @video_drvdata(%struct.file* %9)
  store %struct.cobalt_stream* %10, %struct.cobalt_stream** %8, align 8
  %11 = load %struct.cobalt_stream*, %struct.cobalt_stream** %8, align 8
  %12 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %31

15:                                               ; preds = %3
  %16 = load %struct.v4l2_enum_dv_timings*, %struct.v4l2_enum_dv_timings** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_enum_dv_timings, %struct.v4l2_enum_dv_timings* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %41

23:                                               ; preds = %15
  %24 = load %struct.v4l2_enum_dv_timings*, %struct.v4l2_enum_dv_timings** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_enum_dv_timings, %struct.v4l2_enum_dv_timings* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @memset(i32 %26, i32 0, i32 4)
  %28 = load i32, i32* @cea1080p60, align 4
  %29 = load %struct.v4l2_enum_dv_timings*, %struct.v4l2_enum_dv_timings** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_enum_dv_timings, %struct.v4l2_enum_dv_timings* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  store i32 0, i32* %4, align 4
  br label %41

31:                                               ; preds = %3
  %32 = load %struct.v4l2_enum_dv_timings*, %struct.v4l2_enum_dv_timings** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_enum_dv_timings, %struct.v4l2_enum_dv_timings* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  %34 = load %struct.cobalt_stream*, %struct.cobalt_stream** %8, align 8
  %35 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @pad, align 4
  %38 = load i32, i32* @enum_dv_timings, align 4
  %39 = load %struct.v4l2_enum_dv_timings*, %struct.v4l2_enum_dv_timings** %7, align 8
  %40 = call i32 @v4l2_subdev_call(i32 %36, i32 %37, i32 %38, %struct.v4l2_enum_dv_timings* %39)
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %31, %23, %20
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.cobalt_stream* @video_drvdata(%struct.file*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, %struct.v4l2_enum_dv_timings*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
