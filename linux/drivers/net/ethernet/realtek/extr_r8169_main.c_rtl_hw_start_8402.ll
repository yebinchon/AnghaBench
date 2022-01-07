; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_hw_start_8402.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_hw_start_8402.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ephy_info = type { i32, i32, i32 }
%struct.rtl8169_private = type { i32 }

@rtl_hw_start_8402.e_info_8402 = internal constant [2 x %struct.ephy_info] [%struct.ephy_info { i32 25, i32 65535, i32 65380 }, %struct.ephy_info { i32 30, i32 0, i32 16384 }], align 16
@FuncEvent = common dso_local global i32 0, align 4
@MCU = common dso_local global i32 0, align 4
@NOW_IS_OOB = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL_READRQ_4096B = common dso_local global i32 0, align 4
@ERIAR_MASK_0011 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8169_private*)* @rtl_hw_start_8402 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_hw_start_8402(%struct.rtl8169_private* %0) #0 {
  %2 = alloca %struct.rtl8169_private*, align 8
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %2, align 8
  %3 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %4 = call i32 @rtl_set_def_aspm_entry_latency(%struct.rtl8169_private* %3)
  %5 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %6 = load i32, i32* @FuncEvent, align 4
  %7 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %8 = load i32, i32* @FuncEvent, align 4
  %9 = call i32 @RTL_R32(%struct.rtl8169_private* %7, i32 %8)
  %10 = or i32 %9, 10240
  %11 = call i32 @RTL_W32(%struct.rtl8169_private* %5, i32 %6, i32 %10)
  %12 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %13 = load i32, i32* @MCU, align 4
  %14 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %15 = load i32, i32* @MCU, align 4
  %16 = call i32 @RTL_R8(%struct.rtl8169_private* %14, i32 %15)
  %17 = load i32, i32* @NOW_IS_OOB, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  %20 = call i32 @RTL_W8(%struct.rtl8169_private* %12, i32 %13, i32 %19)
  %21 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %22 = call i32 @rtl_ephy_init(%struct.rtl8169_private* %21, %struct.ephy_info* getelementptr inbounds ([2 x %struct.ephy_info], [2 x %struct.ephy_info]* @rtl_hw_start_8402.e_info_8402, i64 0, i64 0))
  %23 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %24 = load i32, i32* @PCI_EXP_DEVCTL_READRQ_4096B, align 4
  %25 = call i32 @rtl_tx_performance_tweak(%struct.rtl8169_private* %23, i32 %24)
  %26 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %27 = call i32 @rtl_set_fifo_size(%struct.rtl8169_private* %26, i32 0, i32 0, i32 2, i32 6)
  %28 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %29 = call i32 @rtl_reset_packet_filter(%struct.rtl8169_private* %28)
  %30 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %31 = load i32, i32* @ERIAR_MASK_0011, align 4
  %32 = call i32 @rtl_eri_write(%struct.rtl8169_private* %30, i32 192, i32 %31, i32 0)
  %33 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %34 = load i32, i32* @ERIAR_MASK_0011, align 4
  %35 = call i32 @rtl_eri_write(%struct.rtl8169_private* %33, i32 184, i32 %34, i32 0)
  %36 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %37 = load i32, i32* @ERIAR_MASK_0011, align 4
  %38 = call i32 @rtl_w0w1_eri(%struct.rtl8169_private* %36, i32 212, i32 %37, i32 3584, i32 65280)
  %39 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %40 = call i32 @rtl_pcie_state_l2l3_disable(%struct.rtl8169_private* %39)
  ret void
}

declare dso_local i32 @rtl_set_def_aspm_entry_latency(%struct.rtl8169_private*) #1

declare dso_local i32 @RTL_W32(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @RTL_R32(%struct.rtl8169_private*, i32) #1

declare dso_local i32 @RTL_W8(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @RTL_R8(%struct.rtl8169_private*, i32) #1

declare dso_local i32 @rtl_ephy_init(%struct.rtl8169_private*, %struct.ephy_info*) #1

declare dso_local i32 @rtl_tx_performance_tweak(%struct.rtl8169_private*, i32) #1

declare dso_local i32 @rtl_set_fifo_size(%struct.rtl8169_private*, i32, i32, i32, i32) #1

declare dso_local i32 @rtl_reset_packet_filter(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl_eri_write(%struct.rtl8169_private*, i32, i32, i32) #1

declare dso_local i32 @rtl_w0w1_eri(%struct.rtl8169_private*, i32, i32, i32, i32) #1

declare dso_local i32 @rtl_pcie_state_l2l3_disable(%struct.rtl8169_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
