; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-core.c_s5c73m3_oif_s_frame_interval.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-core.c_s5c73m3_oif_s_frame_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_frame_interval = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.s5c73m3 = type { i32, i32, i64 }

@OIF_SOURCE_PAD = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@s5c73m3_dbg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Setting %d/%d frame interval\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_frame_interval*)* @s5c73m3_oif_s_frame_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5c73m3_oif_s_frame_interval(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_frame_interval* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_subdev_frame_interval*, align 8
  %6 = alloca %struct.s5c73m3*, align 8
  %7 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_subdev_frame_interval* %1, %struct.v4l2_subdev_frame_interval** %5, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %9 = call %struct.s5c73m3* @oif_sd_to_s5c73m3(%struct.v4l2_subdev* %8)
  store %struct.s5c73m3* %9, %struct.s5c73m3** %6, align 8
  %10 = load %struct.v4l2_subdev_frame_interval*, %struct.v4l2_subdev_frame_interval** %5, align 8
  %11 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, %struct.v4l2_subdev_frame_interval* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @OIF_SOURCE_PAD, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %55

18:                                               ; preds = %2
  %19 = load i32, i32* @s5c73m3_dbg, align 4
  %20 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %21 = load %struct.v4l2_subdev_frame_interval*, %struct.v4l2_subdev_frame_interval** %5, align 8
  %22 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, %struct.v4l2_subdev_frame_interval* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.v4l2_subdev_frame_interval*, %struct.v4l2_subdev_frame_interval** %5, align 8
  %26 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, %struct.v4l2_subdev_frame_interval* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @v4l2_dbg(i32 1, i32 %19, %struct.v4l2_subdev* %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %28)
  %30 = load %struct.s5c73m3*, %struct.s5c73m3** %6, align 8
  %31 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %30, i32 0, i32 1
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.s5c73m3*, %struct.s5c73m3** %6, align 8
  %34 = load %struct.v4l2_subdev_frame_interval*, %struct.v4l2_subdev_frame_interval** %5, align 8
  %35 = call i32 @__s5c73m3_set_frame_interval(%struct.s5c73m3* %33, %struct.v4l2_subdev_frame_interval* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %50, label %38

38:                                               ; preds = %18
  %39 = load %struct.s5c73m3*, %struct.s5c73m3** %6, align 8
  %40 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load %struct.s5c73m3*, %struct.s5c73m3** %6, align 8
  %45 = call i32 @s5c73m3_set_frame_rate(%struct.s5c73m3* %44)
  store i32 %45, i32* %7, align 4
  br label %49

46:                                               ; preds = %38
  %47 = load %struct.s5c73m3*, %struct.s5c73m3** %6, align 8
  %48 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  br label %49

49:                                               ; preds = %46, %43
  br label %50

50:                                               ; preds = %49, %18
  %51 = load %struct.s5c73m3*, %struct.s5c73m3** %6, align 8
  %52 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %51, i32 0, i32 1
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %50, %15
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.s5c73m3* @oif_sd_to_s5c73m3(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__s5c73m3_set_frame_interval(%struct.s5c73m3*, %struct.v4l2_subdev_frame_interval*) #1

declare dso_local i32 @s5c73m3_set_frame_rate(%struct.s5c73m3*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
