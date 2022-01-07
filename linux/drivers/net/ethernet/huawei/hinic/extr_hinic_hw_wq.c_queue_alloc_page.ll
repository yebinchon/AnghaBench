; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_wq.c_queue_alloc_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_wq.c_queue_alloc_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to allocate dma for wqs page\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hinic_hwif*, i64**, i64*, i8***, i64)* @queue_alloc_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_alloc_page(%struct.hinic_hwif* %0, i64** %1, i64* %2, i8*** %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hinic_hwif*, align 8
  %8 = alloca i64**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8***, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.pci_dev*, align 8
  %13 = alloca i64, align 8
  store %struct.hinic_hwif* %0, %struct.hinic_hwif** %7, align 8
  store i64** %1, i64*** %8, align 8
  store i64* %2, i64** %9, align 8
  store i8*** %3, i8**** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.hinic_hwif*, %struct.hinic_hwif** %7, align 8
  %15 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %14, i32 0, i32 0
  %16 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  store %struct.pci_dev* %16, %struct.pci_dev** %12, align 8
  %17 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 0
  %19 = load i64, i64* %11, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i64* @dma_alloc_coherent(i32* %18, i64 %19, i64* %13, i32 %20)
  %22 = load i64**, i64*** %8, align 8
  store i64* %21, i64** %22, align 8
  %23 = load i64**, i64*** %8, align 8
  %24 = load i64*, i64** %23, align 8
  %25 = icmp ne i64* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %5
  %27 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 0
  %29 = call i32 @dev_err(i32* %28, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %53

32:                                               ; preds = %5
  %33 = load i64, i64* %13, align 8
  %34 = load i64*, i64** %9, align 8
  store i64 %33, i64* %34, align 8
  %35 = load i64, i64* %11, align 8
  %36 = call i8** @vzalloc(i64 %35)
  %37 = load i8***, i8**** %10, align 8
  store i8** %36, i8*** %37, align 8
  %38 = load i8***, i8**** %10, align 8
  %39 = load i8**, i8*** %38, align 8
  %40 = icmp ne i8** %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %32
  br label %43

42:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %53

43:                                               ; preds = %41
  %44 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %45 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %44, i32 0, i32 0
  %46 = load i64, i64* %11, align 8
  %47 = load i64**, i64*** %8, align 8
  %48 = load i64*, i64** %47, align 8
  %49 = load i64, i64* %13, align 8
  %50 = call i32 @dma_free_coherent(i32* %45, i64 %46, i64* %48, i64 %49)
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %43, %42, %26
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i64* @dma_alloc_coherent(i32*, i64, i64*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i8** @vzalloc(i64) #1

declare dso_local i32 @dma_free_coherent(i32*, i64, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
