; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa7110.c_saa7110_s_std.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa7110.c_saa7110_s_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.saa7110 = type { i32 }

@V4L2_STD_NTSC = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"switched to NTSC\0A\00", align 1
@V4L2_STD_PAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"switched to PAL\0A\00", align 1
@V4L2_STD_SECAM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"switched to SECAM\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @saa7110_s_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7110_s_std(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.saa7110*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %8 = call %struct.saa7110* @to_saa7110(%struct.v4l2_subdev* %7)
  store %struct.saa7110* %8, %struct.saa7110** %6, align 8
  %9 = load %struct.saa7110*, %struct.saa7110** %6, align 8
  %10 = getelementptr inbounds %struct.saa7110, %struct.saa7110* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %68

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.saa7110*, %struct.saa7110** %6, align 8
  %17 = getelementptr inbounds %struct.saa7110, %struct.saa7110* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @V4L2_STD_NTSC, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %14
  %23 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %24 = call i32 @saa7110_write(%struct.v4l2_subdev* %23, i32 13, i32 134)
  %25 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %26 = call i32 @saa7110_write(%struct.v4l2_subdev* %25, i32 15, i32 80)
  %27 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %28 = call i32 @saa7110_write(%struct.v4l2_subdev* %27, i32 17, i32 44)
  %29 = load i32, i32* @debug, align 4
  %30 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %31 = call i32 @v4l2_dbg(i32 1, i32 %29, %struct.v4l2_subdev* %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %67

32:                                               ; preds = %14
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @V4L2_STD_PAL, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %39 = call i32 @saa7110_write(%struct.v4l2_subdev* %38, i32 13, i32 134)
  %40 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %41 = call i32 @saa7110_write(%struct.v4l2_subdev* %40, i32 15, i32 16)
  %42 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %43 = call i32 @saa7110_write(%struct.v4l2_subdev* %42, i32 17, i32 89)
  %44 = load i32, i32* @debug, align 4
  %45 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %46 = call i32 @v4l2_dbg(i32 1, i32 %44, %struct.v4l2_subdev* %45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %66

47:                                               ; preds = %32
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @V4L2_STD_SECAM, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %47
  %53 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %54 = call i32 @saa7110_write(%struct.v4l2_subdev* %53, i32 13, i32 135)
  %55 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %56 = call i32 @saa7110_write(%struct.v4l2_subdev* %55, i32 15, i32 16)
  %57 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %58 = call i32 @saa7110_write(%struct.v4l2_subdev* %57, i32 17, i32 89)
  %59 = load i32, i32* @debug, align 4
  %60 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %61 = call i32 @v4l2_dbg(i32 1, i32 %59, %struct.v4l2_subdev* %60, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %65

62:                                               ; preds = %47
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %69

65:                                               ; preds = %52
  br label %66

66:                                               ; preds = %65, %37
  br label %67

67:                                               ; preds = %66, %22
  br label %68

68:                                               ; preds = %67, %2
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %68, %62
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.saa7110* @to_saa7110(%struct.v4l2_subdev*) #1

declare dso_local i32 @saa7110_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
