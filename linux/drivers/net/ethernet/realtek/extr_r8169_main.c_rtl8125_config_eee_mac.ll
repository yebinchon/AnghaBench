; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl8125_config_eee_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl8125_config_eee_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8169_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8169_private*)* @rtl8125_config_eee_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8125_config_eee_mac(%struct.rtl8169_private* %0) #0 {
  %2 = alloca %struct.rtl8169_private*, align 8
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %2, align 8
  %3 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %4 = call i32 @BIT(i32 1)
  %5 = call i32 @BIT(i32 0)
  %6 = or i32 %4, %5
  %7 = call i32 @r8168_mac_ocp_modify(%struct.rtl8169_private* %3, i32 57408, i32 0, i32 %6)
  %8 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %9 = call i32 @BIT(i32 2)
  %10 = call i32 @BIT(i32 1)
  %11 = or i32 %9, %10
  %12 = call i32 @r8168_mac_ocp_modify(%struct.rtl8169_private* %8, i32 60258, i32 0, i32 %11)
  ret void
}

declare dso_local i32 @r8168_mac_ocp_modify(%struct.rtl8169_private*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
