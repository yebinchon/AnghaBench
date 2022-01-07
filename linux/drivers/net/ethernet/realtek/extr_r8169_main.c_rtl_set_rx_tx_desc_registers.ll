; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_set_rx_tx_desc_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_set_rx_tx_desc_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8169_private = type { i64, i64 }

@TxDescStartAddrHigh = common dso_local global i32 0, align 4
@TxDescStartAddrLow = common dso_local global i32 0, align 4
@RxDescAddrHigh = common dso_local global i32 0, align 4
@RxDescAddrLow = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8169_private*)* @rtl_set_rx_tx_desc_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_set_rx_tx_desc_registers(%struct.rtl8169_private* %0) #0 {
  %2 = alloca %struct.rtl8169_private*, align 8
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %2, align 8
  %3 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %4 = load i32, i32* @TxDescStartAddrHigh, align 4
  %5 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %6 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = ashr i32 %8, 32
  %10 = call i32 @RTL_W32(%struct.rtl8169_private* %3, i32 %4, i32 %9)
  %11 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %12 = load i32, i32* @TxDescStartAddrLow, align 4
  %13 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %14 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = call i32 @DMA_BIT_MASK(i32 32)
  %18 = and i32 %16, %17
  %19 = call i32 @RTL_W32(%struct.rtl8169_private* %11, i32 %12, i32 %18)
  %20 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %21 = load i32, i32* @RxDescAddrHigh, align 4
  %22 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %23 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = ashr i32 %25, 32
  %27 = call i32 @RTL_W32(%struct.rtl8169_private* %20, i32 %21, i32 %26)
  %28 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %29 = load i32, i32* @RxDescAddrLow, align 4
  %30 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %31 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = call i32 @DMA_BIT_MASK(i32 32)
  %35 = and i32 %33, %34
  %36 = call i32 @RTL_W32(%struct.rtl8169_private* %28, i32 %29, i32 %35)
  ret void
}

declare dso_local i32 @RTL_W32(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
