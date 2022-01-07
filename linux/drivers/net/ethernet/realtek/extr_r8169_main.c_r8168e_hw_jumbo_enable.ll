; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_r8168e_hw_jumbo_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_r8168e_hw_jumbo_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8169_private = type { i32 }

@MaxTxPacketSize = common dso_local global i32 0, align 4
@Config3 = common dso_local global i32 0, align 4
@Jumbo_En0 = common dso_local global i32 0, align 4
@Config4 = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL_READRQ_512B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8169_private*)* @r8168e_hw_jumbo_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r8168e_hw_jumbo_enable(%struct.rtl8169_private* %0) #0 {
  %2 = alloca %struct.rtl8169_private*, align 8
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %2, align 8
  %3 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %4 = load i32, i32* @MaxTxPacketSize, align 4
  %5 = call i32 @RTL_W8(%struct.rtl8169_private* %3, i32 %4, i32 63)
  %6 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %7 = load i32, i32* @Config3, align 4
  %8 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %9 = load i32, i32* @Config3, align 4
  %10 = call i32 @RTL_R8(%struct.rtl8169_private* %8, i32 %9)
  %11 = load i32, i32* @Jumbo_En0, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @RTL_W8(%struct.rtl8169_private* %6, i32 %7, i32 %12)
  %14 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %15 = load i32, i32* @Config4, align 4
  %16 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %17 = load i32, i32* @Config4, align 4
  %18 = call i32 @RTL_R8(%struct.rtl8169_private* %16, i32 %17)
  %19 = or i32 %18, 1
  %20 = call i32 @RTL_W8(%struct.rtl8169_private* %14, i32 %15, i32 %19)
  %21 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %22 = load i32, i32* @PCI_EXP_DEVCTL_READRQ_512B, align 4
  %23 = call i32 @rtl_tx_performance_tweak(%struct.rtl8169_private* %21, i32 %22)
  ret void
}

declare dso_local i32 @RTL_W8(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @RTL_R8(%struct.rtl8169_private*, i32) #1

declare dso_local i32 @rtl_tx_performance_tweak(%struct.rtl8169_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
