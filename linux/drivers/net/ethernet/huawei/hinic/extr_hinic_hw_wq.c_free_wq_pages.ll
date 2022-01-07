; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_wq.c_free_wq_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_wq.c_free_wq_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_wq = type { i8**, i32, i32* }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hinic_wq*, %struct.hinic_hwif*, i32)* @free_wq_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_wq_pages(%struct.hinic_wq* %0, %struct.hinic_hwif* %1, i32 %2) #0 {
  %4 = alloca %struct.hinic_wq*, align 8
  %5 = alloca %struct.hinic_hwif*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store %struct.hinic_wq* %0, %struct.hinic_wq** %4, align 8
  store %struct.hinic_hwif* %1, %struct.hinic_hwif** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.hinic_hwif*, %struct.hinic_hwif** %5, align 8
  %13 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %12, i32 0, i32 0
  %14 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  store %struct.pci_dev* %14, %struct.pci_dev** %7, align 8
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %44, %3
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %47

19:                                               ; preds = %15
  %20 = load %struct.hinic_wq*, %struct.hinic_wq** %4, align 8
  %21 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %20, i32 0, i32 0
  %22 = load i8**, i8*** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  store i8** %25, i8*** %9, align 8
  %26 = load %struct.hinic_wq*, %struct.hinic_wq** %4, align 8
  %27 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32* %31, i32** %10, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @be64_to_cpu(i32 %33)
  store i64 %34, i64* %11, align 8
  %35 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %36 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 0
  %37 = load %struct.hinic_wq*, %struct.hinic_wq** %4, align 8
  %38 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i8**, i8*** %9, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = load i64, i64* %11, align 8
  %43 = call i32 @dma_free_coherent(i32* %36, i32 %39, i8* %41, i64 %42)
  br label %44

44:                                               ; preds = %19
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %15

47:                                               ; preds = %15
  %48 = load %struct.hinic_wq*, %struct.hinic_wq** %4, align 8
  %49 = call i32 @free_wqes_shadow(%struct.hinic_wq* %48)
  ret void
}

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i8*, i64) #1

declare dso_local i32 @free_wqes_shadow(%struct.hinic_wq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
