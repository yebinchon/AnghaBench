; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvp5150.c_tvp5150_read_std.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvp5150.c_tvp5150_read_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }

@TVP5150_STATUS_REG_5 = common dso_local global i32 0, align 4
@V4L2_STD_NTSC = common dso_local global i32 0, align 4
@V4L2_STD_PAL = common dso_local global i32 0, align 4
@V4L2_STD_PAL_M = common dso_local global i32 0, align 4
@V4L2_STD_PAL_N = common dso_local global i32 0, align 4
@V4L2_STD_PAL_Nc = common dso_local global i32 0, align 4
@V4L2_STD_NTSC_443 = common dso_local global i32 0, align 4
@V4L2_STD_SECAM = common dso_local global i32 0, align 4
@V4L2_STD_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @tvp5150_read_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvp5150_read_std(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  %5 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %6 = load i32, i32* @TVP5150_STATUS_REG_5, align 4
  %7 = call i32 @tvp5150_read(%struct.v4l2_subdev* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = and i32 %8, 15
  switch i32 %9, label %24 [
    i32 1, label %10
    i32 3, label %12
    i32 5, label %14
    i32 7, label %16
    i32 9, label %20
    i32 11, label %22
  ]

10:                                               ; preds = %1
  %11 = load i32, i32* @V4L2_STD_NTSC, align 4
  store i32 %11, i32* %2, align 4
  br label %26

12:                                               ; preds = %1
  %13 = load i32, i32* @V4L2_STD_PAL, align 4
  store i32 %13, i32* %2, align 4
  br label %26

14:                                               ; preds = %1
  %15 = load i32, i32* @V4L2_STD_PAL_M, align 4
  store i32 %15, i32* %2, align 4
  br label %26

16:                                               ; preds = %1
  %17 = load i32, i32* @V4L2_STD_PAL_N, align 4
  %18 = load i32, i32* @V4L2_STD_PAL_Nc, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %2, align 4
  br label %26

20:                                               ; preds = %1
  %21 = load i32, i32* @V4L2_STD_NTSC_443, align 4
  store i32 %21, i32* %2, align 4
  br label %26

22:                                               ; preds = %1
  %23 = load i32, i32* @V4L2_STD_SECAM, align 4
  store i32 %23, i32* %2, align 4
  br label %26

24:                                               ; preds = %1
  %25 = load i32, i32* @V4L2_STD_UNKNOWN, align 4
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %24, %22, %20, %16, %14, %12, %10
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @tvp5150_read(%struct.v4l2_subdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
