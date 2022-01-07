; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tda1997x.c_tda1997x_irq_sus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tda1997x.c_tda1997x_irq_sus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda1997x_state = type { %struct.v4l2_subdev, i32, i64, i64 }
%struct.v4l2_subdev = type { i32 }

@REG_INT_FLG_CLR_SUS = common dso_local global i32 0, align 4
@MASK_MPT = common dso_local global i32 0, align 4
@MASK_SUS_END = common dso_local global i32 0, align 4
@REG_HDMI_INFO_RST = common dso_local global i32 0, align 4
@MASK_SR_FIFO_FIFO_CTRL = common dso_local global i32 0, align 4
@REG_SUS_STATUS = common dso_local global i32 0, align 4
@MASK_SUS_STATUS = common dso_local global i32 0, align 4
@LAST_STATE_REACHED = common dso_local global i32 0, align 4
@MASK_FMT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"BAD SUS STATUS\0A\00", align 1
@debug = common dso_local global i64 0, align 8
@tda1997x_ev_fmt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tda1997x_state*, i32*)* @tda1997x_irq_sus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tda1997x_irq_sus(%struct.tda1997x_state* %0, i32* %1) #0 {
  %3 = alloca %struct.tda1997x_state*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tda1997x_state* %0, %struct.tda1997x_state** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %9 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %8, i32 0, i32 0
  store %struct.v4l2_subdev* %9, %struct.v4l2_subdev** %5, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %11 = load i32, i32* @REG_INT_FLG_CLR_SUS, align 4
  %12 = call i32 @io_read(%struct.v4l2_subdev* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %14 = load i32, i32* @REG_INT_FLG_CLR_SUS, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @io_write(%struct.v4l2_subdev* %13, i32 %14, i32 %15)
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @MASK_MPT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %2
  %22 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %23 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %28 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %27, i32 0, i32 3
  store i64 0, i64* %28, align 8
  br label %29

29:                                               ; preds = %26, %21
  br label %30

30:                                               ; preds = %29, %2
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @MASK_SUS_END, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %56

35:                                               ; preds = %30
  %36 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %37 = load i32, i32* @REG_HDMI_INFO_RST, align 4
  %38 = call i32 @io_read(%struct.v4l2_subdev* %36, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* @MASK_SR_FIFO_FIFO_CTRL, align 4
  %40 = load i32, i32* %6, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %6, align 4
  %42 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %43 = load i32, i32* @REG_HDMI_INFO_RST, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @io_write(%struct.v4l2_subdev* %42, i32 %43, i32 %44)
  %46 = load i32, i32* @MASK_SR_FIFO_FIFO_CTRL, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %6, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %6, align 4
  %50 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %51 = load i32, i32* @REG_HDMI_INFO_RST, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @io_write(%struct.v4l2_subdev* %50, i32 %51, i32 %52)
  %54 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %55 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %54, i32 0, i32 2
  store i64 0, i64* %55, align 8
  br label %56

56:                                               ; preds = %35, %30
  %57 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %58 = load i32, i32* @REG_SUS_STATUS, align 4
  %59 = call i32 @io_read(%struct.v4l2_subdev* %57, i32 %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @MASK_SUS_STATUS, align 4
  %62 = and i32 %60, %61
  %63 = load i32, i32* @LAST_STATE_REACHED, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %70, label %65

65:                                               ; preds = %56
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @MASK_MPT, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %65, %56
  %71 = load i32, i32* @MASK_FMT, align 4
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %7, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %70, %65
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @MASK_FMT, align 4
  %78 = load i32, i32* @MASK_SUS_END, align 4
  %79 = or i32 %77, %78
  %80 = and i32 %76, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %106

82:                                               ; preds = %75
  %83 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %84 = load i32, i32* @REG_SUS_STATUS, align 4
  %85 = call i32 @io_read(%struct.v4l2_subdev* %83, i32 %84)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @MASK_SUS_STATUS, align 4
  %88 = and i32 %86, %87
  %89 = load i32, i32* @LAST_STATE_REACHED, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %82
  %92 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %93 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @v4l_err(i32 %94, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %106

96:                                               ; preds = %82
  %97 = load i64, i64* @debug, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %101 = call i32 @tda1997x_detect_std(%struct.tda1997x_state* %100, i32* null)
  br label %102

102:                                              ; preds = %99, %96
  %103 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %104 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %103, i32 0, i32 0
  %105 = call i32 @v4l2_subdev_notify_event(%struct.v4l2_subdev* %104, i32* @tda1997x_ev_fmt)
  br label %106

106:                                              ; preds = %91, %102, %75
  ret void
}

declare dso_local i32 @io_read(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @io_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @v4l_err(i32, i8*) #1

declare dso_local i32 @tda1997x_detect_std(%struct.tda1997x_state*, i32*) #1

declare dso_local i32 @v4l2_subdev_notify_event(%struct.v4l2_subdev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
