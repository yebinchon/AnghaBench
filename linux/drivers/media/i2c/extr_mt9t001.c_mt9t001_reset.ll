; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9t001.c_mt9t001_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9t001.c_mt9t001_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt9t001 = type { i32, i32 }
%struct.i2c_client = type { i32 }

@MT9T001_RESET = common dso_local global i32 0, align 4
@MT9T001_OUTPUT_CONTROL_DEF = common dso_local global i32 0, align 4
@MT9T001_OUTPUT_CONTROL_CHIP_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt9t001*)* @mt9t001_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9t001_reset(%struct.mt9t001* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt9t001*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  store %struct.mt9t001* %0, %struct.mt9t001** %3, align 8
  %6 = load %struct.mt9t001*, %struct.mt9t001** %3, align 8
  %7 = getelementptr inbounds %struct.mt9t001, %struct.mt9t001* %6, i32 0, i32 1
  %8 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %7)
  store %struct.i2c_client* %8, %struct.i2c_client** %4, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = load i32, i32* @MT9T001_RESET, align 4
  %11 = call i32 @mt9t001_write(%struct.i2c_client* %9, i32 %10, i32 1)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %31

16:                                               ; preds = %1
  %17 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %18 = load i32, i32* @MT9T001_RESET, align 4
  %19 = call i32 @mt9t001_write(%struct.i2c_client* %17, i32 %18, i32 0)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %31

24:                                               ; preds = %16
  %25 = load i32, i32* @MT9T001_OUTPUT_CONTROL_DEF, align 4
  %26 = load %struct.mt9t001*, %struct.mt9t001** %3, align 8
  %27 = getelementptr inbounds %struct.mt9t001, %struct.mt9t001* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.mt9t001*, %struct.mt9t001** %3, align 8
  %29 = load i32, i32* @MT9T001_OUTPUT_CONTROL_CHIP_ENABLE, align 4
  %30 = call i32 @mt9t001_set_output_control(%struct.mt9t001* %28, i32 %29, i32 0)
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %24, %22, %14
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @mt9t001_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mt9t001_set_output_control(%struct.mt9t001*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
