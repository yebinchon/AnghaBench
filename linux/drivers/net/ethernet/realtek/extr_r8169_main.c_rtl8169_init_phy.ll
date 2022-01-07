; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl8169_init_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl8169_init_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rtl8169_private = type { i64, i32, i32 }

@RTL_GIGA_MAC_VER_06 = common dso_local global i64 0, align 8
@PCI_LATENCY_TIMER = common dso_local global i32 0, align 4
@PCI_CACHE_LINE_SIZE = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Set MAC Reg C+CR Offset 0x82h = 0x01h\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.rtl8169_private*)* @rtl8169_init_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8169_init_phy(%struct.net_device* %0, %struct.rtl8169_private* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rtl8169_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.rtl8169_private* %1, %struct.rtl8169_private** %4, align 8
  %5 = load %struct.net_device*, %struct.net_device** %3, align 8
  %6 = call i32 @rtl_hw_phy_config(%struct.net_device* %5)
  %7 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %8 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @RTL_GIGA_MAC_VER_06, align 8
  %11 = icmp sle i64 %9, %10
  br i1 %11, label %12, label %29

12:                                               ; preds = %2
  %13 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %14 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @PCI_LATENCY_TIMER, align 4
  %17 = call i32 @pci_write_config_byte(i32 %15, i32 %16, i32 64)
  %18 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %19 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @PCI_CACHE_LINE_SIZE, align 4
  %22 = call i32 @pci_write_config_byte(i32 %20, i32 %21, i32 8)
  %23 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %24 = load i32, i32* @drv, align 4
  %25 = load %struct.net_device*, %struct.net_device** %3, align 8
  %26 = call i32 @netif_dbg(%struct.rtl8169_private* %23, i32 %24, %struct.net_device* %25, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %28 = call i32 @RTL_W8(%struct.rtl8169_private* %27, i32 130, i32 1)
  br label %29

29:                                               ; preds = %12, %2
  %30 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %31 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @phy_speed_up(i32 %32)
  %34 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %35 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @genphy_soft_reset(i32 %36)
  ret void
}

declare dso_local i32 @rtl_hw_phy_config(%struct.net_device*) #1

declare dso_local i32 @pci_write_config_byte(i32, i32, i32) #1

declare dso_local i32 @netif_dbg(%struct.rtl8169_private*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @RTL_W8(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @phy_speed_up(i32) #1

declare dso_local i32 @genphy_soft_reset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
