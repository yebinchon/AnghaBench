; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov772x.c_ov772x_s_frame_interval.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov772x.c_ov772x_s_frame_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_frame_interval = type { %struct.v4l2_fract }
%struct.v4l2_fract = type { i32, i32 }
%struct.ov772x_priv = type { i64, i32, i32, i32, i32, i64 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_frame_interval*)* @ov772x_s_frame_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov772x_s_frame_interval(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_frame_interval* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_subdev_frame_interval*, align 8
  %5 = alloca %struct.ov772x_priv*, align 8
  %6 = alloca %struct.v4l2_fract*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.v4l2_subdev_frame_interval* %1, %struct.v4l2_subdev_frame_interval** %4, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %10 = call %struct.ov772x_priv* @to_ov772x(%struct.v4l2_subdev* %9)
  store %struct.ov772x_priv* %10, %struct.ov772x_priv** %5, align 8
  %11 = load %struct.v4l2_subdev_frame_interval*, %struct.v4l2_subdev_frame_interval** %4, align 8
  %12 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, %struct.v4l2_subdev_frame_interval* %11, i32 0, i32 0
  store %struct.v4l2_fract* %12, %struct.v4l2_fract** %6, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.ov772x_priv*, %struct.ov772x_priv** %5, align 8
  %14 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %13, i32 0, i32 2
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.ov772x_priv*, %struct.ov772x_priv** %5, align 8
  %17 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %16, i32 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EBUSY, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %8, align 4
  br label %54

23:                                               ; preds = %2
  %24 = load %struct.ov772x_priv*, %struct.ov772x_priv** %5, align 8
  %25 = load %struct.v4l2_fract*, %struct.v4l2_fract** %6, align 8
  %26 = call i32 @ov772x_select_fps(%struct.ov772x_priv* %24, %struct.v4l2_fract* %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.ov772x_priv*, %struct.ov772x_priv** %5, align 8
  %28 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %23
  %32 = load %struct.ov772x_priv*, %struct.ov772x_priv** %5, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.ov772x_priv*, %struct.ov772x_priv** %5, align 8
  %35 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ov772x_priv*, %struct.ov772x_priv** %5, align 8
  %38 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @ov772x_set_frame_rate(%struct.ov772x_priv* %32, i32 %33, i32 %36, i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  br label %54

44:                                               ; preds = %31
  br label %45

45:                                               ; preds = %44, %23
  %46 = load %struct.v4l2_fract*, %struct.v4l2_fract** %6, align 8
  %47 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %46, i32 0, i32 0
  store i32 1, i32* %47, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.v4l2_fract*, %struct.v4l2_fract** %6, align 8
  %50 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.ov772x_priv*, %struct.ov772x_priv** %5, align 8
  %53 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %45, %43, %20
  %55 = load %struct.ov772x_priv*, %struct.ov772x_priv** %5, align 8
  %56 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %55, i32 0, i32 2
  %57 = call i32 @mutex_unlock(i32* %56)
  %58 = load i32, i32* %8, align 4
  ret i32 %58
}

declare dso_local %struct.ov772x_priv* @to_ov772x(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ov772x_select_fps(%struct.ov772x_priv*, %struct.v4l2_fract*) #1

declare dso_local i32 @ov772x_set_frame_rate(%struct.ov772x_priv*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
