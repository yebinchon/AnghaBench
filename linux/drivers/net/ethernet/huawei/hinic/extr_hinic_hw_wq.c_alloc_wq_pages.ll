; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_wq.c_alloc_wq_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_wq.c_alloc_wq_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_wq = type { i32, i32, i8**, i32* }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Number wq pages exceeds the limit\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Number wq pages must be power of 2\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to allocate wqe shadow\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Failed to allocate wq page\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hinic_wq*, %struct.hinic_hwif*, i32)* @alloc_wq_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_wq_pages(%struct.hinic_wq* %0, %struct.hinic_hwif* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hinic_wq*, align 8
  %6 = alloca %struct.hinic_hwif*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.hinic_wq* %0, %struct.hinic_wq** %5, align 8
  store %struct.hinic_hwif* %1, %struct.hinic_hwif** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.hinic_hwif*, %struct.hinic_hwif** %6, align 8
  %16 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %15, i32 0, i32 0
  %17 = load %struct.pci_dev*, %struct.pci_dev** %16, align 8
  store %struct.pci_dev* %17, %struct.pci_dev** %8, align 8
  %18 = load %struct.hinic_wq*, %struct.hinic_wq** %5, align 8
  %19 = call i32 @WQ_SIZE(%struct.hinic_wq* %18)
  %20 = load %struct.hinic_wq*, %struct.hinic_wq** %5, align 8
  %21 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @ALIGN(i32 %19, i32 %22)
  %24 = load %struct.hinic_wq*, %struct.hinic_wq** %5, align 8
  %25 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sdiv i32 %23, %26
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %3
  %32 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 0
  %34 = call i32 @dev_err(i32* %33, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %110

37:                                               ; preds = %3
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = sub nsw i32 %39, 1
  %41 = and i32 %38, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %45 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %44, i32 0, i32 0
  %46 = call i32 @dev_err(i32* %45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %110

49:                                               ; preds = %37
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.hinic_wq*, %struct.hinic_wq** %5, align 8
  %52 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.hinic_wq*, %struct.hinic_wq** %5, align 8
  %54 = call i32 @alloc_wqes_shadow(%struct.hinic_wq* %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %49
  %58 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %59 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %58, i32 0, i32 0
  %60 = call i32 @dev_err(i32* %59, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %4, align 4
  br label %110

62:                                               ; preds = %49
  store i32 0, i32* %9, align 4
  br label %63

63:                                               ; preds = %99, %62
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %102

67:                                               ; preds = %63
  %68 = load %struct.hinic_wq*, %struct.hinic_wq** %5, align 8
  %69 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %68, i32 0, i32 2
  %70 = load i8**, i8*** %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %70, i64 %72
  store i8** %73, i8*** %12, align 8
  %74 = load %struct.hinic_wq*, %struct.hinic_wq** %5, align 8
  %75 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %74, i32 0, i32 3
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32* %79, i32** %13, align 8
  %80 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %81 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %80, i32 0, i32 0
  %82 = load %struct.hinic_wq*, %struct.hinic_wq** %5, align 8
  %83 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @GFP_KERNEL, align 4
  %86 = call i8* @dma_alloc_coherent(i32* %81, i32 %84, i32* %14, i32 %85)
  %87 = load i8**, i8*** %12, align 8
  store i8* %86, i8** %87, align 8
  %88 = load i8**, i8*** %12, align 8
  %89 = load i8*, i8** %88, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %95, label %91

91:                                               ; preds = %67
  %92 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %93 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %92, i32 0, i32 0
  %94 = call i32 @dev_err(i32* %93, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %103

95:                                               ; preds = %67
  %96 = load i32, i32* %14, align 4
  %97 = call i32 @cpu_to_be64(i32 %96)
  %98 = load i32*, i32** %13, align 8
  store i32 %97, i32* %98, align 4
  br label %99

99:                                               ; preds = %95
  %100 = load i32, i32* %9, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %9, align 4
  br label %63

102:                                              ; preds = %63
  store i32 0, i32* %4, align 4
  br label %110

103:                                              ; preds = %91
  %104 = load %struct.hinic_wq*, %struct.hinic_wq** %5, align 8
  %105 = load %struct.hinic_hwif*, %struct.hinic_hwif** %6, align 8
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @free_wq_pages(%struct.hinic_wq* %104, %struct.hinic_hwif* %105, i32 %106)
  %108 = load i32, i32* @ENOMEM, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %103, %102, %57, %43, %31
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @WQ_SIZE(%struct.hinic_wq*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @alloc_wqes_shadow(%struct.hinic_wq*) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @free_wq_pages(%struct.hinic_wq*, %struct.hinic_hwif*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
