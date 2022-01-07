; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_wq.c_hinic_wqs_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_wq.c_hinic_wqs_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_wqs = type { i32, i32, %struct.hinic_hwif* }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hinic_wqs_free(%struct.hinic_wqs* %0) #0 {
  %2 = alloca %struct.hinic_wqs*, align 8
  %3 = alloca %struct.hinic_hwif*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.hinic_wqs* %0, %struct.hinic_wqs** %2, align 8
  %6 = load %struct.hinic_wqs*, %struct.hinic_wqs** %2, align 8
  %7 = getelementptr inbounds %struct.hinic_wqs, %struct.hinic_wqs* %6, i32 0, i32 2
  %8 = load %struct.hinic_hwif*, %struct.hinic_hwif** %7, align 8
  store %struct.hinic_hwif* %8, %struct.hinic_hwif** %3, align 8
  %9 = load %struct.hinic_hwif*, %struct.hinic_hwif** %3, align 8
  %10 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %9, i32 0, i32 0
  %11 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  store %struct.pci_dev* %11, %struct.pci_dev** %4, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 0
  %14 = load %struct.hinic_wqs*, %struct.hinic_wqs** %2, align 8
  %15 = getelementptr inbounds %struct.hinic_wqs, %struct.hinic_wqs* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @devm_kfree(i32* %13, i32 %16)
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %28, %1
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.hinic_wqs*, %struct.hinic_wqs** %2, align 8
  %21 = getelementptr inbounds %struct.hinic_wqs, %struct.hinic_wqs* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load %struct.hinic_wqs*, %struct.hinic_wqs** %2, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @wqs_free_page(%struct.hinic_wqs* %25, i32 %26)
  br label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %18

31:                                               ; preds = %18
  %32 = load %struct.hinic_wqs*, %struct.hinic_wqs** %2, align 8
  %33 = call i32 @free_page_arrays(%struct.hinic_wqs* %32)
  ret void
}

declare dso_local i32 @devm_kfree(i32*, i32) #1

declare dso_local i32 @wqs_free_page(%struct.hinic_wqs*, i32) #1

declare dso_local i32 @free_page_arrays(%struct.hinic_wqs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
