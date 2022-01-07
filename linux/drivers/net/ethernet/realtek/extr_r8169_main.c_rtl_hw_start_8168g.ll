; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_hw_start_8168g.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_hw_start_8168g.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8169_private = type { i32 }

@PCI_EXP_DEVCTL_READRQ_4096B = common dso_local global i32 0, align 4
@ERIAR_MASK_0011 = common dso_local global i32 0, align 4
@MISC = common dso_local global i32 0, align 4
@RXDV_GATED_EN = common dso_local global i32 0, align 4
@ERIAR_MASK_0001 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8169_private*)* @rtl_hw_start_8168g to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_hw_start_8168g(%struct.rtl8169_private* %0) #0 {
  %2 = alloca %struct.rtl8169_private*, align 8
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %2, align 8
  %3 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %4 = call i32 @rtl_set_fifo_size(%struct.rtl8169_private* %3, i32 8, i32 16, i32 2, i32 6)
  %5 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %6 = call i32 @rtl8168g_set_pause_thresholds(%struct.rtl8169_private* %5, i32 56, i32 72)
  %7 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %8 = call i32 @rtl_set_def_aspm_entry_latency(%struct.rtl8169_private* %7)
  %9 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %10 = load i32, i32* @PCI_EXP_DEVCTL_READRQ_4096B, align 4
  %11 = call i32 @rtl_tx_performance_tweak(%struct.rtl8169_private* %9, i32 %10)
  %12 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %13 = call i32 @rtl_reset_packet_filter(%struct.rtl8169_private* %12)
  %14 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %15 = load i32, i32* @ERIAR_MASK_0011, align 4
  %16 = call i32 @rtl_eri_write(%struct.rtl8169_private* %14, i32 760, i32 %15, i32 7567)
  %17 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %18 = load i32, i32* @MISC, align 4
  %19 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %20 = load i32, i32* @MISC, align 4
  %21 = call i32 @RTL_R32(%struct.rtl8169_private* %19, i32 %20)
  %22 = load i32, i32* @RXDV_GATED_EN, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %21, %23
  %25 = call i32 @RTL_W32(%struct.rtl8169_private* %17, i32 %18, i32 %24)
  %26 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %27 = load i32, i32* @ERIAR_MASK_0011, align 4
  %28 = call i32 @rtl_eri_write(%struct.rtl8169_private* %26, i32 192, i32 %27, i32 0)
  %29 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %30 = load i32, i32* @ERIAR_MASK_0011, align 4
  %31 = call i32 @rtl_eri_write(%struct.rtl8169_private* %29, i32 184, i32 %30, i32 0)
  %32 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %33 = call i32 @rtl8168_config_eee_mac(%struct.rtl8169_private* %32)
  %34 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %35 = load i32, i32* @ERIAR_MASK_0001, align 4
  %36 = call i32 @rtl_w0w1_eri(%struct.rtl8169_private* %34, i32 764, i32 %35, i32 1, i32 6)
  %37 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %38 = load i32, i32* @ERIAR_MASK_0011, align 4
  %39 = call i32 @BIT(i32 12)
  %40 = call i32 @rtl_eri_clear_bits(%struct.rtl8169_private* %37, i32 432, i32 %38, i32 %39)
  %41 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %42 = call i32 @rtl_pcie_state_l2l3_disable(%struct.rtl8169_private* %41)
  ret void
}

declare dso_local i32 @rtl_set_fifo_size(%struct.rtl8169_private*, i32, i32, i32, i32) #1

declare dso_local i32 @rtl8168g_set_pause_thresholds(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @rtl_set_def_aspm_entry_latency(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl_tx_performance_tweak(%struct.rtl8169_private*, i32) #1

declare dso_local i32 @rtl_reset_packet_filter(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl_eri_write(%struct.rtl8169_private*, i32, i32, i32) #1

declare dso_local i32 @RTL_W32(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @RTL_R32(%struct.rtl8169_private*, i32) #1

declare dso_local i32 @rtl8168_config_eee_mac(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl_w0w1_eri(%struct.rtl8169_private*, i32, i32, i32, i32) #1

declare dso_local i32 @rtl_eri_clear_bits(%struct.rtl8169_private*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl_pcie_state_l2l3_disable(%struct.rtl8169_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
