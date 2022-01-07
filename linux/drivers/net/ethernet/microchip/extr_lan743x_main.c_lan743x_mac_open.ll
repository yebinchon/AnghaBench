; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_mac_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_mac_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan743x_adapter = type { i32 }

@MAC_RX = common dso_local global i32 0, align 4
@MAC_RX_RXEN_ = common dso_local global i32 0, align 4
@MAC_TX = common dso_local global i32 0, align 4
@MAC_TX_TXEN_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lan743x_adapter*)* @lan743x_mac_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan743x_mac_open(%struct.lan743x_adapter* %0) #0 {
  %2 = alloca %struct.lan743x_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.lan743x_adapter* %0, %struct.lan743x_adapter** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %2, align 8
  %6 = load i32, i32* @MAC_RX, align 4
  %7 = call i32 @lan743x_csr_read(%struct.lan743x_adapter* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %2, align 8
  %9 = load i32, i32* @MAC_RX, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @MAC_RX_RXEN_, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %8, i32 %9, i32 %12)
  %14 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %2, align 8
  %15 = load i32, i32* @MAC_TX, align 4
  %16 = call i32 @lan743x_csr_read(%struct.lan743x_adapter* %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %2, align 8
  %18 = load i32, i32* @MAC_TX, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @MAC_TX_TXEN_, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %17, i32 %18, i32 %21)
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @lan743x_csr_read(%struct.lan743x_adapter*, i32) #1

declare dso_local i32 @lan743x_csr_write(%struct.lan743x_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
