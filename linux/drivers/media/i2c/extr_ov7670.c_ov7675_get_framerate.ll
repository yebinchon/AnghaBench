; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7670.c_ov7675_get_framerate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7670.c_ov7675_get_framerate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.ov7670_info = type { i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 }

@PLL_FACTOR = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_SBGGR8_1X8 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_subdev*, %struct.v4l2_fract*)* @ov7675_get_framerate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ov7675_get_framerate(%struct.v4l2_subdev* %0, %struct.v4l2_fract* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_fract*, align 8
  %5 = alloca %struct.ov7670_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.v4l2_fract* %1, %struct.v4l2_fract** %4, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %9 = call %struct.ov7670_info* @to_state(%struct.v4l2_subdev* %8)
  store %struct.ov7670_info* %9, %struct.ov7670_info** %5, align 8
  %10 = load %struct.ov7670_info*, %struct.ov7670_info** %5, align 8
  %11 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load %struct.ov7670_info*, %struct.ov7670_info** %5, align 8
  %14 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @PLL_FACTOR, align 4
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %18, %17
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %6, align 4
  %23 = load %struct.ov7670_info*, %struct.ov7670_info** %5, align 8
  %24 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @MEDIA_BUS_FMT_SBGGR8_1X8, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = load i32, i32* %6, align 4
  %32 = ashr i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %30, %20
  %34 = load %struct.v4l2_fract*, %struct.v4l2_fract** %4, align 8
  %35 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %34, i32 0, i32 0
  store i32 1, i32* %35, align 4
  %36 = load i32, i32* %7, align 4
  %37 = mul nsw i32 5, %36
  %38 = load %struct.ov7670_info*, %struct.ov7670_info** %5, align 8
  %39 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %37, %40
  %42 = load i32, i32* %6, align 4
  %43 = mul nsw i32 4, %42
  %44 = sdiv i32 %41, %43
  %45 = load %struct.v4l2_fract*, %struct.v4l2_fract** %4, align 8
  %46 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  ret void
}

declare dso_local %struct.ov7670_info* @to_state(%struct.v4l2_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
