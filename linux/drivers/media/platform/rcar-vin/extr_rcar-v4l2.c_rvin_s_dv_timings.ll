; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-v4l2.c_rvin_s_dv_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-v4l2.c_rvin_s_dv_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_dv_timings = type { i32 }
%struct.rvin_dev = type { i32 }
%struct.v4l2_subdev = type { i32 }

@video = common dso_local global i32 0, align 4
@s_dv_timings = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_dv_timings*)* @rvin_s_dv_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rvin_s_dv_timings(%struct.file* %0, i8* %1, %struct.v4l2_dv_timings* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_dv_timings*, align 8
  %8 = alloca %struct.rvin_dev*, align 8
  %9 = alloca %struct.v4l2_subdev*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_dv_timings* %2, %struct.v4l2_dv_timings** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.rvin_dev* @video_drvdata(%struct.file* %11)
  store %struct.rvin_dev* %12, %struct.rvin_dev** %8, align 8
  %13 = load %struct.rvin_dev*, %struct.rvin_dev** %8, align 8
  %14 = call %struct.v4l2_subdev* @vin_to_source(%struct.rvin_dev* %13)
  store %struct.v4l2_subdev* %14, %struct.v4l2_subdev** %9, align 8
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %16 = load i32, i32* @video, align 4
  %17 = load i32, i32* @s_dv_timings, align 4
  %18 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %19 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %15, i32 %16, i32 %17, %struct.v4l2_dv_timings* %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %4, align 4
  br label %27

24:                                               ; preds = %3
  %25 = load %struct.rvin_dev*, %struct.rvin_dev** %8, align 8
  %26 = call i32 @rvin_reset_format(%struct.rvin_dev* %25)
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %24, %22
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local %struct.rvin_dev* @video_drvdata(%struct.file*) #1

declare dso_local %struct.v4l2_subdev* @vin_to_source(%struct.rvin_dev*) #1

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, %struct.v4l2_dv_timings*) #1

declare dso_local i32 @rvin_reset_format(%struct.rvin_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
