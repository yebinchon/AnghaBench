; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_spider_net.c_spider_net_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_spider_net.c_spider_net_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.spider_net_card = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @spider_net_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spider_net_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.spider_net_card*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %8 = load i32, i32* @EIO, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %6, align 4
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = call %struct.spider_net_card* @spider_net_setup_pci_dev(%struct.pci_dev* %10)
  store %struct.spider_net_card* %11, %struct.spider_net_card** %7, align 8
  %12 = load %struct.spider_net_card*, %struct.spider_net_card** %7, align 8
  %13 = icmp ne %struct.spider_net_card* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %39

15:                                               ; preds = %2
  %16 = load %struct.spider_net_card*, %struct.spider_net_card** %7, align 8
  %17 = call i32 @spider_net_workaround_rxramfull(%struct.spider_net_card* %16)
  %18 = load %struct.spider_net_card*, %struct.spider_net_card** %7, align 8
  %19 = call i32 @spider_net_init_card(%struct.spider_net_card* %18)
  %20 = load %struct.spider_net_card*, %struct.spider_net_card** %7, align 8
  %21 = call i32 @spider_net_setup_phy(%struct.spider_net_card* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %32

25:                                               ; preds = %15
  %26 = load %struct.spider_net_card*, %struct.spider_net_card** %7, align 8
  %27 = call i32 @spider_net_setup_netdev(%struct.spider_net_card* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %32

31:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %41

32:                                               ; preds = %30, %24
  %33 = load %struct.spider_net_card*, %struct.spider_net_card** %7, align 8
  %34 = call i32 @spider_net_undo_pci_setup(%struct.spider_net_card* %33)
  %35 = load %struct.spider_net_card*, %struct.spider_net_card** %7, align 8
  %36 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @free_netdev(i32 %37)
  br label %39

39:                                               ; preds = %32, %14
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %39, %31
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.spider_net_card* @spider_net_setup_pci_dev(%struct.pci_dev*) #1

declare dso_local i32 @spider_net_workaround_rxramfull(%struct.spider_net_card*) #1

declare dso_local i32 @spider_net_init_card(%struct.spider_net_card*) #1

declare dso_local i32 @spider_net_setup_phy(%struct.spider_net_card*) #1

declare dso_local i32 @spider_net_setup_netdev(%struct.spider_net_card*) #1

declare dso_local i32 @spider_net_undo_pci_setup(%struct.spider_net_card*) #1

declare dso_local i32 @free_netdev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
