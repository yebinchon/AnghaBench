; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7842.c_find_and_set_predefined_video_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7842.c_find_and_set_predefined_video_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.adv7842_video_standards = type { i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.v4l2_dv_timings = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i64, %struct.adv7842_video_standards*, %struct.v4l2_dv_timings*)* @find_and_set_predefined_video_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_and_set_predefined_video_timings(%struct.v4l2_subdev* %0, i64 %1, %struct.adv7842_video_standards* %2, %struct.v4l2_dv_timings* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.adv7842_video_standards*, align 8
  %9 = alloca %struct.v4l2_dv_timings*, align 8
  %10 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.adv7842_video_standards* %2, %struct.adv7842_video_standards** %8, align 8
  store %struct.v4l2_dv_timings* %3, %struct.v4l2_dv_timings** %9, align 8
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %57, %4
  %12 = load %struct.adv7842_video_standards*, %struct.adv7842_video_standards** %8, align 8
  %13 = load i32, i32* %10, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.adv7842_video_standards, %struct.adv7842_video_standards* %12, i64 %14
  %16 = getelementptr inbounds %struct.adv7842_video_standards, %struct.adv7842_video_standards* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %60

21:                                               ; preds = %11
  %22 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %9, align 8
  %23 = load %struct.adv7842_video_standards*, %struct.adv7842_video_standards** %8, align 8
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.adv7842_video_standards, %struct.adv7842_video_standards* %23, i64 %25
  %27 = getelementptr inbounds %struct.adv7842_video_standards, %struct.adv7842_video_standards* %26, i32 0, i32 2
  %28 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %29 = call i64 @is_digital_input(%struct.v4l2_subdev* %28)
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 250000, i32 1000000
  %33 = call i32 @v4l2_match_dv_timings(%struct.v4l2_dv_timings* %22, %struct.TYPE_4__* %27, i32 %32, i32 0)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %21
  br label %57

36:                                               ; preds = %21
  %37 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %38 = load %struct.adv7842_video_standards*, %struct.adv7842_video_standards** %8, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.adv7842_video_standards, %struct.adv7842_video_standards* %38, i64 %40
  %42 = getelementptr inbounds %struct.adv7842_video_standards, %struct.adv7842_video_standards* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @io_write(%struct.v4l2_subdev* %37, i32 0, i64 %43)
  %45 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %46 = load %struct.adv7842_video_standards*, %struct.adv7842_video_standards** %8, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.adv7842_video_standards, %struct.adv7842_video_standards* %46, i64 %48
  %50 = getelementptr inbounds %struct.adv7842_video_standards, %struct.adv7842_video_standards* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = shl i32 %51, 4
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* %7, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @io_write(%struct.v4l2_subdev* %45, i32 1, i64 %55)
  store i32 0, i32* %5, align 4
  br label %61

57:                                               ; preds = %35
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %10, align 4
  br label %11

60:                                               ; preds = %11
  store i32 -1, i32* %5, align 4
  br label %61

61:                                               ; preds = %60, %36
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @v4l2_match_dv_timings(%struct.v4l2_dv_timings*, %struct.TYPE_4__*, i32, i32) #1

declare dso_local i64 @is_digital_input(%struct.v4l2_subdev*) #1

declare dso_local i32 @io_write(%struct.v4l2_subdev*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
