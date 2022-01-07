; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_enable_msix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_enable_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32, i32*, i32, i32, %struct.TYPE_2__, %struct.goya_device* }
%struct.TYPE_2__ = type { i32 }
%struct.goya_device = type { i32 }

@HW_CAP_MSIX = common dso_local global i32 0, align 4
@GOYA_MSIX_ENTRIES = common dso_local global i32 0, align 4
@PCI_IRQ_MSIX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"MSI-X: Failed to enable support -- %d/%d\0A\00", align 1
@hl_irq_handler_cq = common dso_local global i32 0, align 4
@goya_irq_name = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to request IRQ %d\00", align 1
@GOYA_EVENT_QUEUE_MSIX_IDX = common dso_local global i64 0, align 8
@hl_irq_handler_eq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hl_device*)* @goya_enable_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goya_enable_msix(%struct.hl_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hl_device*, align 8
  %4 = alloca %struct.goya_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %3, align 8
  %10 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %11 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %10, i32 0, i32 5
  %12 = load %struct.goya_device*, %struct.goya_device** %11, align 8
  store %struct.goya_device* %12, %struct.goya_device** %4, align 8
  %13 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %14 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  %17 = load %struct.goya_device*, %struct.goya_device** %4, align 8
  %18 = getelementptr inbounds %struct.goya_device, %struct.goya_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @HW_CAP_MSIX, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %138

24:                                               ; preds = %1
  %25 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %26 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @GOYA_MSIX_ENTRIES, align 4
  %29 = load i32, i32* @GOYA_MSIX_ENTRIES, align 4
  %30 = load i32, i32* @PCI_IRQ_MSIX, align 4
  %31 = call i32 @pci_alloc_irq_vectors(i32 %27, i32 %28, i32 %29, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %24
  %35 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %36 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @GOYA_MSIX_ENTRIES, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %37, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %2, align 4
  br label %138

42:                                               ; preds = %24
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %76, %42
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %81

47:                                               ; preds = %43
  %48 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %49 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @pci_irq_vector(i32 %50, i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @hl_irq_handler_cq, align 4
  %55 = load i32*, i32** @goya_irq_name, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %61 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = call i32 @request_irq(i32 %53, i32 %54, i32 0, i32 %59, i32* %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %47
  %70 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %71 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %72, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  br label %111

75:                                               ; preds = %47
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %8, align 4
  br label %43

81:                                               ; preds = %43
  %82 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %83 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i64, i64* @GOYA_EVENT_QUEUE_MSIX_IDX, align 8
  %86 = trunc i64 %85 to i32
  %87 = call i32 @pci_irq_vector(i32 %84, i32 %86)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @hl_irq_handler_eq, align 4
  %90 = load i32*, i32** @goya_irq_name, align 8
  %91 = load i64, i64* @GOYA_EVENT_QUEUE_MSIX_IDX, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %95 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %94, i32 0, i32 3
  %96 = call i32 @request_irq(i32 %88, i32 %89, i32 0, i32 %93, i32* %95)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %81
  %100 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %101 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %102, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  br label %111

105:                                              ; preds = %81
  %106 = load i32, i32* @HW_CAP_MSIX, align 4
  %107 = load %struct.goya_device*, %struct.goya_device** %4, align 8
  %108 = getelementptr inbounds %struct.goya_device, %struct.goya_device* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 4
  store i32 0, i32* %2, align 4
  br label %138

111:                                              ; preds = %99, %69
  store i32 0, i32* %7, align 4
  br label %112

112:                                              ; preds = %129, %111
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* %8, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %132

116:                                              ; preds = %112
  %117 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %118 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %7, align 4
  %121 = call i32 @pci_irq_vector(i32 %119, i32 %120)
  %122 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %123 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = call i32 @free_irq(i32 %121, i32* %127)
  br label %129

129:                                              ; preds = %116
  %130 = load i32, i32* %7, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %7, align 4
  br label %112

132:                                              ; preds = %112
  %133 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %134 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @pci_free_irq_vectors(i32 %135)
  %137 = load i32, i32* %6, align 4
  store i32 %137, i32* %2, align 4
  br label %138

138:                                              ; preds = %132, %105, %34, %23
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local i32 @pci_alloc_irq_vectors(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @pci_irq_vector(i32, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @free_irq(i32, i32*) #1

declare dso_local i32 @pci_free_irq_vectors(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
