; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_hw_start_8168g_2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_hw_start_8168g_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ephy_info = type { i32, i32, i32 }
%struct.rtl8169_private = type { i32 }

@rtl_hw_start_8168g_2.e_info_8168g_2 = internal constant [9 x %struct.ephy_info] [%struct.ephy_info { i32 0, i32 8, i32 0 }, %struct.ephy_info { i32 12, i32 16368, i32 2080 }, %struct.ephy_info { i32 25, i32 65535, i32 31744 }, %struct.ephy_info { i32 30, i32 65535, i32 8427 }, %struct.ephy_info { i32 13, i32 65535, i32 5734 }, %struct.ephy_info { i32 0, i32 65535, i32 4259 }, %struct.ephy_info { i32 6, i32 65535, i32 61520 }, %struct.ephy_info { i32 4, i32 0, i32 16 }, %struct.ephy_info { i32 29, i32 16384, i32 0 }], align 16
@Config2 = common dso_local global i32 0, align 4
@ClkReqEn = common dso_local global i32 0, align 4
@Config5 = common dso_local global i32 0, align 4
@ASPM_en = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8169_private*)* @rtl_hw_start_8168g_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_hw_start_8168g_2(%struct.rtl8169_private* %0) #0 {
  %2 = alloca %struct.rtl8169_private*, align 8
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %2, align 8
  %3 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %4 = call i32 @rtl_hw_start_8168g(%struct.rtl8169_private* %3)
  %5 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %6 = load i32, i32* @Config2, align 4
  %7 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %8 = load i32, i32* @Config2, align 4
  %9 = call i32 @RTL_R8(%struct.rtl8169_private* %7, i32 %8)
  %10 = load i32, i32* @ClkReqEn, align 4
  %11 = xor i32 %10, -1
  %12 = and i32 %9, %11
  %13 = call i32 @RTL_W8(%struct.rtl8169_private* %5, i32 %6, i32 %12)
  %14 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %15 = load i32, i32* @Config5, align 4
  %16 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %17 = load i32, i32* @Config5, align 4
  %18 = call i32 @RTL_R8(%struct.rtl8169_private* %16, i32 %17)
  %19 = load i32, i32* @ASPM_en, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  %22 = call i32 @RTL_W8(%struct.rtl8169_private* %14, i32 %15, i32 %21)
  %23 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %24 = call i32 @rtl_ephy_init(%struct.rtl8169_private* %23, %struct.ephy_info* getelementptr inbounds ([9 x %struct.ephy_info], [9 x %struct.ephy_info]* @rtl_hw_start_8168g_2.e_info_8168g_2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @rtl_hw_start_8168g(%struct.rtl8169_private*) #1

declare dso_local i32 @RTL_W8(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @RTL_R8(%struct.rtl8169_private*, i32) #1

declare dso_local i32 @rtl_ephy_init(%struct.rtl8169_private*, %struct.ephy_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
