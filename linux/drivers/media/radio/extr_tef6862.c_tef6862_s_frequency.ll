; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_tef6862.c_tef6862_s_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_tef6862.c_tef6862_s_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_frequency = type { i32, i64 }
%struct.tef6862_state = type { i32 }
%struct.i2c_client = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@TEF6862_LO_FREQ = common dso_local global i32 0, align 4
@TEF6862_HI_FREQ = common dso_local global i32 0, align 4
@FREQ_MUL = common dso_local global i32 0, align 4
@MSA_MODE_PRESET = common dso_local global i32 0, align 4
@MSA_MODE_SHIFT = common dso_local global i32 0, align 4
@WM_SUB_PLLM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_frequency*)* @tef6862_s_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tef6862_s_frequency(%struct.v4l2_subdev* %0, %struct.v4l2_frequency* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_frequency*, align 8
  %6 = alloca %struct.tef6862_state*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [3 x i32], align 4
  %11 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_frequency* %1, %struct.v4l2_frequency** %5, align 8
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %13 = call %struct.tef6862_state* @to_state(%struct.v4l2_subdev* %12)
  store %struct.tef6862_state* %13, %struct.tef6862_state** %6, align 8
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %15 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %14)
  store %struct.i2c_client* %15, %struct.i2c_client** %7, align 8
  %16 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %5, align 8
  %17 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %8, align 4
  %19 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %5, align 8
  %20 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %71

26:                                               ; preds = %2
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @TEF6862_LO_FREQ, align 4
  %29 = load i32, i32* @TEF6862_HI_FREQ, align 4
  %30 = call i32 @clamp(i32 %27, i32 %28, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @TEF6862_LO_FREQ, align 4
  %33 = sub i32 %31, %32
  %34 = mul i32 %33, 20
  %35 = load i32, i32* @FREQ_MUL, align 4
  %36 = udiv i32 %34, %35
  %37 = add i32 1964, %36
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* @MSA_MODE_PRESET, align 4
  %39 = load i32, i32* @MSA_MODE_SHIFT, align 4
  %40 = shl i32 %38, %39
  %41 = load i32, i32* @WM_SUB_PLLM, align 4
  %42 = or i32 %40, %41
  %43 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* %9, align 4
  %45 = ashr i32 %44, 8
  %46 = and i32 %45, 255
  %47 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* %9, align 4
  %49 = and i32 %48, 255
  %50 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  store i32 %49, i32* %50, align 4
  %51 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %52 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %53 = call i32 @i2c_master_send(%struct.i2c_client* %51, i32* %52, i32 12)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = icmp ne i64 %55, 12
  br i1 %56, label %57, label %67

57:                                               ; preds = %26
  %58 = load i32, i32* %11, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32, i32* %11, align 4
  br label %65

62:                                               ; preds = %57
  %63 = load i32, i32* @EIO, align 4
  %64 = sub nsw i32 0, %63
  br label %65

65:                                               ; preds = %62, %60
  %66 = phi i32 [ %61, %60 ], [ %64, %62 ]
  store i32 %66, i32* %3, align 4
  br label %71

67:                                               ; preds = %26
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.tef6862_state*, %struct.tef6862_state** %6, align 8
  %70 = getelementptr inbounds %struct.tef6862_state, %struct.tef6862_state* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %67, %65, %23
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.tef6862_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @clamp(i32, i32, i32) #1

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
