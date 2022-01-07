; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-pci.c_xgbe_config_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-pci.c_xgbe_config_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, i32, i32, i32*, i32, i8*, i8*, i8*, i8*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@PCI_IRQ_LEGACY = common dso_local global i32 0, align 4
@PCI_IRQ_MSI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"single IRQ enablement failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"single %s interrupt enabled\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"MSI\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"legacy\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c" dev irq=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c" ecc irq=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c" i2c irq=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"  an irq=%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c" dma%u irq=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_prv_data*)* @xgbe_config_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_config_irqs(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xgbe_prv_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %3, align 8
  %6 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %7 = call i32 @xgbe_config_multi_msi(%struct.xgbe_prv_data* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %83

11:                                               ; preds = %1
  %12 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %13 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %12, i32 0, i32 9
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = load i32, i32* @PCI_IRQ_LEGACY, align 4
  %16 = load i32, i32* @PCI_IRQ_MSI, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @pci_alloc_irq_vectors(%struct.TYPE_3__* %14, i32 1, i32 1, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %11
  %22 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %23 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @dev_info(i32 %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %140

27:                                               ; preds = %11
  %28 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %29 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %28, i32 0, i32 9
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 1, i32 0
  %36 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %37 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %39 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %38, i32 0, i32 1
  store i32 1, i32* %39, align 4
  %40 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %41 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %40, i32 0, i32 2
  store i32 1, i32* %41, align 8
  %42 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %43 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %42, i32 0, i32 9
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = call i8* @pci_irq_vector(%struct.TYPE_3__* %44, i32 0)
  %46 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %47 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %46, i32 0, i32 8
  store i8* %45, i8** %47, align 8
  %48 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %49 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %48, i32 0, i32 9
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = call i8* @pci_irq_vector(%struct.TYPE_3__* %50, i32 0)
  %52 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %53 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %52, i32 0, i32 7
  store i8* %51, i8** %53, align 8
  %54 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %55 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %54, i32 0, i32 9
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = call i8* @pci_irq_vector(%struct.TYPE_3__* %56, i32 0)
  %58 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %59 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %58, i32 0, i32 6
  store i8* %57, i8** %59, align 8
  %60 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %61 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %60, i32 0, i32 9
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = call i8* @pci_irq_vector(%struct.TYPE_3__* %62, i32 0)
  %64 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %65 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %64, i32 0, i32 5
  store i8* %63, i8** %65, align 8
  %66 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %67 = call i64 @netif_msg_probe(%struct.xgbe_prv_data* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %27
  %70 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %71 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %74 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %73, i32 0, i32 9
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)
  %81 = call i32 (i32, i8*, ...) @dev_dbg(i32 %72, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %80)
  br label %82

82:                                               ; preds = %69, %27
  br label %83

83:                                               ; preds = %82, %10
  %84 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %85 = call i64 @netif_msg_probe(%struct.xgbe_prv_data* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %139

87:                                               ; preds = %83
  %88 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %89 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %92 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %91, i32 0, i32 8
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 (i32, i8*, ...) @dev_dbg(i32 %90, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* %93)
  %95 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %96 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %99 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %98, i32 0, i32 7
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 (i32, i8*, ...) @dev_dbg(i32 %97, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %100)
  %102 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %103 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %106 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %105, i32 0, i32 6
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 (i32, i8*, ...) @dev_dbg(i32 %104, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* %107)
  %109 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %110 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %113 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %112, i32 0, i32 5
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 (i32, i8*, ...) @dev_dbg(i32 %111, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8* %114)
  store i32 0, i32* %5, align 4
  br label %116

116:                                              ; preds = %135, %87
  %117 = load i32, i32* %5, align 4
  %118 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %119 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = icmp ult i32 %117, %120
  br i1 %121, label %122, label %138

122:                                              ; preds = %116
  %123 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %124 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* %5, align 4
  %127 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %128 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %127, i32 0, i32 3
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %5, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = call i32 (i32, i8*, ...) @dev_dbg(i32 %125, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %126, i32 %133)
  br label %135

135:                                              ; preds = %122
  %136 = load i32, i32* %5, align 4
  %137 = add i32 %136, 1
  store i32 %137, i32* %5, align 4
  br label %116

138:                                              ; preds = %116
  br label %139

139:                                              ; preds = %138, %83
  store i32 0, i32* %2, align 4
  br label %140

140:                                              ; preds = %139, %21
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local i32 @xgbe_config_multi_msi(%struct.xgbe_prv_data*) #1

declare dso_local i32 @pci_alloc_irq_vectors(%struct.TYPE_3__*, i32, i32, i32) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i8* @pci_irq_vector(%struct.TYPE_3__*, i32) #1

declare dso_local i64 @netif_msg_probe(%struct.xgbe_prv_data*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
