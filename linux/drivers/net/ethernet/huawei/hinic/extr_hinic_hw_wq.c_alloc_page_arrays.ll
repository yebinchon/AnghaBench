; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_wq.c_alloc_page_arrays.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_wq.c_alloc_page_arrays.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_wqs = type { i32, i8*, i8*, i8*, %struct.hinic_hwif* }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hinic_wqs*)* @alloc_page_arrays to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_page_arrays(%struct.hinic_wqs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hinic_wqs*, align 8
  %4 = alloca %struct.hinic_hwif*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i64, align 8
  store %struct.hinic_wqs* %0, %struct.hinic_wqs** %3, align 8
  %7 = load %struct.hinic_wqs*, %struct.hinic_wqs** %3, align 8
  %8 = getelementptr inbounds %struct.hinic_wqs, %struct.hinic_wqs* %7, i32 0, i32 4
  %9 = load %struct.hinic_hwif*, %struct.hinic_hwif** %8, align 8
  store %struct.hinic_hwif* %9, %struct.hinic_hwif** %4, align 8
  %10 = load %struct.hinic_hwif*, %struct.hinic_hwif** %4, align 8
  %11 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %10, i32 0, i32 0
  %12 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  store %struct.pci_dev* %12, %struct.pci_dev** %5, align 8
  %13 = load %struct.hinic_wqs*, %struct.hinic_wqs** %3, align 8
  %14 = getelementptr inbounds %struct.hinic_wqs, %struct.hinic_wqs* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 1
  store i64 %17, i64* %6, align 8
  %18 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 0
  %20 = load i64, i64* %6, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i8* @devm_kzalloc(i32* %19, i64 %20, i32 %21)
  %23 = load %struct.hinic_wqs*, %struct.hinic_wqs** %3, align 8
  %24 = getelementptr inbounds %struct.hinic_wqs, %struct.hinic_wqs* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load %struct.hinic_wqs*, %struct.hinic_wqs** %3, align 8
  %26 = getelementptr inbounds %struct.hinic_wqs, %struct.hinic_wqs* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %1
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %85

32:                                               ; preds = %1
  %33 = load %struct.hinic_wqs*, %struct.hinic_wqs** %3, align 8
  %34 = getelementptr inbounds %struct.hinic_wqs, %struct.hinic_wqs* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 1
  store i64 %37, i64* %6, align 8
  %38 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 0
  %40 = load i64, i64* %6, align 8
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i8* @devm_kzalloc(i32* %39, i64 %40, i32 %41)
  %43 = load %struct.hinic_wqs*, %struct.hinic_wqs** %3, align 8
  %44 = getelementptr inbounds %struct.hinic_wqs, %struct.hinic_wqs* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  %45 = load %struct.hinic_wqs*, %struct.hinic_wqs** %3, align 8
  %46 = getelementptr inbounds %struct.hinic_wqs, %struct.hinic_wqs* %45, i32 0, i32 2
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %32
  br label %76

50:                                               ; preds = %32
  %51 = load %struct.hinic_wqs*, %struct.hinic_wqs** %3, align 8
  %52 = getelementptr inbounds %struct.hinic_wqs, %struct.hinic_wqs* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 1
  store i64 %55, i64* %6, align 8
  %56 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %57 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %56, i32 0, i32 0
  %58 = load i64, i64* %6, align 8
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call i8* @devm_kzalloc(i32* %57, i64 %58, i32 %59)
  %61 = load %struct.hinic_wqs*, %struct.hinic_wqs** %3, align 8
  %62 = getelementptr inbounds %struct.hinic_wqs, %struct.hinic_wqs* %61, i32 0, i32 3
  store i8* %60, i8** %62, align 8
  %63 = load %struct.hinic_wqs*, %struct.hinic_wqs** %3, align 8
  %64 = getelementptr inbounds %struct.hinic_wqs, %struct.hinic_wqs* %63, i32 0, i32 3
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %50
  br label %69

68:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %85

69:                                               ; preds = %67
  %70 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %71 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %70, i32 0, i32 0
  %72 = load %struct.hinic_wqs*, %struct.hinic_wqs** %3, align 8
  %73 = getelementptr inbounds %struct.hinic_wqs, %struct.hinic_wqs* %72, i32 0, i32 2
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @devm_kfree(i32* %71, i8* %74)
  br label %76

76:                                               ; preds = %69, %49
  %77 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %78 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %77, i32 0, i32 0
  %79 = load %struct.hinic_wqs*, %struct.hinic_wqs** %3, align 8
  %80 = getelementptr inbounds %struct.hinic_wqs, %struct.hinic_wqs* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @devm_kfree(i32* %78, i8* %81)
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %76, %68, %29
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i8* @devm_kzalloc(i32*, i64, i32) #1

declare dso_local i32 @devm_kfree(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
