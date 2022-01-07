; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_hw_start_8168c_1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_hw_start_8168c_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ephy_info = type { i32, i32, i32 }
%struct.rtl8169_private = type { i32 }

@rtl_hw_start_8168c_1.e_info_8168c_1 = internal constant [3 x %struct.ephy_info] [%struct.ephy_info { i32 2, i32 2048, i32 4096 }, %struct.ephy_info { i32 3, i32 0, i32 2 }, %struct.ephy_info { i32 6, i32 128, i32 0 }], align 16
@DBG_REG = common dso_local global i32 0, align 4
@FIX_NAK_1 = common dso_local global i32 0, align 4
@FIX_NAK_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8169_private*)* @rtl_hw_start_8168c_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_hw_start_8168c_1(%struct.rtl8169_private* %0) #0 {
  %2 = alloca %struct.rtl8169_private*, align 8
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %2, align 8
  %3 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %4 = call i32 @rtl_set_def_aspm_entry_latency(%struct.rtl8169_private* %3)
  %5 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %6 = load i32, i32* @DBG_REG, align 4
  %7 = load i32, i32* @FIX_NAK_1, align 4
  %8 = or i32 6, %7
  %9 = load i32, i32* @FIX_NAK_2, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @RTL_W8(%struct.rtl8169_private* %5, i32 %6, i32 %10)
  %12 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %13 = call i32 @rtl_ephy_init(%struct.rtl8169_private* %12, %struct.ephy_info* getelementptr inbounds ([3 x %struct.ephy_info], [3 x %struct.ephy_info]* @rtl_hw_start_8168c_1.e_info_8168c_1, i64 0, i64 0))
  %14 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %15 = call i32 @__rtl_hw_start_8168cp(%struct.rtl8169_private* %14)
  ret void
}

declare dso_local i32 @rtl_set_def_aspm_entry_latency(%struct.rtl8169_private*) #1

declare dso_local i32 @RTL_W8(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @rtl_ephy_init(%struct.rtl8169_private*, %struct.ephy_info*) #1

declare dso_local i32 @__rtl_hw_start_8168cp(%struct.rtl8169_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
