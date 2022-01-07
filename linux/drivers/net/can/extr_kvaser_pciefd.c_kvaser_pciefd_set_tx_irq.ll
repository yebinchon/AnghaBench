; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_kvaser_pciefd.c_kvaser_pciefd_set_tx_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_kvaser_pciefd.c_kvaser_pciefd_set_tx_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_pciefd_can = type { i64 }

@KVASER_PCIEFD_KCAN_IRQ_TE = common dso_local global i32 0, align 4
@KVASER_PCIEFD_KCAN_IRQ_ROF = common dso_local global i32 0, align 4
@KVASER_PCIEFD_KCAN_IRQ_TOF = common dso_local global i32 0, align 4
@KVASER_PCIEFD_KCAN_IRQ_ABD = common dso_local global i32 0, align 4
@KVASER_PCIEFD_KCAN_IRQ_TAE = common dso_local global i32 0, align 4
@KVASER_PCIEFD_KCAN_IRQ_TAL = common dso_local global i32 0, align 4
@KVASER_PCIEFD_KCAN_IRQ_FDIC = common dso_local global i32 0, align 4
@KVASER_PCIEFD_KCAN_IRQ_BPP = common dso_local global i32 0, align 4
@KVASER_PCIEFD_KCAN_IRQ_TAR = common dso_local global i32 0, align 4
@KVASER_PCIEFD_KCAN_IRQ_TFD = common dso_local global i32 0, align 4
@KVASER_PCIEFD_KCAN_IEN_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvaser_pciefd_can*)* @kvaser_pciefd_set_tx_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvaser_pciefd_set_tx_irq(%struct.kvaser_pciefd_can* %0) #0 {
  %2 = alloca %struct.kvaser_pciefd_can*, align 8
  %3 = alloca i32, align 4
  store %struct.kvaser_pciefd_can* %0, %struct.kvaser_pciefd_can** %2, align 8
  %4 = load i32, i32* @KVASER_PCIEFD_KCAN_IRQ_TE, align 4
  %5 = load i32, i32* @KVASER_PCIEFD_KCAN_IRQ_ROF, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @KVASER_PCIEFD_KCAN_IRQ_TOF, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @KVASER_PCIEFD_KCAN_IRQ_ABD, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @KVASER_PCIEFD_KCAN_IRQ_TAE, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @KVASER_PCIEFD_KCAN_IRQ_TAL, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @KVASER_PCIEFD_KCAN_IRQ_FDIC, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @KVASER_PCIEFD_KCAN_IRQ_BPP, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @KVASER_PCIEFD_KCAN_IRQ_TAR, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @KVASER_PCIEFD_KCAN_IRQ_TFD, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %2, align 8
  %25 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @KVASER_PCIEFD_KCAN_IEN_REG, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @iowrite32(i32 %23, i64 %28)
  ret i32 0
}

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
