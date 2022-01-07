; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_vs6624.c_vs6624_s_frame_interval.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_vs6624.c_vs6624_s_frame_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_frame_interval = type { %struct.v4l2_fract }
%struct.v4l2_fract = type { i32, i32 }
%struct.vs6624 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@MAX_FRAME_RATE = common dso_local global i32 0, align 4
@VS6624_DISABLE_FR_DAMPER = common dso_local global i32 0, align 4
@VS6624_FR_NUM_MSB = common dso_local global i32 0, align 4
@VS6624_FR_NUM_LSB = common dso_local global i32 0, align 4
@VS6624_FR_DEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_frame_interval*)* @vs6624_s_frame_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vs6624_s_frame_interval(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_frame_interval* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_subdev_frame_interval*, align 8
  %5 = alloca %struct.vs6624*, align 8
  %6 = alloca %struct.v4l2_fract*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.v4l2_subdev_frame_interval* %1, %struct.v4l2_subdev_frame_interval** %4, align 8
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %8 = call %struct.vs6624* @to_vs6624(%struct.v4l2_subdev* %7)
  store %struct.vs6624* %8, %struct.vs6624** %5, align 8
  %9 = load %struct.v4l2_subdev_frame_interval*, %struct.v4l2_subdev_frame_interval** %4, align 8
  %10 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, %struct.v4l2_subdev_frame_interval* %9, i32 0, i32 0
  store %struct.v4l2_fract* %10, %struct.v4l2_fract** %6, align 8
  %11 = load %struct.v4l2_fract*, %struct.v4l2_fract** %6, align 8
  %12 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %30, label %15

15:                                               ; preds = %2
  %16 = load %struct.v4l2_fract*, %struct.v4l2_fract** %6, align 8
  %17 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %15
  %21 = load %struct.v4l2_fract*, %struct.v4l2_fract** %6, align 8
  %22 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.v4l2_fract*, %struct.v4l2_fract** %6, align 8
  %25 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @MAX_FRAME_RATE, align 4
  %28 = mul nsw i32 %26, %27
  %29 = icmp sgt i32 %23, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %20, %15, %2
  %31 = load %struct.v4l2_fract*, %struct.v4l2_fract** %6, align 8
  %32 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  %33 = load i32, i32* @MAX_FRAME_RATE, align 4
  %34 = load %struct.v4l2_fract*, %struct.v4l2_fract** %6, align 8
  %35 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  br label %36

36:                                               ; preds = %30, %20
  %37 = load %struct.v4l2_fract*, %struct.v4l2_fract** %6, align 8
  %38 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.vs6624*, %struct.vs6624** %5, align 8
  %41 = getelementptr inbounds %struct.vs6624, %struct.vs6624* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  %43 = load %struct.v4l2_fract*, %struct.v4l2_fract** %6, align 8
  %44 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.vs6624*, %struct.vs6624** %5, align 8
  %47 = getelementptr inbounds %struct.vs6624, %struct.vs6624* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 4
  %49 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %50 = load i32, i32* @VS6624_DISABLE_FR_DAMPER, align 4
  %51 = call i32 @vs6624_write(%struct.v4l2_subdev* %49, i32 %50, i32 0)
  %52 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %53 = load i32, i32* @VS6624_FR_NUM_MSB, align 4
  %54 = load %struct.vs6624*, %struct.vs6624** %5, align 8
  %55 = getelementptr inbounds %struct.vs6624, %struct.vs6624* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = ashr i32 %57, 8
  %59 = call i32 @vs6624_write(%struct.v4l2_subdev* %52, i32 %53, i32 %58)
  %60 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %61 = load i32, i32* @VS6624_FR_NUM_LSB, align 4
  %62 = load %struct.vs6624*, %struct.vs6624** %5, align 8
  %63 = getelementptr inbounds %struct.vs6624, %struct.vs6624* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 255
  %67 = call i32 @vs6624_write(%struct.v4l2_subdev* %60, i32 %61, i32 %66)
  %68 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %69 = load i32, i32* @VS6624_FR_DEN, align 4
  %70 = load %struct.vs6624*, %struct.vs6624** %5, align 8
  %71 = getelementptr inbounds %struct.vs6624, %struct.vs6624* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, 255
  %75 = call i32 @vs6624_write(%struct.v4l2_subdev* %68, i32 %69, i32 %74)
  ret i32 0
}

declare dso_local %struct.vs6624* @to_vs6624(%struct.v4l2_subdev*) #1

declare dso_local i32 @vs6624_write(%struct.v4l2_subdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
