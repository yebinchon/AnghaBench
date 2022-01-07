; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_hw_start_8168h_1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_hw_start_8168h_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ephy_info = type { i32, i32, i32 }
%struct.rtl8169_private = type { i32 }

@rtl_hw_start_8168h_1.e_info_8168h_1 = internal constant [6 x %struct.ephy_info] [%struct.ephy_info { i32 30, i32 2048, i32 1 }, %struct.ephy_info { i32 29, i32 0, i32 2048 }, %struct.ephy_info { i32 5, i32 65535, i32 8329 }, %struct.ephy_info { i32 6, i32 65535, i32 22657 }, %struct.ephy_info { i32 4, i32 65535, i32 34122 }, %struct.ephy_info { i32 1, i32 65535, i32 1675 }], align 16
@PCI_EXP_DEVCTL_READRQ_4096B = common dso_local global i32 0, align 4
@ERIAR_MASK_1111 = common dso_local global i32 0, align 4
@ERIAR_MASK_0011 = common dso_local global i32 0, align 4
@MISC = common dso_local global i32 0, align 4
@RXDV_GATED_EN = common dso_local global i32 0, align 4
@DLLPR = common dso_local global i32 0, align 4
@PFM_EN = common dso_local global i32 0, align 4
@MISC_1 = common dso_local global i32 0, align 4
@PFM_D3COLD_EN = common dso_local global i32 0, align 4
@TX_10M_PS_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8169_private*)* @rtl_hw_start_8168h_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_hw_start_8168h_1(%struct.rtl8169_private* %0) #0 {
  %2 = alloca %struct.rtl8169_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %2, align 8
  %5 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %6 = call i32 @rtl_hw_aspm_clkreq_enable(%struct.rtl8169_private* %5, i32 0)
  %7 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %8 = call i32 @rtl_ephy_init(%struct.rtl8169_private* %7, %struct.ephy_info* getelementptr inbounds ([6 x %struct.ephy_info], [6 x %struct.ephy_info]* @rtl_hw_start_8168h_1.e_info_8168h_1, i64 0, i64 0))
  %9 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %10 = call i32 @rtl_set_fifo_size(%struct.rtl8169_private* %9, i32 8, i32 16, i32 2, i32 6)
  %11 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %12 = call i32 @rtl8168g_set_pause_thresholds(%struct.rtl8169_private* %11, i32 56, i32 72)
  %13 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %14 = call i32 @rtl_set_def_aspm_entry_latency(%struct.rtl8169_private* %13)
  %15 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %16 = load i32, i32* @PCI_EXP_DEVCTL_READRQ_4096B, align 4
  %17 = call i32 @rtl_tx_performance_tweak(%struct.rtl8169_private* %15, i32 %16)
  %18 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %19 = call i32 @rtl_reset_packet_filter(%struct.rtl8169_private* %18)
  %20 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %21 = load i32, i32* @ERIAR_MASK_1111, align 4
  %22 = call i32 @BIT(i32 4)
  %23 = call i32 @rtl_eri_set_bits(%struct.rtl8169_private* %20, i32 220, i32 %21, i32 %22)
  %24 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %25 = load i32, i32* @ERIAR_MASK_1111, align 4
  %26 = call i32 @rtl_eri_set_bits(%struct.rtl8169_private* %24, i32 212, i32 %25, i32 7936)
  %27 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %28 = load i32, i32* @ERIAR_MASK_0011, align 4
  %29 = call i32 @rtl_eri_write(%struct.rtl8169_private* %27, i32 1520, i32 %28, i32 20359)
  %30 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %31 = load i32, i32* @MISC, align 4
  %32 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %33 = load i32, i32* @MISC, align 4
  %34 = call i32 @RTL_R32(%struct.rtl8169_private* %32, i32 %33)
  %35 = load i32, i32* @RXDV_GATED_EN, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = call i32 @RTL_W32(%struct.rtl8169_private* %30, i32 %31, i32 %37)
  %39 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %40 = load i32, i32* @ERIAR_MASK_0011, align 4
  %41 = call i32 @rtl_eri_write(%struct.rtl8169_private* %39, i32 192, i32 %40, i32 0)
  %42 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %43 = load i32, i32* @ERIAR_MASK_0011, align 4
  %44 = call i32 @rtl_eri_write(%struct.rtl8169_private* %42, i32 184, i32 %43, i32 0)
  %45 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %46 = call i32 @rtl8168_config_eee_mac(%struct.rtl8169_private* %45)
  %47 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %48 = load i32, i32* @DLLPR, align 4
  %49 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %50 = load i32, i32* @DLLPR, align 4
  %51 = call i32 @RTL_R8(%struct.rtl8169_private* %49, i32 %50)
  %52 = load i32, i32* @PFM_EN, align 4
  %53 = xor i32 %52, -1
  %54 = and i32 %51, %53
  %55 = call i32 @RTL_W8(%struct.rtl8169_private* %47, i32 %48, i32 %54)
  %56 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %57 = load i32, i32* @MISC_1, align 4
  %58 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %59 = load i32, i32* @MISC_1, align 4
  %60 = call i32 @RTL_R8(%struct.rtl8169_private* %58, i32 %59)
  %61 = load i32, i32* @PFM_D3COLD_EN, align 4
  %62 = xor i32 %61, -1
  %63 = and i32 %60, %62
  %64 = call i32 @RTL_W8(%struct.rtl8169_private* %56, i32 %57, i32 %63)
  %65 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %66 = load i32, i32* @DLLPR, align 4
  %67 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %68 = load i32, i32* @DLLPR, align 4
  %69 = call i32 @RTL_R8(%struct.rtl8169_private* %67, i32 %68)
  %70 = load i32, i32* @TX_10M_PS_EN, align 4
  %71 = xor i32 %70, -1
  %72 = and i32 %69, %71
  %73 = call i32 @RTL_W8(%struct.rtl8169_private* %65, i32 %66, i32 %72)
  %74 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %75 = load i32, i32* @ERIAR_MASK_0011, align 4
  %76 = call i32 @BIT(i32 12)
  %77 = call i32 @rtl_eri_clear_bits(%struct.rtl8169_private* %74, i32 432, i32 %75, i32 %76)
  %78 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %79 = call i32 @rtl_pcie_state_l2l3_disable(%struct.rtl8169_private* %78)
  %80 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %81 = call i32 @rtl_writephy(%struct.rtl8169_private* %80, i32 31, i32 3138)
  %82 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %83 = call i32 @rtl_readphy(%struct.rtl8169_private* %82, i32 19)
  %84 = and i32 %83, 16383
  store i32 %84, i32* %3, align 4
  %85 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %86 = call i32 @rtl_writephy(%struct.rtl8169_private* %85, i32 31, i32 0)
  %87 = load i32, i32* %3, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %1
  %90 = load i32, i32* %3, align 4
  %91 = sdiv i32 16000000, %90
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* %4, align 4
  %93 = and i32 %92, 4095
  store i32 %93, i32* %4, align 4
  %94 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %95 = load i32, i32* %4, align 4
  %96 = call i32 @r8168_mac_ocp_modify(%struct.rtl8169_private* %94, i32 54290, i32 4095, i32 %95)
  br label %97

