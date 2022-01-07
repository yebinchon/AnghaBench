; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5640.c_ov5640_try_frame_interval.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5640.c_ov5640_try_frame_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov5640_dev = type { i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.ov5640_mode_info = type { i32 }

@OV5640_15_FPS = common dso_local global i64 0, align 8
@ov5640_framerates = common dso_local global i32* null, align 8
@OV5640_60_FPS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov5640_dev*, %struct.v4l2_fract*, i32, i32)* @ov5640_try_frame_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov5640_try_frame_interval(%struct.ov5640_dev* %0, %struct.v4l2_fract* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ov5640_dev*, align 8
  %6 = alloca %struct.v4l2_fract*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ov5640_mode_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ov5640_dev* %0, %struct.ov5640_dev** %5, align 8
  store %struct.v4l2_fract* %1, %struct.v4l2_fract** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load i64, i64* @OV5640_15_FPS, align 8
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %10, align 4
  %19 = load i32*, i32** @ov5640_framerates, align 8
  %20 = load i64, i64* @OV5640_15_FPS, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %11, align 4
  %23 = load i32*, i32** @ov5640_framerates, align 8
  %24 = load i64, i64* @OV5640_60_FPS, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %12, align 4
  %27 = load %struct.v4l2_fract*, %struct.v4l2_fract** %6, align 8
  %28 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %4
  %32 = load i32, i32* %12, align 4
  %33 = load %struct.v4l2_fract*, %struct.v4l2_fract** %6, align 8
  %34 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.v4l2_fract*, %struct.v4l2_fract** %6, align 8
  %36 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %35, i32 0, i32 0
  store i32 1, i32* %36, align 4
  %37 = load i64, i64* @OV5640_60_FPS, align 8
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %10, align 4
  br label %84

39:                                               ; preds = %4
  %40 = load %struct.v4l2_fract*, %struct.v4l2_fract** %6, align 8
  %41 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.v4l2_fract*, %struct.v4l2_fract** %6, align 8
  %44 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @DIV_ROUND_CLOSEST(i32 %42, i32 %45)
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @clamp_val(i32 %46, i32 %47, i32 %48)
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %11, align 4
  store i32 %50, i32* %13, align 4
  store i32 0, i32* %15, align 4
  br label %51

51:                                               ; preds = %75, %39
  %52 = load i32, i32* %15, align 4
  %53 = load i32*, i32** @ov5640_framerates, align 8
  %54 = call i32 @ARRAY_SIZE(i32* %53)
  %55 = icmp slt i32 %52, %54
  br i1 %55, label %56, label %78

56:                                               ; preds = %51
  %57 = load i32*, i32** @ov5640_framerates, align 8
  %58 = load i32, i32* %15, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %16, align 4
  %62 = load i32, i32* %16, align 4
  %63 = load i32, i32* %14, align 4
  %64 = sub nsw i32 %62, %63
  %65 = call i64 @abs(i32 %64)
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %14, align 4
  %68 = sub nsw i32 %66, %67
  %69 = call i64 @abs(i32 %68)
  %70 = icmp slt i64 %65, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %56
  %72 = load i32, i32* %16, align 4
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %15, align 4
  store i32 %73, i32* %10, align 4
  br label %74

74:                                               ; preds = %71, %56
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %15, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %15, align 4
  br label %51

78:                                               ; preds = %51
  %79 = load %struct.v4l2_fract*, %struct.v4l2_fract** %6, align 8
  %80 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %79, i32 0, i32 0
  store i32 1, i32* %80, align 4
  %81 = load i32, i32* %13, align 4
  %82 = load %struct.v4l2_fract*, %struct.v4l2_fract** %6, align 8
  %83 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  br label %84

84:                                               ; preds = %78, %31
  %85 = load %struct.ov5640_dev*, %struct.ov5640_dev** %5, align 8
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call %struct.ov5640_mode_info* @ov5640_find_mode(%struct.ov5640_dev* %85, i32 %86, i32 %87, i32 %88, i32 0)
  store %struct.ov5640_mode_info* %89, %struct.ov5640_mode_info** %9, align 8
  %90 = load %struct.ov5640_mode_info*, %struct.ov5640_mode_info** %9, align 8
  %91 = icmp ne %struct.ov5640_mode_info* %90, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %84
  %93 = load i32, i32* %10, align 4
  br label %97

94:                                               ; preds = %84
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  br label %97

97:                                               ; preds = %94, %92
  %98 = phi i32 [ %93, %92 ], [ %96, %94 ]
  ret i32 %98
}

declare dso_local i32 @clamp_val(i32, i32, i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @abs(i32) #1

declare dso_local %struct.ov5640_mode_info* @ov5640_find_mode(%struct.ov5640_dev*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
