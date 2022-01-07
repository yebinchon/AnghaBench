; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k6aa.c_s5k6aa_enum_frame_interval.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k6aa.c_s5k6aa_enum_frame_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5k6aa_interval = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_frame_interval_enum = type { i64, i64, i64, i32 }
%struct.s5k6aa = type { i32 }

@s5k6aa_intervals = common dso_local global %struct.s5k6aa_interval* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@S5K6AA_WIN_WIDTH_MIN = common dso_local global i32 0, align 4
@S5K6AA_WIN_WIDTH_MAX = common dso_local global i32 0, align 4
@S5K6AA_WIN_HEIGHT_MIN = common dso_local global i32 0, align 4
@S5K6AA_WIN_HEIGHT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_frame_interval_enum*)* @s5k6aa_enum_frame_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5k6aa_enum_frame_interval(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_frame_interval_enum* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_frame_interval_enum*, align 8
  %8 = alloca %struct.s5k6aa*, align 8
  %9 = alloca %struct.s5k6aa_interval*, align 8
  %10 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_frame_interval_enum* %2, %struct.v4l2_subdev_frame_interval_enum** %7, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %12 = call %struct.s5k6aa* @to_s5k6aa(%struct.v4l2_subdev* %11)
  store %struct.s5k6aa* %12, %struct.s5k6aa** %8, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.v4l2_subdev_frame_interval_enum*, %struct.v4l2_subdev_frame_interval_enum** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.s5k6aa_interval*, %struct.s5k6aa_interval** @s5k6aa_intervals, align 8
  %17 = call i64 @ARRAY_SIZE(%struct.s5k6aa_interval* %16)
  %18 = icmp uge i64 %15, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %71

22:                                               ; preds = %3
  %23 = load %struct.v4l2_subdev_frame_interval_enum*, %struct.v4l2_subdev_frame_interval_enum** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %23, i32 0, i32 1
  %25 = load i32, i32* @S5K6AA_WIN_WIDTH_MIN, align 4
  %26 = load i32, i32* @S5K6AA_WIN_WIDTH_MAX, align 4
  %27 = load %struct.v4l2_subdev_frame_interval_enum*, %struct.v4l2_subdev_frame_interval_enum** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %27, i32 0, i32 2
  %29 = load i32, i32* @S5K6AA_WIN_HEIGHT_MIN, align 4
  %30 = load i32, i32* @S5K6AA_WIN_HEIGHT_MAX, align 4
  %31 = call i32 @v4l_bound_align_image(i64* %24, i32 %25, i32 %26, i32 1, i64* %28, i32 %29, i32 %30, i32 1, i32 0)
  %32 = load %struct.s5k6aa*, %struct.s5k6aa** %8, align 8
  %33 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %32, i32 0, i32 0
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.s5k6aa_interval*, %struct.s5k6aa_interval** @s5k6aa_intervals, align 8
  %36 = load %struct.v4l2_subdev_frame_interval_enum*, %struct.v4l2_subdev_frame_interval_enum** %7, align 8
  %37 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.s5k6aa_interval, %struct.s5k6aa_interval* %35, i64 %38
  store %struct.s5k6aa_interval* %39, %struct.s5k6aa_interval** %9, align 8
  %40 = load %struct.v4l2_subdev_frame_interval_enum*, %struct.v4l2_subdev_frame_interval_enum** %7, align 8
  %41 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.s5k6aa_interval*, %struct.s5k6aa_interval** %9, align 8
  %44 = getelementptr inbounds %struct.s5k6aa_interval, %struct.s5k6aa_interval* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %42, %46
  br i1 %47, label %57, label %48

48:                                               ; preds = %22
  %49 = load %struct.v4l2_subdev_frame_interval_enum*, %struct.v4l2_subdev_frame_interval_enum** %7, align 8
  %50 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.s5k6aa_interval*, %struct.s5k6aa_interval** %9, align 8
  %53 = getelementptr inbounds %struct.s5k6aa_interval, %struct.s5k6aa_interval* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %51, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %48, %22
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %10, align 4
  br label %66

60:                                               ; preds = %48
  %61 = load %struct.s5k6aa_interval*, %struct.s5k6aa_interval** %9, align 8
  %62 = getelementptr inbounds %struct.s5k6aa_interval, %struct.s5k6aa_interval* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.v4l2_subdev_frame_interval_enum*, %struct.v4l2_subdev_frame_interval_enum** %7, align 8
  %65 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, %struct.v4l2_subdev_frame_interval_enum* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 8
  br label %66

66:                                               ; preds = %60, %57
  %67 = load %struct.s5k6aa*, %struct.s5k6aa** %8, align 8
  %68 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %67, i32 0, i32 0
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %66, %19
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local %struct.s5k6aa* @to_s5k6aa(%struct.v4l2_subdev*) #1

declare dso_local i64 @ARRAY_SIZE(%struct.s5k6aa_interval*) #1

declare dso_local i32 @v4l_bound_align_image(i64*, i32, i32, i32, i64*, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
