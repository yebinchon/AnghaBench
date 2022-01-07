; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_spider_net.c_spider_net_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_spider_net.c_spider_net_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.spider_net_card = type { i32, i32 }

@SPIDER_NET_CKRCTRL = common dso_local global i32 0, align 4
@SPIDER_NET_CKRCTRL_STOP_VALUE = common dso_local global i32 0, align 4
@SPIDER_NET_CKRCTRL_RUN_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @spider_net_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spider_net_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.spider_net_card*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.spider_net_card* @netdev_priv(%struct.net_device* %7)
  store %struct.spider_net_card* %8, %struct.spider_net_card** %4, align 8
  %9 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %10 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %13 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %12, i32 0, i32 0
  %14 = call i64 @atomic_read(i32* %13)
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @wait_event(i32 %11, i32 %16)
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = call i32 @unregister_netdev(%struct.net_device* %18)
  %20 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %21 = load i32, i32* @SPIDER_NET_CKRCTRL, align 4
  %22 = load i32, i32* @SPIDER_NET_CKRCTRL_STOP_VALUE, align 4
  %23 = call i32 @spider_net_write_reg(%struct.spider_net_card* %20, i32 %21, i32 %22)
  %24 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %25 = load i32, i32* @SPIDER_NET_CKRCTRL, align 4
  %26 = load i32, i32* @SPIDER_NET_CKRCTRL_RUN_VALUE, align 4
  %27 = call i32 @spider_net_write_reg(%struct.spider_net_card* %24, i32 %25, i32 %26)
  %28 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %29 = call i32 @spider_net_undo_pci_setup(%struct.spider_net_card* %28)
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = call i32 @free_netdev(%struct.net_device* %30)
  ret void
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.spider_net_card* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @spider_net_write_reg(%struct.spider_net_card*, i32, i32) #1

declare dso_local i32 @spider_net_undo_pci_setup(%struct.spider_net_card*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
