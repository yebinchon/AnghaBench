; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_main.c_atl1e_free_ring_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_main.c_atl1e_free_ring_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1e_adapter = type { %struct.TYPE_2__, i32*, i32, i32, %struct.pci_dev* }
%struct.TYPE_2__ = type { i32* }
%struct.pci_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atl1e_adapter*)* @atl1e_free_ring_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl1e_free_ring_resources(%struct.atl1e_adapter* %0) #0 {
  %2 = alloca %struct.atl1e_adapter*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  store %struct.atl1e_adapter* %0, %struct.atl1e_adapter** %2, align 8
  %4 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %4, i32 0, i32 4
  %6 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  store %struct.pci_dev* %6, %struct.pci_dev** %3, align 8
  %7 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %8 = call i32 @atl1e_clean_tx_ring(%struct.atl1e_adapter* %7)
  %9 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %10 = call i32 @atl1e_clean_rx_ring(%struct.atl1e_adapter* %9)
  %11 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %29

15:                                               ; preds = %1
  %16 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %17 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %21 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %24 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @pci_free_consistent(%struct.pci_dev* %16, i32 %19, i32* %22, i32 %25)
  %27 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %28 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %27, i32 0, i32 1
  store i32* null, i32** %28, align 8
  br label %29

29:                                               ; preds = %15, %1
  %30 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %31 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %37 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @kfree(i32* %39)
  %41 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %42 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32* null, i32** %43, align 8
  br label %44

44:                                               ; preds = %35, %29
  ret void
}

declare dso_local i32 @atl1e_clean_tx_ring(%struct.atl1e_adapter*) #1

declare dso_local i32 @atl1e_clean_rx_ring(%struct.atl1e_adapter*) #1

declare dso_local i32 @pci_free_consistent(%struct.pci_dev*, i32, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
