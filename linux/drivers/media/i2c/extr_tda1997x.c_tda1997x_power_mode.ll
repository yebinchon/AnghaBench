; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tda1997x.c_tda1997x_power_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tda1997x.c_tda1997x_power_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda1997x_state = type { %struct.v4l2_subdev }
%struct.v4l2_subdev = type { i32 }

@REG_PON_OVR_EN = common dso_local global i32 0, align 4
@PON_DIS = common dso_local global i32 0, align 4
@REG_CFG1 = common dso_local global i32 0, align 4
@PON_EN = common dso_local global i32 0, align 4
@REG_DEEP_PLL7_BYP = common dso_local global i32 0, align 4
@REG_OF = common dso_local global i32 0, align 4
@OF_VP_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tda1997x_state*, i32)* @tda1997x_power_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tda1997x_power_mode(%struct.tda1997x_state* %0, i32 %1) #0 {
  %3 = alloca %struct.tda1997x_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i32, align 4
  store %struct.tda1997x_state* %0, %struct.tda1997x_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %8 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %7, i32 0, i32 0
  store %struct.v4l2_subdev* %8, %struct.v4l2_subdev** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %35

11:                                               ; preds = %2
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %13 = load i32, i32* @REG_PON_OVR_EN, align 4
  %14 = load i32, i32* @PON_DIS, align 4
  %15 = call i32 @io_write(%struct.v4l2_subdev* %12, i32 %13, i32 %14)
  %16 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %17 = load i32, i32* @REG_CFG1, align 4
  %18 = load i32, i32* @PON_EN, align 4
  %19 = call i32 @io_write(%struct.v4l2_subdev* %16, i32 %17, i32 %18)
  %20 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %21 = load i32, i32* @REG_DEEP_PLL7_BYP, align 4
  %22 = load i32, i32* @PON_DIS, align 4
  %23 = call i32 @io_write(%struct.v4l2_subdev* %20, i32 %21, i32 %22)
  %24 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %25 = load i32, i32* @REG_OF, align 4
  %26 = call i32 @io_read(%struct.v4l2_subdev* %24, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* @OF_VP_ENABLE, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %6, align 4
  %31 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %32 = load i32, i32* @REG_OF, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @io_write(%struct.v4l2_subdev* %31, i32 %32, i32 %33)
  br label %58

35:                                               ; preds = %2
  %36 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %37 = load i32, i32* @REG_OF, align 4
  %38 = call i32 @io_read(%struct.v4l2_subdev* %36, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* @OF_VP_ENABLE, align 4
  %40 = load i32, i32* %6, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %6, align 4
  %42 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %43 = load i32, i32* @REG_OF, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @io_write(%struct.v4l2_subdev* %42, i32 %43, i32 %44)
  %46 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %47 = load i32, i32* @REG_DEEP_PLL7_BYP, align 4
  %48 = load i32, i32* @PON_EN, align 4
  %49 = call i32 @io_write(%struct.v4l2_subdev* %46, i32 %47, i32 %48)
  %50 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %51 = load i32, i32* @REG_CFG1, align 4
  %52 = load i32, i32* @PON_DIS, align 4
  %53 = call i32 @io_write(%struct.v4l2_subdev* %50, i32 %51, i32 %52)
  %54 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %55 = load i32, i32* @REG_PON_OVR_EN, align 4
  %56 = load i32, i32* @PON_EN, align 4
  %57 = call i32 @io_write(%struct.v4l2_subdev* %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %35, %11
  ret void
}

declare dso_local i32 @io_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @io_read(%struct.v4l2_subdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
