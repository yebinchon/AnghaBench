; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9p031.c_mt9p031_s_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9p031.c_mt9p031_s_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.mt9p031 = type { i32 }

@MT9P031_OUTPUT_CONTROL_CEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @mt9p031_s_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9p031_s_stream(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mt9p031*, align 8
  %7 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %9 = call %struct.mt9p031* @to_mt9p031(%struct.v4l2_subdev* %8)
  store %struct.mt9p031* %9, %struct.mt9p031** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %2
  %13 = load %struct.mt9p031*, %struct.mt9p031** %6, align 8
  %14 = load i32, i32* @MT9P031_OUTPUT_CONTROL_CEN, align 4
  %15 = call i32 @mt9p031_set_output_control(%struct.mt9p031* %13, i32 %14, i32 0)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %3, align 4
  br label %41

20:                                               ; preds = %12
  %21 = load %struct.mt9p031*, %struct.mt9p031** %6, align 8
  %22 = call i32 @mt9p031_pll_disable(%struct.mt9p031* %21)
  store i32 %22, i32* %3, align 4
  br label %41

23:                                               ; preds = %2
  %24 = load %struct.mt9p031*, %struct.mt9p031** %6, align 8
  %25 = call i32 @mt9p031_set_params(%struct.mt9p031* %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %3, align 4
  br label %41

30:                                               ; preds = %23
  %31 = load %struct.mt9p031*, %struct.mt9p031** %6, align 8
  %32 = load i32, i32* @MT9P031_OUTPUT_CONTROL_CEN, align 4
  %33 = call i32 @mt9p031_set_output_control(%struct.mt9p031* %31, i32 0, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %3, align 4
  br label %41

38:                                               ; preds = %30
  %39 = load %struct.mt9p031*, %struct.mt9p031** %6, align 8
  %40 = call i32 @mt9p031_pll_enable(%struct.mt9p031* %39)
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %38, %36, %28, %20, %18
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.mt9p031* @to_mt9p031(%struct.v4l2_subdev*) #1

declare dso_local i32 @mt9p031_set_output_control(%struct.mt9p031*, i32, i32) #1

declare dso_local i32 @mt9p031_pll_disable(%struct.mt9p031*) #1

declare dso_local i32 @mt9p031_set_params(%struct.mt9p031*) #1

declare dso_local i32 @mt9p031_pll_enable(%struct.mt9p031*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
