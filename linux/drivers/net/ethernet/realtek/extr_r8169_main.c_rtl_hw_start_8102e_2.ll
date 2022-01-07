; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_hw_start_8102e_2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_hw_start_8102e_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8169_private = type { i32 }

@PCI_EXP_DEVCTL_READRQ_4096B = common dso_local global i32 0, align 4
@Config1 = common dso_local global i32 0, align 4
@MEMMAP = common dso_local global i32 0, align 4
@IOMAP = common dso_local global i32 0, align 4
@VPD = common dso_local global i32 0, align 4
@PMEnable = common dso_local global i32 0, align 4
@Config3 = common dso_local global i32 0, align 4
@Beacon_en = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8169_private*)* @rtl_hw_start_8102e_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_hw_start_8102e_2(%struct.rtl8169_private* %0) #0 {
  %2 = alloca %struct.rtl8169_private*, align 8
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %2, align 8
  %3 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %4 = call i32 @rtl_set_def_aspm_entry_latency(%struct.rtl8169_private* %3)
  %5 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %6 = load i32, i32* @PCI_EXP_DEVCTL_READRQ_4096B, align 4
  %7 = call i32 @rtl_tx_performance_tweak(%struct.rtl8169_private* %5, i32 %6)
  %8 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %9 = load i32, i32* @Config1, align 4
  %10 = load i32, i32* @MEMMAP, align 4
  %11 = load i32, i32* @IOMAP, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @VPD, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @PMEnable, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @RTL_W8(%struct.rtl8169_private* %8, i32 %9, i32 %16)
  %18 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %19 = load i32, i32* @Config3, align 4
  %20 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %21 = load i32, i32* @Config3, align 4
  %22 = call i32 @RTL_R8(%struct.rtl8169_private* %20, i32 %21)
  %23 = load i32, i32* @Beacon_en, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = call i32 @RTL_W8(%struct.rtl8169_private* %18, i32 %19, i32 %25)
  ret void
}

declare dso_local i32 @rtl_set_def_aspm_entry_latency(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl_tx_performance_tweak(%struct.rtl8169_private*, i32) #1

declare dso_local i32 @RTL_W8(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @RTL_R8(%struct.rtl8169_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
