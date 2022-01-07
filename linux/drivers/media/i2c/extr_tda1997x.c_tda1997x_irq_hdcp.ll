; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tda1997x.c_tda1997x_irq_hdcp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tda1997x.c_tda1997x_irq_hdcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda1997x_state = type { i64, %struct.v4l2_subdev }
%struct.v4l2_subdev = type { i32 }

@REG_INT_FLG_CLR_HDCP = common dso_local global i32 0, align 4
@MASK_HDCP_MTP = common dso_local global i32 0, align 4
@MASK_STATE_C5 = common dso_local global i32 0, align 4
@REG_INT_MASK_TOP = common dso_local global i32 0, align 4
@INTERRUPT_AUDIO = common dso_local global i32 0, align 4
@INTERRUPT_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tda1997x_state*, i32*)* @tda1997x_irq_hdcp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tda1997x_irq_hdcp(%struct.tda1997x_state* %0, i32* %1) #0 {
  %3 = alloca %struct.tda1997x_state*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tda1997x_state* %0, %struct.tda1997x_state** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %9 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %8, i32 0, i32 1
  store %struct.v4l2_subdev* %9, %struct.v4l2_subdev** %5, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %11 = load i32, i32* @REG_INT_FLG_CLR_HDCP, align 4
  %12 = call i32 @io_read(%struct.v4l2_subdev* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %14 = load i32, i32* @REG_INT_FLG_CLR_HDCP, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @io_write(%struct.v4l2_subdev* %13, i32 %14, i32 %15)
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @MASK_HDCP_MTP, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %23 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  br label %24

24:                                               ; preds = %21, %2
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @MASK_STATE_C5, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %24
  %30 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %31 = load i32, i32* @REG_INT_MASK_TOP, align 4
  %32 = call i32 @io_read(%struct.v4l2_subdev* %30, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* @INTERRUPT_AUDIO, align 4
  %34 = load i32, i32* @INTERRUPT_INFO, align 4
  %35 = or i32 %33, %34
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %6, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %6, align 4
  %39 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %40 = load i32, i32* @REG_INT_MASK_TOP, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @io_write(%struct.v4l2_subdev* %39, i32 %40, i32 %41)
  %43 = load i32, i32* @INTERRUPT_AUDIO, align 4
  %44 = load i32, i32* @INTERRUPT_INFO, align 4
  %45 = or i32 %43, %44
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %45
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %29, %24
  ret void
}

declare dso_local i32 @io_read(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @io_write(%struct.v4l2_subdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
