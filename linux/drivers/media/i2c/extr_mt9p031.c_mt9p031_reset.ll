; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9p031.c_mt9p031_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9p031.c_mt9p031_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt9p031 = type { i32, i32 }
%struct.i2c_client = type { i32 }

@MT9P031_RST = common dso_local global i32 0, align 4
@MT9P031_RST_ENABLE = common dso_local global i32 0, align 4
@MT9P031_RST_DISABLE = common dso_local global i32 0, align 4
@MT9P031_PIXEL_CLOCK_CONTROL = common dso_local global i32 0, align 4
@MT9P031_OUTPUT_CONTROL_CEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt9p031*)* @mt9p031_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9p031_reset(%struct.mt9p031* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt9p031*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  store %struct.mt9p031* %0, %struct.mt9p031** %3, align 8
  %6 = load %struct.mt9p031*, %struct.mt9p031** %3, align 8
  %7 = getelementptr inbounds %struct.mt9p031, %struct.mt9p031* %6, i32 0, i32 1
  %8 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %7)
  store %struct.i2c_client* %8, %struct.i2c_client** %4, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = load i32, i32* @MT9P031_RST, align 4
  %11 = load i32, i32* @MT9P031_RST_ENABLE, align 4
  %12 = call i32 @mt9p031_write(%struct.i2c_client* %9, i32 %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %42

17:                                               ; preds = %1
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = load i32, i32* @MT9P031_RST, align 4
  %20 = load i32, i32* @MT9P031_RST_DISABLE, align 4
  %21 = call i32 @mt9p031_write(%struct.i2c_client* %18, i32 %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %42

26:                                               ; preds = %17
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = load i32, i32* @MT9P031_PIXEL_CLOCK_CONTROL, align 4
  %29 = load %struct.mt9p031*, %struct.mt9p031** %3, align 8
  %30 = getelementptr inbounds %struct.mt9p031, %struct.mt9p031* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @MT9P031_PIXEL_CLOCK_DIVIDE(i32 %31)
  %33 = call i32 @mt9p031_write(%struct.i2c_client* %27, i32 %28, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %42

38:                                               ; preds = %26
  %39 = load %struct.mt9p031*, %struct.mt9p031** %3, align 8
  %40 = load i32, i32* @MT9P031_OUTPUT_CONTROL_CEN, align 4
  %41 = call i32 @mt9p031_set_output_control(%struct.mt9p031* %39, i32 %40, i32 0)
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %38, %36, %24, %15
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @mt9p031_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @MT9P031_PIXEL_CLOCK_DIVIDE(i32) #1

declare dso_local i32 @mt9p031_set_output_control(%struct.mt9p031*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
