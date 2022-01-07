; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/peak_canfd/extr_peak_pciefd_main.c_pciefd_pre_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/peak_canfd/extr_peak_pciefd_main.c_pciefd_pre_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peak_canfd_priv = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.pciefd_can = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@CAN_STATE_BUS_OFF = common dso_local global i32 0, align 4
@pciefd_irq_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@PCIEFD_DRV_NAME = common dso_local global i32 0, align 4
@CANFD_CTL_IRQ_TL_DEF = common dso_local global i32 0, align 4
@CANFD_CTL_IRQ_CL_DEF = common dso_local global i32 0, align 4
@PCIEFD_REG_CAN_RX_CTL_WRT = common dso_local global i32 0, align 4
@CANFD_CTL_RST_BIT = common dso_local global i32 0, align 4
@PCIEFD_REG_CAN_RX_CTL_CLR = common dso_local global i32 0, align 4
@CANFD_MISC_TS_RST = common dso_local global i32 0, align 4
@PCIEFD_REG_CAN_MISC = common dso_local global i32 0, align 4
@CANFD_CTL_IEN_BIT = common dso_local global i32 0, align 4
@PCIEFD_REG_CAN_RX_CTL_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.peak_canfd_priv*)* @pciefd_pre_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pciefd_pre_cmd(%struct.peak_canfd_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.peak_canfd_priv*, align 8
  %4 = alloca %struct.pciefd_can*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.peak_canfd_priv* %0, %struct.peak_canfd_priv** %3, align 8
  %7 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %3, align 8
  %8 = bitcast %struct.peak_canfd_priv* %7 to %struct.pciefd_can*
  store %struct.pciefd_can* %8, %struct.pciefd_can** %4, align 8
  %9 = load %struct.pciefd_can*, %struct.pciefd_can** %4, align 8
  %10 = getelementptr inbounds %struct.pciefd_can, %struct.pciefd_can* %9, i32 0, i32 1
  %11 = call i32 @pucan_cmd_get_opcode(i32* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %64 [
    i32 128, label %13
    i32 129, label %13
  ]

13:                                               ; preds = %1, %1
  %14 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %3, align 8
  %15 = getelementptr inbounds %struct.peak_canfd_priv, %struct.peak_canfd_priv* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @CAN_STATE_BUS_OFF, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %65

21:                                               ; preds = %13
  %22 = load %struct.pciefd_can*, %struct.pciefd_can** %4, align 8
  %23 = getelementptr inbounds %struct.pciefd_can, %struct.pciefd_can* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @pciefd_irq_handler, align 4
  %29 = load i32, i32* @IRQF_SHARED, align 4
  %30 = load i32, i32* @PCIEFD_DRV_NAME, align 4
  %31 = load %struct.pciefd_can*, %struct.pciefd_can** %4, align 8
  %32 = call i32 @request_irq(i32 %27, i32 %28, i32 %29, i32 %30, %struct.pciefd_can* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %21
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %2, align 4
  br label %66

37:                                               ; preds = %21
  %38 = load %struct.pciefd_can*, %struct.pciefd_can** %4, align 8
  %39 = call i32 @pciefd_can_setup_rx_dma(%struct.pciefd_can* %38)
  %40 = load %struct.pciefd_can*, %struct.pciefd_can** %4, align 8
  %41 = load i32, i32* @CANFD_CTL_IRQ_TL_DEF, align 4
  %42 = shl i32 %41, 8
  %43 = load i32, i32* @CANFD_CTL_IRQ_CL_DEF, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @PCIEFD_REG_CAN_RX_CTL_WRT, align 4
  %46 = call i32 @pciefd_can_writereg(%struct.pciefd_can* %40, i32 %44, i32 %45)
  %47 = load %struct.pciefd_can*, %struct.pciefd_can** %4, align 8
  %48 = load i32, i32* @CANFD_CTL_RST_BIT, align 4
  %49 = load i32, i32* @PCIEFD_REG_CAN_RX_CTL_CLR, align 4
  %50 = call i32 @pciefd_can_writereg(%struct.pciefd_can* %47, i32 %48, i32 %49)
  %51 = load %struct.pciefd_can*, %struct.pciefd_can** %4, align 8
  %52 = load i32, i32* @CANFD_MISC_TS_RST, align 4
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = load i32, i32* @PCIEFD_REG_CAN_MISC, align 4
  %57 = call i32 @pciefd_can_writereg(%struct.pciefd_can* %51, i32 %55, i32 %56)
  %58 = load %struct.pciefd_can*, %struct.pciefd_can** %4, align 8
  %59 = call i32 @pciefd_can_ack_rx_dma(%struct.pciefd_can* %58)
  %60 = load %struct.pciefd_can*, %struct.pciefd_can** %4, align 8
  %61 = load i32, i32* @CANFD_CTL_IEN_BIT, align 4
  %62 = load i32, i32* @PCIEFD_REG_CAN_RX_CTL_SET, align 4
  %63 = call i32 @pciefd_can_writereg(%struct.pciefd_can* %60, i32 %61, i32 %62)
  br label %65

64:                                               ; preds = %1
  br label %65

65:                                               ; preds = %64, %37, %20
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %35
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @pucan_cmd_get_opcode(i32*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.pciefd_can*) #1

declare dso_local i32 @pciefd_can_setup_rx_dma(%struct.pciefd_can*) #1

declare dso_local i32 @pciefd_can_writereg(%struct.pciefd_can*, i32, i32) #1

declare dso_local i32 @pciefd_can_ack_rx_dma(%struct.pciefd_can*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
