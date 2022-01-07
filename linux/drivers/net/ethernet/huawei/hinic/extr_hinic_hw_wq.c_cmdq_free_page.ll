; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_wq.c_cmdq_free_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_wq.c_cmdq_free_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_cmdq_pages = type { i32, i64, i32, %struct.hinic_hwif* }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@CMDQ_PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hinic_cmdq_pages*)* @cmdq_free_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmdq_free_page(%struct.hinic_cmdq_pages* %0) #0 {
  %2 = alloca %struct.hinic_cmdq_pages*, align 8
  %3 = alloca %struct.hinic_hwif*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  store %struct.hinic_cmdq_pages* %0, %struct.hinic_cmdq_pages** %2, align 8
  %5 = load %struct.hinic_cmdq_pages*, %struct.hinic_cmdq_pages** %2, align 8
  %6 = getelementptr inbounds %struct.hinic_cmdq_pages, %struct.hinic_cmdq_pages* %5, i32 0, i32 3
  %7 = load %struct.hinic_hwif*, %struct.hinic_hwif** %6, align 8
  store %struct.hinic_hwif* %7, %struct.hinic_hwif** %3, align 8
  %8 = load %struct.hinic_hwif*, %struct.hinic_hwif** %3, align 8
  %9 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %8, i32 0, i32 0
  %10 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  store %struct.pci_dev* %10, %struct.pci_dev** %4, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 0
  %13 = load i32, i32* @CMDQ_PAGE_SIZE, align 4
  %14 = load %struct.hinic_cmdq_pages*, %struct.hinic_cmdq_pages** %2, align 8
  %15 = getelementptr inbounds %struct.hinic_cmdq_pages, %struct.hinic_cmdq_pages* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.hinic_cmdq_pages*, %struct.hinic_cmdq_pages** %2, align 8
  %18 = getelementptr inbounds %struct.hinic_cmdq_pages, %struct.hinic_cmdq_pages* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = call i32 @dma_free_coherent(i32* %12, i32 %13, i32 %16, i32 %20)
  %22 = load %struct.hinic_cmdq_pages*, %struct.hinic_cmdq_pages** %2, align 8
  %23 = getelementptr inbounds %struct.hinic_cmdq_pages, %struct.hinic_cmdq_pages* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @vfree(i32 %24)
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

declare dso_local i32 @vfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
