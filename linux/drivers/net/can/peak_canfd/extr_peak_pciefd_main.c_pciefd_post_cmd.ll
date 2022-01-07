; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/peak_canfd/extr_peak_pciefd_main.c_pciefd_post_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/peak_canfd/extr_peak_pciefd_main.c_pciefd_post_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peak_canfd_priv = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.pciefd_can = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@CAN_STATE_STOPPED = common dso_local global i32 0, align 4
@CANFD_CTL_IEN_BIT = common dso_local global i32 0, align 4
@PCIEFD_REG_CAN_RX_CTL_CLR = common dso_local global i32 0, align 4
@PCIEFD_REG_SYS_VER1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.peak_canfd_priv*)* @pciefd_post_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pciefd_post_cmd(%struct.peak_canfd_priv* %0) #0 {
  %2 = alloca %struct.peak_canfd_priv*, align 8
  %3 = alloca %struct.pciefd_can*, align 8
  %4 = alloca i32, align 4
  store %struct.peak_canfd_priv* %0, %struct.peak_canfd_priv** %2, align 8
  %5 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %2, align 8
  %6 = bitcast %struct.peak_canfd_priv* %5 to %struct.pciefd_can*
  store %struct.pciefd_can* %6, %struct.pciefd_can** %3, align 8
  %7 = load %struct.pciefd_can*, %struct.pciefd_can** %3, align 8
  %8 = getelementptr inbounds %struct.pciefd_can, %struct.pciefd_can* %7, i32 0, i32 2
  %9 = call i32 @pucan_cmd_get_opcode(i32* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %45 [
    i32 128, label %11
  ]

11:                                               ; preds = %1
  %12 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %2, align 8
  %13 = getelementptr inbounds %struct.peak_canfd_priv, %struct.peak_canfd_priv* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @CAN_STATE_STOPPED, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  br label %45

19:                                               ; preds = %11
  %20 = load %struct.pciefd_can*, %struct.pciefd_can** %3, align 8
  %21 = load i32, i32* @CANFD_CTL_IEN_BIT, align 4
  %22 = load i32, i32* @PCIEFD_REG_CAN_RX_CTL_CLR, align 4
  %23 = call i32 @pciefd_can_writereg(%struct.pciefd_can* %20, i32 %21, i32 %22)
  %24 = load %struct.pciefd_can*, %struct.pciefd_can** %3, align 8
  %25 = call i32 @pciefd_can_clear_tx_dma(%struct.pciefd_can* %24)
  %26 = load %struct.pciefd_can*, %struct.pciefd_can** %3, align 8
  %27 = call i32 @pciefd_can_clear_rx_dma(%struct.pciefd_can* %26)
  %28 = load %struct.pciefd_can*, %struct.pciefd_can** %3, align 8
  %29 = getelementptr inbounds %struct.pciefd_can, %struct.pciefd_can* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @PCIEFD_REG_SYS_VER1, align 4
  %32 = call i32 @pciefd_sys_readreg(i32 %30, i32 %31)
  %33 = load %struct.pciefd_can*, %struct.pciefd_can** %3, align 8
  %34 = getelementptr inbounds %struct.pciefd_can, %struct.pciefd_can* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.pciefd_can*, %struct.pciefd_can** %3, align 8
  %40 = call i32 @free_irq(i32 %38, %struct.pciefd_can* %39)
  %41 = load i32, i32* @CAN_STATE_STOPPED, align 4
  %42 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %2, align 8
  %43 = getelementptr inbounds %struct.peak_canfd_priv, %struct.peak_canfd_priv* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  br label %45

45:                                               ; preds = %1, %19, %18
  ret i32 0
}

declare dso_local i32 @pucan_cmd_get_opcode(i32*) #1

declare dso_local i32 @pciefd_can_writereg(%struct.pciefd_can*, i32, i32) #1

declare dso_local i32 @pciefd_can_clear_tx_dma(%struct.pciefd_can*) #1

declare dso_local i32 @pciefd_can_clear_rx_dma(%struct.pciefd_can*) #1

declare dso_local i32 @pciefd_sys_readreg(i32, i32) #1

declare dso_local i32 @free_irq(i32, %struct.pciefd_can*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
