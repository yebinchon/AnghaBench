; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pasemi/extr_pasemi_mac.c_pasemi_mac_restart_rx_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pasemi/extr_pasemi_mac.c_pasemi_mac_restart_rx_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pasemi_mac = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.pasemi_mac_rxring = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@PAS_STATUS_PCNT_M = common dso_local global i32 0, align 4
@PAS_IOB_DMA_RXCH_RESET_PINTC = common dso_local global i32 0, align 4
@PAS_STATUS_TIMER = common dso_local global i32 0, align 4
@PAS_IOB_DMA_RXCH_RESET_TINTC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pasemi_mac*)* @pasemi_mac_restart_rx_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pasemi_mac_restart_rx_intr(%struct.pasemi_mac* %0) #0 {
  %2 = alloca %struct.pasemi_mac*, align 8
  %3 = alloca %struct.pasemi_mac_rxring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pasemi_mac* %0, %struct.pasemi_mac** %2, align 8
  %6 = load %struct.pasemi_mac*, %struct.pasemi_mac** %2, align 8
  %7 = call %struct.pasemi_mac_rxring* @rx_ring(%struct.pasemi_mac* %6)
  store %struct.pasemi_mac_rxring* %7, %struct.pasemi_mac_rxring** %3, align 8
  %8 = load %struct.pasemi_mac_rxring*, %struct.pasemi_mac_rxring** %3, align 8
  %9 = getelementptr inbounds %struct.pasemi_mac_rxring, %struct.pasemi_mac_rxring* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @PAS_STATUS_PCNT_M, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @PAS_IOB_DMA_RXCH_RESET_PCNT(i32 %15)
  %17 = load i32, i32* @PAS_IOB_DMA_RXCH_RESET_PINTC, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %4, align 4
  %19 = load %struct.pasemi_mac_rxring*, %struct.pasemi_mac_rxring** %3, align 8
  %20 = getelementptr inbounds %struct.pasemi_mac_rxring, %struct.pasemi_mac_rxring* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @PAS_STATUS_TIMER, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  %28 = load i32, i32* @PAS_IOB_DMA_RXCH_RESET_TINTC, align 4
  %29 = load i32, i32* %4, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %27, %1
  %32 = load %struct.pasemi_mac*, %struct.pasemi_mac** %2, align 8
  %33 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @PAS_IOB_DMA_RXCH_RESET(i32 %37)
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @write_iob_reg(i32 %38, i32 %39)
  ret void
}

declare dso_local %struct.pasemi_mac_rxring* @rx_ring(%struct.pasemi_mac*) #1

declare dso_local i32 @PAS_IOB_DMA_RXCH_RESET_PCNT(i32) #1

declare dso_local i32 @write_iob_reg(i32, i32) #1

declare dso_local i32 @PAS_IOB_DMA_RXCH_RESET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
