; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23888-ir.c_cx23888_ir_rx_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23888-ir.c_cx23888_ir_rx_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.cx23888_ir_state = type { i32, %struct.TYPE_2__, %struct.cx23885_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.cx23885_dev = type { i32 }

@CNTRL_EDG_NONE = common dso_local global i32 0, align 4
@CX23888_IR_RXCLK_REG = common dso_local global i32 0, align 4
@RXCLK_RCD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @cx23888_ir_rx_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx23888_ir_rx_shutdown(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  %3 = alloca %struct.cx23888_ir_state*, align 8
  %4 = alloca %struct.cx23885_dev*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %2, align 8
  %5 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %6 = call %struct.cx23888_ir_state* @to_state(%struct.v4l2_subdev* %5)
  store %struct.cx23888_ir_state* %6, %struct.cx23888_ir_state** %3, align 8
  %7 = load %struct.cx23888_ir_state*, %struct.cx23888_ir_state** %3, align 8
  %8 = getelementptr inbounds %struct.cx23888_ir_state, %struct.cx23888_ir_state* %7, i32 0, i32 2
  %9 = load %struct.cx23885_dev*, %struct.cx23885_dev** %8, align 8
  store %struct.cx23885_dev* %9, %struct.cx23885_dev** %4, align 8
  %10 = load %struct.cx23888_ir_state*, %struct.cx23888_ir_state** %3, align 8
  %11 = getelementptr inbounds %struct.cx23888_ir_state, %struct.cx23888_ir_state* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %14 = call i32 @irqenable_rx(%struct.cx23885_dev* %13, i32 0)
  %15 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %16 = call i32 @control_rx_enable(%struct.cx23885_dev* %15, i32 0)
  %17 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %18 = call i32 @control_rx_demodulation_enable(%struct.cx23885_dev* %17, i32 0)
  %19 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %20 = load i32, i32* @CNTRL_EDG_NONE, align 4
  %21 = call i32 @control_rx_s_edge_detection(%struct.cx23885_dev* %19, i32 %20)
  %22 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %23 = call i32 @filter_rx_s_min_width(%struct.cx23885_dev* %22, i32 0)
  %24 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %25 = load i32, i32* @CX23888_IR_RXCLK_REG, align 4
  %26 = load i32, i32* @RXCLK_RCD, align 4
  %27 = call i32 @cx23888_ir_write4(%struct.cx23885_dev* %24, i32 %25, i32 %26)
  %28 = load %struct.cx23888_ir_state*, %struct.cx23888_ir_state** %3, align 8
  %29 = getelementptr inbounds %struct.cx23888_ir_state, %struct.cx23888_ir_state* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  %31 = load %struct.cx23888_ir_state*, %struct.cx23888_ir_state** %3, align 8
  %32 = getelementptr inbounds %struct.cx23888_ir_state, %struct.cx23888_ir_state* %31, i32 0, i32 0
  %33 = call i32 @mutex_unlock(i32* %32)
  ret i32 0
}

declare dso_local %struct.cx23888_ir_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @irqenable_rx(%struct.cx23885_dev*, i32) #1

declare dso_local i32 @control_rx_enable(%struct.cx23885_dev*, i32) #1

declare dso_local i32 @control_rx_demodulation_enable(%struct.cx23885_dev*, i32) #1

declare dso_local i32 @control_rx_s_edge_detection(%struct.cx23885_dev*, i32) #1

declare dso_local i32 @filter_rx_s_min_width(%struct.cx23885_dev*, i32) #1

declare dso_local i32 @cx23888_ir_write4(%struct.cx23885_dev*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
