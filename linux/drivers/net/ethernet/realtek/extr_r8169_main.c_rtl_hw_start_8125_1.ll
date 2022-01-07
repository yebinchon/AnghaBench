; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_hw_start_8125_1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_hw_start_8125_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ephy_info = type { i32, i32, i32 }
%struct.rtl8169_private = type { i32 }

@rtl_hw_start_8125_1.e_info_8125_1 = internal constant [24 x %struct.ephy_info] [%struct.ephy_info { i32 1, i32 65535, i32 43026 }, %struct.ephy_info { i32 9, i32 65535, i32 21004 }, %struct.ephy_info { i32 4, i32 65535, i32 53248 }, %struct.ephy_info { i32 13, i32 65535, i32 63234 }, %struct.ephy_info { i32 10, i32 65535, i32 34387 }, %struct.ephy_info { i32 6, i32 65535, i32 30 }, %struct.ephy_info { i32 8, i32 65535, i32 13717 }, %struct.ephy_info { i32 32, i32 65535, i32 37973 }, %struct.ephy_info { i32 33, i32 65535, i32 39423 }, %struct.ephy_info { i32 2, i32 65535, i32 24646 }, %struct.ephy_info { i32 41, i32 65535, i32 65024 }, %struct.ephy_info { i32 35, i32 65535, i32 43874 }, %struct.ephy_info { i32 65, i32 65535, i32 43020 }, %struct.ephy_info { i32 73, i32 65535, i32 21004 }, %struct.ephy_info { i32 68, i32 65535, i32 53248 }, %struct.ephy_info { i32 77, i32 65535, i32 63234 }, %struct.ephy_info { i32 74, i32 65535, i32 34387 }, %struct.ephy_info { i32 70, i32 65535, i32 30 }, %struct.ephy_info { i32 72, i32 65535, i32 13717 }, %struct.ephy_info { i32 96, i32 65535, i32 37973 }, %struct.ephy_info { i32 97, i32 65535, i32 39423 }, %struct.ephy_info { i32 66, i32 65535, i32 24646 }, %struct.ephy_info { i32 105, i32 65535, i32 65024 }, %struct.ephy_info { i32 99, i32 65535, i32 43874 }], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8169_private*)* @rtl_hw_start_8125_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_hw_start_8125_1(%struct.rtl8169_private* %0) #0 {
  %2 = alloca %struct.rtl8169_private*, align 8
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %2, align 8
  %3 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %4 = call i32 @rtl_set_def_aspm_entry_latency(%struct.rtl8169_private* %3)
  %5 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %6 = call i32 @rtl_hw_aspm_clkreq_enable(%struct.rtl8169_private* %5, i32 0)
  %7 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %8 = call i32 @rtl_ephy_init(%struct.rtl8169_private* %7, %struct.ephy_info* getelementptr inbounds ([24 x %struct.ephy_info], [24 x %struct.ephy_info]* @rtl_hw_start_8125_1.e_info_8125_1, i64 0, i64 0))
  %9 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %10 = call i32 @rtl_hw_start_8125_common(%struct.rtl8169_private* %9)
  ret void
}

declare dso_local i32 @rtl_set_def_aspm_entry_latency(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl_hw_aspm_clkreq_enable(%struct.rtl8169_private*, i32) #1

declare dso_local i32 @rtl_ephy_init(%struct.rtl8169_private*, %struct.ephy_info*) #1

declare dso_local i32 @rtl_hw_start_8125_common(%struct.rtl8169_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
