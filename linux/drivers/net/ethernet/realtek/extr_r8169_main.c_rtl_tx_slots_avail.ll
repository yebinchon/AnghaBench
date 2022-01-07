; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_tx_slots_avail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_tx_slots_avail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8169_private = type { i32, i32 }

@NUM_TX_DESC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8169_private*, i32)* @rtl_tx_slots_avail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl_tx_slots_avail(%struct.rtl8169_private* %0, i32 %1) #0 {
  %3 = alloca %struct.rtl8169_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %7 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @NUM_TX_DESC, align 4
  %10 = add i32 %8, %9
  %11 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %12 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = sub i32 %10, %13
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ugt i32 %15, %16
  %18 = zext i1 %17 to i32
  ret i32 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
