; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tda1997x.c_tda1997x_reset_n1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tda1997x.c_tda1997x_reset_n1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda1997x_state = type { %struct.v4l2_subdev }
%struct.v4l2_subdev = type { i32 }

@REG_CLK_CFG = common dso_local global i32 0, align 4
@CLK_CFG_SEL_ACLK_EN = common dso_local global i32 0, align 4
@CLK_CFG_SEL_ACLK = common dso_local global i32 0, align 4
@REG_PON_OVR_EN = common dso_local global i32 0, align 4
@PON_EN = common dso_local global i32 0, align 4
@REG_PON_CBIAS = common dso_local global i32 0, align 4
@REG_PON_PLL = common dso_local global i32 0, align 4
@REG_MODE_REC_CFG1 = common dso_local global i32 0, align 4
@CLK_CFG_DIS = common dso_local global i32 0, align 4
@PON_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tda1997x_state*)* @tda1997x_reset_n1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tda1997x_reset_n1(%struct.tda1997x_state* %0) #0 {
  %2 = alloca %struct.tda1997x_state*, align 8
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  store %struct.tda1997x_state* %0, %struct.tda1997x_state** %2, align 8
  %5 = load %struct.tda1997x_state*, %struct.tda1997x_state** %2, align 8
  %6 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %5, i32 0, i32 0
  store %struct.v4l2_subdev* %6, %struct.v4l2_subdev** %3, align 8
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %8 = load i32, i32* @REG_CLK_CFG, align 4
  %9 = load i32, i32* @CLK_CFG_SEL_ACLK_EN, align 4
  %10 = load i32, i32* @CLK_CFG_SEL_ACLK, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @io_write(%struct.v4l2_subdev* %7, i32 %8, i32 %11)
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %14 = load i32, i32* @REG_PON_OVR_EN, align 4
  %15 = load i32, i32* @PON_EN, align 4
  %16 = call i32 @io_write(%struct.v4l2_subdev* %13, i32 %14, i32 %15)
  %17 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %18 = load i32, i32* @REG_PON_CBIAS, align 4
  %19 = load i32, i32* @PON_EN, align 4
  %20 = call i32 @io_write(%struct.v4l2_subdev* %17, i32 %18, i32 %19)
  %21 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %22 = load i32, i32* @REG_PON_PLL, align 4
  %23 = load i32, i32* @PON_EN, align 4
  %24 = call i32 @io_write(%struct.v4l2_subdev* %21, i32 %22, i32 %23)
  %25 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %26 = load i32, i32* @REG_MODE_REC_CFG1, align 4
  %27 = call i32 @io_read(%struct.v4l2_subdev* %25, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, -7
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = or i32 %30, 2
  store i32 %31, i32* %4, align 4
  %32 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %33 = load i32, i32* @REG_MODE_REC_CFG1, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @io_write(%struct.v4l2_subdev* %32, i32 %33, i32 %34)
  %36 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %37 = load i32, i32* @REG_CLK_CFG, align 4
  %38 = load i32, i32* @CLK_CFG_DIS, align 4
  %39 = call i32 @io_write(%struct.v4l2_subdev* %36, i32 %37, i32 %38)
  %40 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %41 = load i32, i32* @REG_PON_OVR_EN, align 4
  %42 = load i32, i32* @PON_DIS, align 4
  %43 = call i32 @io_write(%struct.v4l2_subdev* %40, i32 %41, i32 %42)
  %44 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %45 = load i32, i32* @REG_MODE_REC_CFG1, align 4
  %46 = call i32 @io_read(%struct.v4l2_subdev* %44, i32 %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = and i32 %47, -7
  store i32 %48, i32* %4, align 4
  %49 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %50 = load i32, i32* @REG_MODE_REC_CFG1, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @io_write(%struct.v4l2_subdev* %49, i32 %50, i32 %51)
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
