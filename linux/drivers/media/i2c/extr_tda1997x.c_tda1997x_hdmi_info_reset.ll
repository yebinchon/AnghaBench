; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tda1997x.c_tda1997x_hdmi_info_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tda1997x.c_tda1997x_hdmi_info_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }

@REG_HDMI_INFO_RST = common dso_local global i32 0, align 4
@RESET_IF = common dso_local global i32 0, align 4
@REG_INT_FLG_CLR_MODE = common dso_local global i32 0, align 4
@REG_RATE_CTRL = common dso_local global i32 0, align 4
@RATE_REFTIM_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32, i32)* @tda1997x_hdmi_info_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda1997x_hdmi_info_reset(%struct.v4l2_subdev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %9 = load i32, i32* @REG_HDMI_INFO_RST, align 4
  %10 = call i32 @io_read(%struct.v4l2_subdev* %8, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %12 = load i32, i32* @REG_HDMI_INFO_RST, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @io_write(%struct.v4l2_subdev* %11, i32 %12, i32 %13)
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @RESET_IF, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %3
  %20 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %21 = load i32, i32* @REG_INT_FLG_CLR_MODE, align 4
  %22 = call i32 @io_read(%struct.v4l2_subdev* %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %24 = load i32, i32* @REG_INT_FLG_CLR_MODE, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @io_write(%struct.v4l2_subdev* %23, i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %19, %3
  %28 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %29 = load i32, i32* @REG_RATE_CTRL, align 4
  %30 = call i32 @io_read(%struct.v4l2_subdev* %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* @RATE_REFTIM_ENABLE, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %7, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %27
  %38 = load i32, i32* @RATE_REFTIM_ENABLE, align 4
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %37, %27
  %42 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %43 = load i32, i32* @REG_RATE_CTRL, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @io_write(%struct.v4l2_subdev* %42, i32 %43, i32 %44)
  store i32 %45, i32* %7, align 4
  ret i32 0
}

declare dso_local i32 @io_read(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @io_write(%struct.v4l2_subdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
