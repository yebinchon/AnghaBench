; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_hw_start_8105e_1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_hw_start_8105e_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ephy_info = type { i32, i32, i32 }
%struct.rtl8169_private = type { i32 }

@rtl_hw_start_8105e_1.e_info_8105e_1 = internal constant [8 x %struct.ephy_info] [%struct.ephy_info { i32 7, i32 0, i32 16384 }, %struct.ephy_info { i32 25, i32 0, i32 512 }, %struct.ephy_info { i32 25, i32 0, i32 32 }, %struct.ephy_info { i32 30, i32 0, i32 8192 }, %struct.ephy_info { i32 3, i32 0, i32 1 }, %struct.ephy_info { i32 25, i32 0, i32 256 }, %struct.ephy_info { i32 25, i32 0, i32 4 }, %struct.ephy_info { i32 10, i32 0, i32 32 }], align 16
@FuncEvent = common dso_local global i32 0, align 4
@MCU = common dso_local global i32 0, align 4
@EN_NDP = common dso_local global i32 0, align 4
@EN_OOB_RESET = common dso_local global i32 0, align 4
@DLLPR = common dso_local global i32 0, align 4
@PFM_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8169_private*)* @rtl_hw_start_8105e_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_hw_start_8105e_1(%struct.rtl8169_private* %0) #0 {
  %2 = alloca %struct.rtl8169_private*, align 8
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %2, align 8
  %3 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %4 = load i32, i32* @FuncEvent, align 4
  %5 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %6 = load i32, i32* @FuncEvent, align 4
  %7 = call i32 @RTL_R32(%struct.rtl8169_private* %5, i32 %6)
  %8 = or i32 %7, 10240
  %9 = call i32 @RTL_W32(%struct.rtl8169_private* %3, i32 %4, i32 %8)
  %10 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %11 = load i32, i32* @FuncEvent, align 4
  %12 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %13 = load i32, i32* @FuncEvent, align 4
  %14 = call i32 @RTL_R32(%struct.rtl8169_private* %12, i32 %13)
  %15 = and i32 %14, -65537
  %16 = call i32 @RTL_W32(%struct.rtl8169_private* %10, i32 %11, i32 %15)
  %17 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %18 = load i32, i32* @MCU, align 4
  %19 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %20 = load i32, i32* @MCU, align 4
  %21 = call i32 @RTL_R8(%struct.rtl8169_private* %19, i32 %20)
  %22 = load i32, i32* @EN_NDP, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @EN_OOB_RESET, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @RTL_W8(%struct.rtl8169_private* %17, i32 %18, i32 %25)
  %27 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %28 = load i32, i32* @DLLPR, align 4
  %29 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %30 = load i32, i32* @DLLPR, align 4
  %31 = call i32 @RTL_R8(%struct.rtl8169_private* %29, i32 %30)
  %32 = load i32, i32* @PFM_EN, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @RTL_W8(%struct.rtl8169_private* %27, i32 %28, i32 %33)
  %35 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %36 = call i32 @rtl_ephy_init(%struct.rtl8169_private* %35, %struct.ephy_info* getelementptr inbounds ([8 x %struct.ephy_info], [8 x %struct.ephy_info]* @rtl_hw_start_8105e_1.e_info_8105e_1, i64 0, i64 0))
  %37 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %38 = call i32 @rtl_pcie_state_l2l3_disable(%struct.rtl8169_private* %37)
  ret void
}

declare dso_local i32 @RTL_W32(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @RTL_R32(%struct.rtl8169_private*, i32) #1

declare dso_local i32 @RTL_W8(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @RTL_R8(%struct.rtl8169_private*, i32) #1

declare dso_local i32 @rtl_ephy_init(%struct.rtl8169_private*, %struct.ephy_info*) #1

declare dso_local i32 @rtl_pcie_state_l2l3_disable(%struct.rtl8169_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
