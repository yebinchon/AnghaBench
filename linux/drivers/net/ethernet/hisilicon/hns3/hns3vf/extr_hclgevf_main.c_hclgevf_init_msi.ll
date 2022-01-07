; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_init_msi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_init_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclgevf_dev = type { i32, i32, i32*, i8*, i64, i64, i64, %struct.pci_dev* }
%struct.pci_dev = type { i32, i64 }

@PCI_IRQ_MSIX = common dso_local global i32 0, align 4
@HNAE3_MIN_VECTOR_NUM = common dso_local global i64 0, align 8
@PCI_IRQ_MSI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"failed(%d) to allocate MSI/MSI-X vectors\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"requested %d MSI/MSI-X, but allocated %d MSI/MSI-X\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HCLGEVF_INVALID_VPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclgevf_dev*)* @hclgevf_init_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclgevf_init_msi(%struct.hclgevf_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hclgevf_dev*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hclgevf_dev* %0, %struct.hclgevf_dev** %3, align 8
  %7 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %8 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %7, i32 0, i32 7
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %4, align 8
  %10 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %11 = call i64 @hnae3_dev_roce_supported(%struct.hclgevf_dev* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %16 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, 1
  %19 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %20 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @PCI_IRQ_MSIX, align 4
  %23 = call i32 @pci_alloc_irq_vectors(%struct.pci_dev* %14, i64 %18, i32 %21, i32 %22)
  store i32 %23, i32* %5, align 4
  br label %34

24:                                               ; preds = %1
  %25 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %26 = load i64, i64* @HNAE3_MIN_VECTOR_NUM, align 8
  %27 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %28 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @PCI_IRQ_MSI, align 4
  %31 = load i32, i32* @PCI_IRQ_MSIX, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @pci_alloc_irq_vectors(%struct.pci_dev* %25, i64 %26, i32 %29, i32 %32)
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %24, %13
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %143

43:                                               ; preds = %34
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %46 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %43
  %50 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %51 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %50, i32 0, i32 7
  %52 = load %struct.pci_dev*, %struct.pci_dev** %51, align 8
  %53 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %52, i32 0, i32 0
  %54 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %55 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @dev_warn(i32* %53, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %49, %43
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %62 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %65 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %67 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %70 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %69, i32 0, i32 6
  store i64 %68, i64* %70, align 8
  %71 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %72 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %75 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %73, %76
  %78 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %79 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %78, i32 0, i32 5
  store i64 %77, i64* %79, align 8
  %80 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %81 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %80, i32 0, i32 0
  %82 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %83 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @GFP_KERNEL, align 4
  %86 = call i8* @devm_kcalloc(i32* %81, i32 %84, i32 4, i32 %85)
  %87 = bitcast i8* %86 to i32*
  %88 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %89 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %88, i32 0, i32 2
  store i32* %87, i32** %89, align 8
  %90 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %91 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %99, label %94

94:                                               ; preds = %59
  %95 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %96 = call i32 @pci_free_irq_vectors(%struct.pci_dev* %95)
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %2, align 4
  br label %143

99:                                               ; preds = %59
  store i32 0, i32* %6, align 4
  br label %100

100:                                              ; preds = %114, %99
  %101 = load i32, i32* %6, align 4
  %102 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %103 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp slt i32 %101, %104
  br i1 %105, label %106, label %117

106:                                              ; preds = %100
  %107 = load i32, i32* @HCLGEVF_INVALID_VPORT, align 4
  %108 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %109 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  store i32 %107, i32* %113, align 4
  br label %114

114:                                              ; preds = %106
  %115 = load i32, i32* %6, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %6, align 4
  br label %100

117:                                              ; preds = %100
  %118 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %119 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %118, i32 0, i32 0
  %120 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %121 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @GFP_KERNEL, align 4
  %124 = call i8* @devm_kcalloc(i32* %119, i32 %122, i32 4, i32 %123)
  %125 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %126 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %125, i32 0, i32 3
  store i8* %124, i8** %126, align 8
  %127 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %128 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %127, i32 0, i32 3
  %129 = load i8*, i8** %128, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %142, label %131

131:                                              ; preds = %117
  %132 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %133 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %132, i32 0, i32 0
  %134 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %135 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %134, i32 0, i32 2
  %136 = load i32*, i32** %135, align 8
  %137 = call i32 @devm_kfree(i32* %133, i32* %136)
  %138 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %139 = call i32 @pci_free_irq_vectors(%struct.pci_dev* %138)
  %140 = load i32, i32* @ENOMEM, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %2, align 4
  br label %143

142:                                              ; preds = %117
  store i32 0, i32* %2, align 4
  br label %143

143:                                              ; preds = %142, %131, %94, %37
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local i64 @hnae3_dev_roce_supported(%struct.hclgevf_dev*) #1

declare dso_local i32 @pci_alloc_irq_vectors(%struct.pci_dev*, i64, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #1

declare dso_local i8* @devm_kcalloc(i32*, i32, i32, i32) #1

declare dso_local i32 @pci_free_irq_vectors(%struct.pci_dev*) #1

declare dso_local i32 @devm_kfree(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
