; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_main.c_nx_set_dma_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_main.c_nx_set_dma_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { i32, %struct.TYPE_2__, %struct.pci_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netxen_adapter*)* @nx_set_dma_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nx_set_dma_mask(%struct.netxen_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.netxen_adapter*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %3, align 8
  %7 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %7, i32 0, i32 2
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %4, align 8
  %10 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %10, i32 0, i32 0
  store i32 0, i32* %11, align 8
  %12 = call i32 @DMA_BIT_MASK(i32 32)
  store i32 %12, i32* %5, align 4
  %13 = call i32 @DMA_BIT_MASK(i32 32)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @NX_IS_REVISION_P2(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = call i32 @DMA_BIT_MASK(i32 35)
  store i32 %21, i32* %5, align 4
  br label %25

22:                                               ; preds = %1
  %23 = call i32 @DMA_BIT_MASK(i32 39)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %22, %20
  %26 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @pci_set_dma_mask(%struct.pci_dev* %26, i32 %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i64 @pci_set_consistent_dma_mask(%struct.pci_dev* %31, i32 %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %37 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  store i32 0, i32* %2, align 4
  br label %41

38:                                               ; preds = %30, %25
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %38, %35
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i64 @NX_IS_REVISION_P2(i32) #1

declare dso_local i64 @pci_set_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i64 @pci_set_consistent_dma_mask(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
