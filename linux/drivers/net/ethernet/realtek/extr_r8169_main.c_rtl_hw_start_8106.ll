; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_hw_start_8106.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_hw_start_8106.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8169_private = type { i32 }

@FuncEvent = common dso_local global i32 0, align 4
@MISC = common dso_local global i32 0, align 4
@DISABLE_LAN_EN = common dso_local global i32 0, align 4
@EARLY_TALLY_EN = common dso_local global i32 0, align 4
@MCU = common dso_local global i32 0, align 4
@EN_NDP = common dso_local global i32 0, align 4
@EN_OOB_RESET = common dso_local global i32 0, align 4
@DLLPR = common dso_local global i32 0, align 4
@PFM_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8169_private*)* @rtl_hw_start_8106 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_hw_start_8106(%struct.rtl8169_private* %0) #0 {
  %2 = alloca %struct.rtl8169_private*, align 8
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %2, align 8
  %3 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %4 = call i32 @rtl_hw_aspm_clkreq_enable(%struct.rtl8169_private* %3, i32 0)
  %5 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %6 = load i32, i32* @FuncEvent, align 4
  %7 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %8 = load i32, i32* @FuncEvent, align 4
  %9 = call i32 @RTL_R32(%struct.rtl8169_private* %7, i32 %8)
  %10 = or i32 %9, 10240
  %11 = call i32 @RTL_W32(%struct.rtl8169_private* %5, i32 %6, i32 %10)
  %12 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %13 = load i32, i32* @MISC, align 4
  %14 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %15 = load i32, i32* @MISC, align 4
  %16 = call i32 @RTL_R32(%struct.rtl8169_private* %14, i32 %15)
  %17 = load i32, i32* @DISABLE_LAN_EN, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @EARLY_TALLY_EN, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  %22 = call i32 @RTL_W32(%struct.rtl8169_private* %12, i32 %13, i32 %21)
  %23 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %24 = load i32, i32* @MCU, align 4
  %25 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %26 = load i32, i32* @MCU, align 4
  %27 = call i32 @RTL_R8(%struct.rtl8169_private* %25, i32 %26)
  %28 = load i32, i32* @EN_NDP, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @EN_OOB_RESET, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @RTL_W8(%struct.rtl8169_private* %23, i32 %24, i32 %31)
  %33 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %34 = load i32, i32* @DLLPR, align 4
  %35 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %36 = load i32, i32* @DLLPR, align 4
  %37 = call i32 @RTL_R8(%struct.rtl8169_private* %35, i32 %36)
  %38 = load i32, i32* @PFM_EN, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %37, %39
  %41 = call i32 @RTL_W8(%struct.rtl8169_private* %33, i32 %34, i32 %40)
  %42 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %43 = call i32 @rtl_pcie_state_l2l3_disable(%struct.rtl8169_private* %42)
  %44 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %45 = call i32 @rtl_hw_aspm_clkreq_enable(%struct.rtl8169_private* %44, i32 1)
  ret void
}

declare dso_local i32 @rtl_hw_aspm_clkreq_enable(%struct.rtl8169_private*, i32) #1

declare dso_local i32 @RTL_W32(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @RTL_R32(%struct.rtl8169_private*, i32) #1

declare dso_local i32 @RTL_W8(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @RTL_R8(%struct.rtl8169_private*, i32) #1

declare dso_local i32 @rtl_pcie_state_l2l3_disable(%struct.rtl8169_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
