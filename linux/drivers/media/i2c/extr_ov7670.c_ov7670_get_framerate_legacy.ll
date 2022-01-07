; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7670.c_ov7670_get_framerate_legacy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7670.c_ov7670_get_framerate_legacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.ov7670_info = type { i32, i32 }

@CLK_EXT = common dso_local global i32 0, align 4
@CLK_SCALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_subdev*, %struct.v4l2_fract*)* @ov7670_get_framerate_legacy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ov7670_get_framerate_legacy(%struct.v4l2_subdev* %0, %struct.v4l2_fract* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_fract*, align 8
  %5 = alloca %struct.ov7670_info*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.v4l2_fract* %1, %struct.v4l2_fract** %4, align 8
  %6 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %7 = call %struct.ov7670_info* @to_state(%struct.v4l2_subdev* %6)
  store %struct.ov7670_info* %7, %struct.ov7670_info** %5, align 8
  %8 = load %struct.v4l2_fract*, %struct.v4l2_fract** %4, align 8
  %9 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %8, i32 0, i32 0
  store i32 1, i32* %9, align 4
  %10 = load %struct.ov7670_info*, %struct.ov7670_info** %5, align 8
  %11 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.v4l2_fract*, %struct.v4l2_fract** %4, align 8
  %14 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.ov7670_info*, %struct.ov7670_info** %5, align 8
  %16 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @CLK_EXT, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %2
  %22 = load %struct.ov7670_info*, %struct.ov7670_info** %5, align 8
  %23 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @CLK_SCALE, align 4
  %26 = and i32 %24, %25
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %28, label %38

28:                                               ; preds = %21
  %29 = load %struct.ov7670_info*, %struct.ov7670_info** %5, align 8
  %30 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @CLK_SCALE, align 4
  %33 = and i32 %31, %32
  %34 = load %struct.v4l2_fract*, %struct.v4l2_fract** %4, align 8
  %35 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sdiv i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %28, %21, %2
  ret void
}

declare dso_local %struct.ov7670_info* @to_state(%struct.v4l2_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
