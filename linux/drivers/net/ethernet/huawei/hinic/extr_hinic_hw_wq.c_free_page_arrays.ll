; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_wq.c_free_page_arrays.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_wq.c_free_page_arrays.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_wqs = type { i32, i32, i32, %struct.hinic_hwif* }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hinic_wqs*)* @free_page_arrays to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_page_arrays(%struct.hinic_wqs* %0) #0 {
  %2 = alloca %struct.hinic_wqs*, align 8
  %3 = alloca %struct.hinic_hwif*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  store %struct.hinic_wqs* %0, %struct.hinic_wqs** %2, align 8
  %5 = load %struct.hinic_wqs*, %struct.hinic_wqs** %2, align 8
  %6 = getelementptr inbounds %struct.hinic_wqs, %struct.hinic_wqs* %5, i32 0, i32 3
  %7 = load %struct.hinic_hwif*, %struct.hinic_hwif** %6, align 8
  store %struct.hinic_hwif* %7, %struct.hinic_hwif** %3, align 8
  %8 = load %struct.hinic_hwif*, %struct.hinic_hwif** %3, align 8
  %9 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %8, i32 0, i32 0
  %10 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  store %struct.pci_dev* %10, %struct.pci_dev** %4, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 0
  %13 = load %struct.hinic_wqs*, %struct.hinic_wqs** %2, align 8
  %14 = getelementptr inbounds %struct.hinic_wqs, %struct.hinic_wqs* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @devm_kfree(i32* %12, i32 %15)
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 0
  %19 = load %struct.hinic_wqs*, %struct.hinic_wqs** %2, align 8
  %20 = getelementptr inbounds %struct.hinic_wqs, %struct.hinic_wqs* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @devm_kfree(i32* %18, i32 %21)
  %23 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 0
  %25 = load %struct.hinic_wqs*, %struct.hinic_wqs** %2, align 8
  %26 = getelementptr inbounds %struct.hinic_wqs, %struct.hinic_wqs* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @devm_kfree(i32* %24, i32 %27)
  ret void
}

declare dso_local i32 @devm_kfree(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
