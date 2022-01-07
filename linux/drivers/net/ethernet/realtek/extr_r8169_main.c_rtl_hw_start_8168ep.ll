; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_hw_start_8168ep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_hw_start_8168ep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8169_private = type { i32 }

@PCI_EXP_DEVCTL_READRQ_4096B = common dso_local global i32 0, align 4
@ERIAR_MASK_1111 = common dso_local global i32 0, align 4
@ERIAR_MASK_0011 = common dso_local global i32 0, align 4
@MISC = common dso_local global i32 0, align 4
@RXDV_GATED_EN = common dso_local global i32 0, align 4
@ERIAR_MASK_0001 = common dso_local global i32 0, align 4
@DLLPR = common dso_local global i32 0, align 4
@TX_10M_PS_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8169_private*)* @rtl_hw_start_8168ep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_hw_start_8168ep(%struct.rtl8169_private* %0) #0 {
  %2 = alloca %struct.rtl8169_private*, align 8
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %2, align 8
  %3 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %4 = call i32 @rtl8168ep_stop_cmac(%struct.rtl8169_private* %3)
  %5 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %6 = call i32 @rtl_set_fifo_size(%struct.rtl8169_private* %5, i32 8, i32 16, i32 2, i32 6)
  %7 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %8 = call i32 @rtl8168g_set_pause_thresholds(%struct.rtl8169_private* %7, i32 47, i32 95)
  %9 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %10 = call i32 @rtl_set_def_aspm_entry_latency(%struct.rtl8169_private* %9)
  %11 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %12 = load i32, i32* @PCI_EXP_DEVCTL_READRQ_4096B, align 4
  %13 = call i32 @rtl_tx_performance_tweak(%struct.rtl8169_private* %11, i32 %12)
  %14 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %15 = call i32 @rtl_reset_packet_filter(%struct.rtl8169_private* %14)
  %16 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %17 = load i32, i32* @ERIAR_MASK_1111, align 4
  %18 = call i32 @rtl_eri_set_bits(%struct.rtl8169_private* %16, i32 212, i32 %17, i32 8064)
  %19 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %20 = load i32, i32* @ERIAR_MASK_0011, align 4
  %21 = call i32 @rtl_eri_write(%struct.rtl8169_private* %19, i32 1520, i32 %20, i32 20359)
  %22 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %23 = load i32, i32* @MISC, align 4
  %24 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %25 = load i32, i32* @MISC, align 4
  %26 = call i32 @RTL_R32(%struct.rtl8169_private* %24, i32 %25)
  %27 = load i32, i32* @RXDV_GATED_EN, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  %30 = call i32 @RTL_W32(%struct.rtl8169_private* %22, i32 %23, i32 %29)
  %31 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %32 = load i32, i32* @ERIAR_MASK_0011, align 4
  %33 = call i32 @rtl_eri_write(%struct.rtl8169_private* %31, i32 192, i32 %32, i32 0)
  %34 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %35 = load i32, i32* @ERIAR_MASK_0011, align 4
  %36 = call i32 @rtl_eri_write(%struct.rtl8169_private* %34, i32 184, i32 %35, i32 0)
  %37 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %38 = call i32 @rtl8168_config_eee_mac(%struct.rtl8169_private* %37)
  %39 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %40 = load i32, i32* @ERIAR_MASK_0001, align 4
  %41 = call i32 @rtl_w0w1_eri(%struct.rtl8169_private* %39, i32 764, i32 %40, i32 1, i32 6)
  %42 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %43 = load i32, i32* @DLLPR, align 4
  %44 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %45 = load i32, i32* @DLLPR, align 4
  %46 = call i32 @RTL_R8(%struct.rtl8169_private* %44, i32 %45)
  %47 = load i32, i32* @TX_10M_PS_EN, align 4
  %48 = xor i32 %47, -1
  %49 = and i32 %46, %48
  %50 = call i32 @RTL_W8(%struct.rtl8169_private* %42, i32 %43, i32 %49)
  %51 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %52 = call i32 @rtl_pcie_state_l2l3_disable(%struct.rtl8169_private* %51)
  ret void
}

declare dso_local i32 @rtl8168ep_stop_cmac(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl_set_fifo_size(%struct.rtl8169_private*, i32, i32, i32, i32) #1

declare dso_local i32 @rtl8168g_set_pause_thresholds(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @rtl_set_def_aspm_entry_latency(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl_tx_performance_tweak(%struct.rtl8169_private*, i32) #1

declare dso_local i32 @rtl_reset_packet_filter(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl_eri_set_bits(%struct.rtl8169_private*, i32, i32, i32) #1

declare dso_local i32 @rtl_eri_write(%struct.rtl8169_private*, i32, i32, i32) #1

declare dso_local i32 @RTL_W32(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @RTL_R32(%struct.rtl8169_private*, i32) #1

declare dso_local i32 @rtl8168_config_eee_mac(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl_w0w1_eri(%struct.rtl8169_private*, i32, i32, i32, i32) #1

declare dso_local i32 @RTL_W8(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @RTL_R8(%struct.rtl8169_private*, i32) #1

declare dso_local i32 @rtl_pcie_state_l2l3_disable(%struct.rtl8169_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
