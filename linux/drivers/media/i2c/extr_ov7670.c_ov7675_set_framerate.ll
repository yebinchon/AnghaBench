; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7670.c_ov7675_set_framerate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7670.c_ov7675_set_framerate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.ov7670_info = type { i32, i32, i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 }

@PLL_FACTOR = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_SBGGR8_1X8 = common dso_local global i64 0, align 8
@CLK_EXT = common dso_local global i32 0, align 4
@CLK_SCALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_fract*)* @ov7675_set_framerate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov7675_set_framerate(%struct.v4l2_subdev* %0, %struct.v4l2_fract* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_fract*, align 8
  %6 = alloca %struct.ov7670_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_fract* %1, %struct.v4l2_fract** %5, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = call %struct.ov7670_info* @to_state(%struct.v4l2_subdev* %9)
  store %struct.ov7670_info* %10, %struct.ov7670_info** %6, align 8
  %11 = load %struct.v4l2_fract*, %struct.v4l2_fract** %5, align 8
  %12 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load %struct.v4l2_fract*, %struct.v4l2_fract** %5, align 8
  %17 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %2
  store i32 0, i32* %7, align 4
  br label %59

21:                                               ; preds = %15
  %22 = load %struct.ov7670_info*, %struct.ov7670_info** %6, align 8
  %23 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @PLL_FACTOR, align 4
  br label %29

29:                                               ; preds = %27, %26
  %30 = phi i32 [ 1, %26 ], [ %28, %27 ]
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = mul nsw i32 5, %31
  %33 = load %struct.ov7670_info*, %struct.ov7670_info** %6, align 8
  %34 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = mul nsw i32 %32, %35
  %37 = load %struct.v4l2_fract*, %struct.v4l2_fract** %5, align 8
  %38 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %36, %39
  %41 = load %struct.v4l2_fract*, %struct.v4l2_fract** %5, align 8
  %42 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 4, %43
  %45 = sdiv i32 %40, %44
  store i32 %45, i32* %7, align 4
  %46 = load %struct.ov7670_info*, %struct.ov7670_info** %6, align 8
  %47 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %46, i32 0, i32 3
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @MEDIA_BUS_FMT_SBGGR8_1X8, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %29
  %54 = load i32, i32* %7, align 4
  %55 = shl i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %53, %29
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %56, %20
  %60 = load i32, i32* %7, align 4
  %61 = icmp sle i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i32, i32* @CLK_EXT, align 4
  store i32 %63, i32* %7, align 4
  br label %71

64:                                               ; preds = %59
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @CLK_SCALE, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i32, i32* @CLK_SCALE, align 4
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %68, %64
  br label %71

71:                                               ; preds = %70, %62
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.ov7670_info*, %struct.ov7670_info** %6, align 8
  %74 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %76 = load %struct.v4l2_fract*, %struct.v4l2_fract** %5, align 8
  %77 = call i32 @ov7675_get_framerate(%struct.v4l2_subdev* %75, %struct.v4l2_fract* %76)
  %78 = load %struct.ov7670_info*, %struct.ov7670_info** %6, align 8
  %79 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %71
  %83 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %84 = call i32 @ov7675_apply_framerate(%struct.v4l2_subdev* %83)
  store i32 %84, i32* %3, align 4
  br label %86

85:                                               ; preds = %71
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %82
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local %struct.ov7670_info* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @ov7675_get_framerate(%struct.v4l2_subdev*, %struct.v4l2_fract*) #1

declare dso_local i32 @ov7675_apply_framerate(%struct.v4l2_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
