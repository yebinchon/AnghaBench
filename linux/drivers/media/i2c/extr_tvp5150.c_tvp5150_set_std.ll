; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvp5150.c_tvp5150_set_std.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvp5150.c_tvp5150_set_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.tvp5150 = type { i32 }

@V4L2_STD_NTSC_443 = common dso_local global i32 0, align 4
@VIDEO_STD_NTSC_4_43_BIT = common dso_local global i32 0, align 4
@V4L2_STD_PAL_M = common dso_local global i32 0, align 4
@VIDEO_STD_PAL_M_BIT = common dso_local global i32 0, align 4
@V4L2_STD_PAL_N = common dso_local global i32 0, align 4
@V4L2_STD_PAL_Nc = common dso_local global i32 0, align 4
@VIDEO_STD_PAL_COMBINATION_N_BIT = common dso_local global i32 0, align 4
@V4L2_STD_NTSC = common dso_local global i32 0, align 4
@VIDEO_STD_NTSC_MJ_BIT = common dso_local global i32 0, align 4
@V4L2_STD_PAL = common dso_local global i32 0, align 4
@VIDEO_STD_PAL_BDGHIN_BIT = common dso_local global i32 0, align 4
@V4L2_STD_SECAM = common dso_local global i32 0, align 4
@VIDEO_STD_SECAM_BIT = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Set video std register to %d.\0A\00", align 1
@TVP5150_VIDEO_STD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @tvp5150_set_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvp5150_set_std(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tvp5150*, align 8
  %6 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %8 = call %struct.tvp5150* @to_tvp5150(%struct.v4l2_subdev* %7)
  store %struct.tvp5150* %8, %struct.tvp5150** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @V4L2_STD_NTSC_443, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @VIDEO_STD_NTSC_4_43_BIT, align 4
  store i32 %13, i32* %6, align 4
  br label %56

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @V4L2_STD_PAL_M, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* @VIDEO_STD_PAL_M_BIT, align 4
  store i32 %19, i32* %6, align 4
  br label %55

20:                                               ; preds = %14
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @V4L2_STD_PAL_N, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @V4L2_STD_PAL_Nc, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24, %20
  %29 = load i32, i32* @VIDEO_STD_PAL_COMBINATION_N_BIT, align 4
  store i32 %29, i32* %6, align 4
  br label %54

30:                                               ; preds = %24
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @V4L2_STD_NTSC, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @VIDEO_STD_NTSC_MJ_BIT, align 4
  store i32 %36, i32* %6, align 4
  br label %53

37:                                               ; preds = %30
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @V4L2_STD_PAL, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @VIDEO_STD_PAL_BDGHIN_BIT, align 4
  store i32 %43, i32* %6, align 4
  br label %52

44:                                               ; preds = %37
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @V4L2_STD_SECAM, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* @VIDEO_STD_SECAM_BIT, align 4
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %49, %44
  br label %52

52:                                               ; preds = %51, %42
  br label %53

53:                                               ; preds = %52, %35
  br label %54

54:                                               ; preds = %53, %28
  br label %55

55:                                               ; preds = %54, %18
  br label %56

56:                                               ; preds = %55, %12
  %57 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %58 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @debug, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @dev_dbg_lvl(i32 %59, i32 1, i32 %60, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load %struct.tvp5150*, %struct.tvp5150** %5, align 8
  %64 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @TVP5150_VIDEO_STD, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @regmap_write(i32 %65, i32 %66, i32 %67)
  ret i32 0
}

declare dso_local %struct.tvp5150* @to_tvp5150(%struct.v4l2_subdev*) #1

declare dso_local i32 @dev_dbg_lvl(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
