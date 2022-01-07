; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9m111.c_mt9m111_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9m111.c_mt9m111_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt9m111 = type { i32, i32 }
%struct.i2c_client = type { i32 }

@RESET = common dso_local global i32 0, align 4
@MT9M111_RESET_RESET_MODE = common dso_local global i32 0, align 4
@MT9M111_RESET_RESET_SOC = common dso_local global i32 0, align 4
@MT9M111_RESET_OUTPUT_DISABLE = common dso_local global i32 0, align 4
@MT9M111_RESET_ANALOG_STANDBY = common dso_local global i32 0, align 4
@MT9M111_RESET_CHIP_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt9m111*)* @mt9m111_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9m111_suspend(%struct.mt9m111* %0) #0 {
  %2 = alloca %struct.mt9m111*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  store %struct.mt9m111* %0, %struct.mt9m111** %2, align 8
  %5 = load %struct.mt9m111*, %struct.mt9m111** %2, align 8
  %6 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %5, i32 0, i32 1
  %7 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %6)
  store %struct.i2c_client* %7, %struct.i2c_client** %3, align 8
  %8 = load %struct.mt9m111*, %struct.mt9m111** %2, align 8
  %9 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.mt9m111*, %struct.mt9m111** %2, align 8
  %12 = call i32 @mt9m111_get_global_gain(%struct.mt9m111* %11)
  %13 = call i32 @v4l2_ctrl_s_ctrl(i32 %10, i32 %12)
  %14 = load i32, i32* @RESET, align 4
  %15 = load i32, i32* @MT9M111_RESET_RESET_MODE, align 4
  %16 = call i32 @reg_set(i32 %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @RESET, align 4
  %21 = load i32, i32* @MT9M111_RESET_RESET_SOC, align 4
  %22 = load i32, i32* @MT9M111_RESET_OUTPUT_DISABLE, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @MT9M111_RESET_ANALOG_STANDBY, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @reg_set(i32 %20, i32 %25)
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %19, %1
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* @RESET, align 4
  %32 = load i32, i32* @MT9M111_RESET_CHIP_ENABLE, align 4
  %33 = call i32 @reg_clear(i32 %31, i32 %32)
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %30, %27
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @v4l2_ctrl_s_ctrl(i32, i32) #1

declare dso_local i32 @mt9m111_get_global_gain(%struct.mt9m111*) #1

declare dso_local i32 @reg_set(i32, i32) #1

declare dso_local i32 @reg_clear(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
