; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7670.c_ov7675_apply_framerate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7670.c_ov7675_apply_framerate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.ov7670_info = type { i64, i32 }

@REG_CLKRC = common dso_local global i32 0, align 4
@REG_DBLV = common dso_local global i32 0, align 4
@DBLV_BYPASS = common dso_local global i32 0, align 4
@DBLV_X4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @ov7675_apply_framerate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov7675_apply_framerate(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.ov7670_info*, align 8
  %5 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  %6 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %7 = call %struct.ov7670_info* @to_state(%struct.v4l2_subdev* %6)
  store %struct.ov7670_info* %7, %struct.ov7670_info** %4, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %9 = load i32, i32* @REG_CLKRC, align 4
  %10 = load %struct.ov7670_info*, %struct.ov7670_info** %4, align 8
  %11 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @ov7670_write(%struct.v4l2_subdev* %8, i32 %9, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %32

18:                                               ; preds = %1
  %19 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %20 = load i32, i32* @REG_DBLV, align 4
  %21 = load %struct.ov7670_info*, %struct.ov7670_info** %4, align 8
  %22 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @DBLV_BYPASS, align 4
  br label %29

27:                                               ; preds = %18
  %28 = load i32, i32* @DBLV_X4, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  %31 = call i32 @ov7670_write(%struct.v4l2_subdev* %19, i32 %20, i32 %30)
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %29, %16
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.ov7670_info* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @ov7670_write(%struct.v4l2_subdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
