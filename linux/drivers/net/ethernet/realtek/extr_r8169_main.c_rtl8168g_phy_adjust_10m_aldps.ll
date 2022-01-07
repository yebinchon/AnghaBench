; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl8168g_phy_adjust_10m_aldps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl8168g_phy_adjust_10m_aldps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8169_private = type { %struct.phy_device* }
%struct.phy_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8169_private*)* @rtl8168g_phy_adjust_10m_aldps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8168g_phy_adjust_10m_aldps(%struct.rtl8169_private* %0) #0 {
  %2 = alloca %struct.rtl8169_private*, align 8
  %3 = alloca %struct.phy_device*, align 8
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %2, align 8
  %4 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %5 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %4, i32 0, i32 0
  %6 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  store %struct.phy_device* %6, %struct.phy_device** %3, align 8
  %7 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %8 = call i32 @BIT(i32 8)
  %9 = call i32 @phy_modify_paged(%struct.phy_device* %7, i32 3020, i32 20, i32 %8, i32 0)
  %10 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %11 = call i32 @BIT(i32 7)
  %12 = call i32 @BIT(i32 6)
  %13 = or i32 %11, %12
  %14 = call i32 @phy_modify_paged(%struct.phy_device* %10, i32 2628, i32 17, i32 0, i32 %13)
  %15 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %16 = call i32 @phy_write(%struct.phy_device* %15, i32 31, i32 2627)
  %17 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %18 = call i32 @phy_write(%struct.phy_device* %17, i32 19, i32 32900)
  %19 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %20 = call i32 @BIT(i32 14)
  %21 = call i32 @BIT(i32 13)
  %22 = or i32 %20, %21
  %23 = call i32 @phy_clear_bits(%struct.phy_device* %19, i32 20, i32 %22)
  %24 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %25 = call i32 @BIT(i32 12)
  %26 = call i32 @BIT(i32 1)
  %27 = or i32 %25, %26
  %28 = call i32 @BIT(i32 0)
  %29 = or i32 %27, %28
  %30 = call i32 @phy_set_bits(%struct.phy_device* %24, i32 16, i32 %29)
  %31 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %32 = call i32 @phy_write(%struct.phy_device* %31, i32 31, i32 0)
  ret void
}

declare dso_local i32 @phy_modify_paged(%struct.phy_device*, i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @phy_clear_bits(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @phy_set_bits(%struct.phy_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
