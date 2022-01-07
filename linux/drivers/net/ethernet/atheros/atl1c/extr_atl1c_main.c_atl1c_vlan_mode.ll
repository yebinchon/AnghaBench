; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_vlan_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_vlan_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.atl1c_adapter = type { i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"atl1c_vlan_mode\0A\00", align 1
@REG_MAC_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @atl1c_vlan_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl1c_vlan_mode(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.atl1c_adapter*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.atl1c_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.atl1c_adapter* %9, %struct.atl1c_adapter** %5, align 8
  %10 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %5, align 8
  %11 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %10, i32 0, i32 1
  %12 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  store %struct.pci_dev* %12, %struct.pci_dev** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %5, align 8
  %14 = call i64 @netif_msg_pktdata(%struct.atl1c_adapter* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 0
  %19 = call i32 @dev_dbg(i32* %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %16, %2
  %21 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %5, align 8
  %22 = call i32 @atl1c_irq_disable(%struct.atl1c_adapter* %21)
  %23 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %5, align 8
  %24 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %23, i32 0, i32 0
  %25 = load i32, i32* @REG_MAC_CTRL, align 4
  %26 = call i32 @AT_READ_REG(i32* %24, i32 %25, i32* %7)
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @__atl1c_vlan_mode(i32 %27, i32* %7)
  %29 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %5, align 8
  %30 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %29, i32 0, i32 0
  %31 = load i32, i32* @REG_MAC_CTRL, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @AT_WRITE_REG(i32* %30, i32 %31, i32 %32)
  %34 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %5, align 8
  %35 = call i32 @atl1c_irq_enable(%struct.atl1c_adapter* %34)
  ret void
}

declare dso_local %struct.atl1c_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_msg_pktdata(%struct.atl1c_adapter*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @atl1c_irq_disable(%struct.atl1c_adapter*) #1

declare dso_local i32 @AT_READ_REG(i32*, i32, i32*) #1

declare dso_local i32 @__atl1c_vlan_mode(i32, i32*) #1

declare dso_local i32 @AT_WRITE_REG(i32*, i32, i32) #1

declare dso_local i32 @atl1c_irq_enable(%struct.atl1c_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