97:                                               ; preds = %89, %1
  %98 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %99 = call i32 @r8168_mac_ocp_modify(%struct.rtl8169_private* %98, i32 57430, i32 240, i32 112)
  %100 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %101 = call i32 @r8168_mac_ocp_modify(%struct.rtl8169_private* %100, i32 57426, i32 24576, i32 32776)
  %102 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %103 = call i32 @r8168_mac_ocp_modify(%struct.rtl8169_private* %102, i32 57558, i32 511, i32 383)
  %104 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %105 = call i32 @r8168_mac_ocp_modify(%struct.rtl8169_private* %104, i32 54304, i32 4095, i32 1151)
  %106 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %107 = call i32 @r8168_mac_ocp_write(%struct.rtl8169_private* %106, i32 58942, i32 1)
  %108 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %109 = call i32 @r8168_mac_ocp_write(%struct.rtl8169_private* %108, i32 58942, i32 0)
  %110 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %111 = call i32 @r8168_mac_ocp_write(%struct.rtl8169_private* %110, i32 49300, i32 0)
  %112 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %113 = call i32 @r8168_mac_ocp_write(%struct.rtl8169_private* %112, i32 49310, i32 0)
  %114 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %115 = call i32 @rtl_hw_aspm_clkreq_enable(%struct.rtl8169_private* %114, i32 1)
  ret void
}

declare dso_local i32 @rtl_hw_aspm_clkreq_enable(%struct.rtl8169_private*, i32) #1

declare dso_local i32 @rtl_ephy_init(%struct.rtl8169_private*, %struct.ephy_info*) #1

declare dso_local i32 @rtl_set_fifo_size(%struct.rtl8169_private*, i32, i32, i32, i32) #1

declare dso_local i32 @rtl8168g_set_pause_thresholds(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @rtl_set_def_aspm_entry_latency(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl_tx_performance_tweak(%struct.rtl8169_private*, i32) #1

declare dso_local i32 @rtl_reset_packet_filter(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl_eri_set_bits(%struct.rtl8169_private*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl_eri_write(%struct.rtl8169_private*, i32, i32, i32) #1

declare dso_local i32 @RTL_W32(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @RTL_R32(%struct.rtl8169_private*, i32) #1

declare dso_local i32 @rtl8168_config_eee_mac(%struct.rtl8169_private*) #1

declare dso_local i32 @RTL_W8(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @RTL_R8(%struct.rtl8169_private*, i32) #1

declare dso_local i32 @rtl_eri_clear_bits(%struct.rtl8169_private*, i32, i32, i32) #1

declare dso_local i32 @rtl_pcie_state_l2l3_disable(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl_writephy(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @rtl_readphy(%struct.rtl8169_private*, i32) #1

declare dso_local i32 @r8168_mac_ocp_modify(%struct.rtl8169_private*, i32, i32, i32) #1

declare dso_local i32 @r8168_mac_ocp_write(%struct.rtl8169_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
