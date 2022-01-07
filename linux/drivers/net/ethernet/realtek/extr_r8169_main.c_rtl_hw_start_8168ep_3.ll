; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_hw_start_8168ep_3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_hw_start_8168ep_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ephy_info = type { i32, i32, i32 }
%struct.rtl8169_private = type { i32 }

@rtl_hw_start_8168ep_3.e_info_8168ep_3 = internal constant [4 x %struct.ephy_info] [%struct.ephy_info { i32 0, i32 0, i32 128 }, %struct.ephy_info { i32 13, i32 256, i32 512 }, %struct.ephy_info { i32 25, i32 32801, i32 0 }, %struct.ephy_info { i32 30, i32 0, i32 8192 }], align 16
@DLLPR = common dso_local global i32 0, align 4
@PFM_EN = common dso_local global i32 0, align 4
@MISC_1 = common dso_local global i32 0, align 4
@PFM_D3COLD_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8169_private*)* @rtl_hw_start_8168ep_3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_hw_start_8168ep_3(%struct.rtl8169_private* %0) #0 {
  %2 = alloca %struct.rtl8169_private*, align 8
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %2, align 8
  %3 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %4 = call i32 @rtl_hw_aspm_clkreq_enable(%struct.rtl8169_private* %3, i32 0)
  %5 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %6 = call i32 @rtl_ephy_init(%struct.rtl8169_private* %5, %struct.ephy_info* getelementptr inbounds ([4 x %struct.ephy_info], [4 x %struct.ephy_info]* @rtl_hw_start_8168ep_3.e_info_8168ep_3, i64 0, i64 0))
  %7 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %8 = call i32 @rtl_hw_start_8168ep(%struct.rtl8169_private* %7)
  %9 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %10 = load i32, i32* @DLLPR, align 4
  %11 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %12 = load i32, i32* @DLLPR, align 4
  %13 = call i32 @RTL_R8(%struct.rtl8169_private* %11, i32 %12)
  %14 = load i32, i32* @PFM_EN, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  %17 = call i32 @RTL_W8(%struct.rtl8169_private* %9, i32 %10, i32 %16)
  %18 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %19 = load i32, i32* @MISC_1, align 4
  %20 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %21 = load i32, i32* @MISC_1, align 4
  %22 = call i32 @RTL_R8(%struct.rtl8169_private* %20, i32 %21)
  %23 = load i32, i32* @PFM_D3COLD_EN, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = call i32 @RTL_W8(%struct.rtl8169_private* %18, i32 %19, i32 %25)
  %27 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %28 = call i32 @r8168_mac_ocp_modify(%struct.rtl8169_private* %27, i32 54242, i32 4095, i32 625)
  %29 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %30 = call i32 @r8168_mac_ocp_modify(%struct.rtl8169_private* %29, i32 54244, i32 255, i32 0)
  %31 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %32 = call i32 @r8168_mac_ocp_modify(%struct.rtl8169_private* %31, i32 59488, i32 0, i32 128)
  %33 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %34 = call i32 @rtl_hw_aspm_clkreq_enable(%struct.rtl8169_private* %33, i32 1)
  ret void
}

declare dso_local i32 @rtl_hw_aspm_clkreq_enable(%struct.rtl8169_private*, i32) #1

declare dso_local i32 @rtl_ephy_init(%struct.rtl8169_private*, %struct.ephy_info*) #1

declare dso_local i32 @rtl_hw_start_8168ep(%struct.rtl8169_private*) #1

declare dso_local i32 @RTL_W8(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @RTL_R8(%struct.rtl8169_private*, i32) #1

declare dso_local i32 @r8168_mac_ocp_modify(%struct.rtl8169_private*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
