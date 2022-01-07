; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7670.c_ov7670_set_framerate_legacy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7670.c_ov7670_set_framerate_legacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.ov7670_info = type { i32, i32, i64 }

@CLK_SCALE = common dso_local global i32 0, align 4
@REG_CLKRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_fract*)* @ov7670_set_framerate_legacy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov7670_set_framerate_legacy(%struct.v4l2_subdev* %0, %struct.v4l2_fract* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_fract*, align 8
  %6 = alloca %struct.ov7670_info*, align 8
  %7 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_fract* %1, %struct.v4l2_fract** %5, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %9 = call %struct.ov7670_info* @to_state(%struct.v4l2_subdev* %8)
  store %struct.ov7670_info* %9, %struct.ov7670_info** %6, align 8
  %10 = load %struct.v4l2_fract*, %struct.v4l2_fract** %5, align 8
  %11 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = load %struct.v4l2_fract*, %struct.v4l2_fract** %5, align 8
  %16 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14, %2
  store i32 1, i32* %7, align 4
  br label %32

20:                                               ; preds = %14
  %21 = load %struct.v4l2_fract*, %struct.v4l2_fract** %5, align 8
  %22 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ov7670_info*, %struct.ov7670_info** %6, align 8
  %25 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = mul nsw i32 %23, %26
  %28 = load %struct.v4l2_fract*, %struct.v4l2_fract** %5, align 8
  %29 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sdiv i32 %27, %30
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %20, %19
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 1, i32* %7, align 4
  br label %43

36:                                               ; preds = %32
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @CLK_SCALE, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @CLK_SCALE, align 4
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %40, %36
  br label %43

43:                                               ; preds = %42, %35
  %44 = load %struct.ov7670_info*, %struct.ov7670_info** %6, align 8
  %45 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 128
  %48 = load i32, i32* %7, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.ov7670_info*, %struct.ov7670_info** %6, align 8
  %51 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.v4l2_fract*, %struct.v4l2_fract** %5, align 8
  %53 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %52, i32 0, i32 0
  store i32 1, i32* %53, align 4
  %54 = load %struct.ov7670_info*, %struct.ov7670_info** %6, align 8
  %55 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sdiv i32 %56, %57
  %59 = load %struct.v4l2_fract*, %struct.v4l2_fract** %5, align 8
  %60 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.ov7670_info*, %struct.ov7670_info** %6, align 8
  %62 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %43
  %66 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %67 = load i32, i32* @REG_CLKRC, align 4
  %68 = load %struct.ov7670_info*, %struct.ov7670_info** %6, align 8
  %69 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ov7670_write(%struct.v4l2_subdev* %66, i32 %67, i32 %70)
  store i32 %71, i32* %3, align 4
  br label %73

72:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %65
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.ov7670_info* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @ov7670_write(%struct.v4l2_subdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
