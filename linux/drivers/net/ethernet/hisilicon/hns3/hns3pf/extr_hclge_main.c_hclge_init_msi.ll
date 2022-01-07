; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_init_msi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_init_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i32, i32, i8*, i32*, i64, i64, i64, %struct.pci_dev* }
%struct.pci_dev = type { i32, i64 }

@HNAE3_MIN_VECTOR_NUM = common dso_local global i32 0, align 4
@PCI_IRQ_MSI = common dso_local global i32 0, align 4
@PCI_IRQ_MSIX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"failed(%d) to allocate MSI/MSI-X vectors\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"requested %d MSI/MSI-X, but allocated %d MSI/MSI-X\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HCLGE_INVALID_VPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*)* @hclge_init_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_init_msi(%struct.hclge_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hclge_dev*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %3, align 8
  %7 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %8 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %7, i32 0, i32 7
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %4, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = load i32, i32* @HNAE3_MIN_VECTOR_NUM, align 4
  %12 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %13 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @PCI_IRQ_MSI, align 4
  %16 = load i32, i32* @PCI_IRQ_MSIX, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @pci_alloc_irq_vectors(%struct.pci_dev* %10, i32 %11, i32 %14, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @dev_err(i32* %23, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %121

27:                                               ; preds = %1
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %30 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %27
  %34 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %35 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %34, i32 0, i32 7
  %36 = load %struct.pci_dev*, %struct.pci_dev** %35, align 8
  %37 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %36, i32 0, i32 0
  %38 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %39 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @dev_warn(i32* %37, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %33, %27
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %46 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %49 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %51 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %54 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %53, i32 0, i32 5
  store i64 %52, i64* %54, align 8
  %55 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %56 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %55, i32 0, i32 5
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %59 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %57, %60
  %62 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %63 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %62, i32 0, i32 6
  store i64 %61, i64* %63, align 8
  %64 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %65 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %64, i32 0, i32 0
  %66 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %67 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = call i8* @devm_kcalloc(i32* %65, i32 %68, i32 4, i32 %69)
  %71 = bitcast i8* %70 to i32*
  %72 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %73 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %72, i32 0, i32 3
  store i32* %71, i32** %73, align 8
  %74 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %75 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %74, i32 0, i32 3
  %76 = load i32*, i32** %75, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %83, label %78

78:                                               ; preds = %43
  %79 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %80 = call i32 @pci_free_irq_vectors(%struct.pci_dev* %79)
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %2, align 4
  br label %121

83:                                               ; preds = %43
  store i32 0, i32* %6, align 4
  br label %84

84:                                               ; preds = %98, %83
  %85 = load i32, i32* %6, align 4
  %86 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %87 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %101

90:                                               ; preds = %84
  %91 = load i32, i32* @HCLGE_INVALID_VPORT, align 4
  %92 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %93 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %92, i32 0, i32 3
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  store i32 %91, i32* %97, align 4
  br label %98

98:                                               ; preds = %90
  %99 = load i32, i32* %6, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %6, align 4
  br label %84

101:                                              ; preds = %84
  %102 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %103 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %102, i32 0, i32 0
  %104 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %105 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @GFP_KERNEL, align 4
  %108 = call i8* @devm_kcalloc(i32* %103, i32 %106, i32 4, i32 %107)
  %109 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %110 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %109, i32 0, i32 2
  store i8* %108, i8** %110, align 8
  %111 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %112 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %111, i32 0, i32 2
  %113 = load i8*, i8** %112, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %120, label %115

115:                                              ; preds = %101
  %116 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %117 = call i32 @pci_free_irq_vectors(%struct.pci_dev* %116)
  %118 = load i32, i32* @ENOMEM, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %2, align 4
  br label %121

120:                                              ; preds = %101
  store i32 0, i32* %2, align 4
  br label %121

121:                                              ; preds = %120, %115, %78, %21
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local i32 @pci_alloc_irq_vectors(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #1

declare dso_local i8* @devm_kcalloc(i32*, i32, i32, i32) #1

declare dso_local i32 @pci_free_irq_vectors(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
