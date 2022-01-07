; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-pci.c_xgbe_config_multi_msi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-pci.c_xgbe_config_multi_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, i32, i32, i32, %struct.TYPE_3__*, i32, i32, i8**, i8*, i8*, i8*, i8*, i32, i32 }
%struct.TYPE_3__ = type { i64 }

@XGBE_MSI_BASE_COUNT = common dso_local global i32 0, align 4
@XGBE_MSI_MIN_COUNT = common dso_local global i32 0, align 4
@PCI_IRQ_MSI = common dso_local global i32 0, align 4
@PCI_IRQ_MSIX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"multi MSI/MSI-X enablement failed\0A\00", align 1
@XGBE_IRQ_MODE_LEVEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"multi %s interrupts enabled\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"MSI-X\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"MSI\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_prv_data*)* @xgbe_config_multi_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_config_multi_msi(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xgbe_prv_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %3, align 8
  %8 = load i32, i32* @XGBE_MSI_BASE_COUNT, align 4
  store i32 %8, i32* %4, align 4
  %9 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %10 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %9, i32 0, i32 13
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %13 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %12, i32 0, i32 12
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @max(i32 %11, i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = zext i32 %16 to i64
  %18 = add nsw i64 %17, %15
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %4, align 4
  %20 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %21 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %20, i32 0, i32 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = load i32, i32* @XGBE_MSI_MIN_COUNT, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @PCI_IRQ_MSI, align 4
  %26 = load i32, i32* @PCI_IRQ_MSIX, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @pci_alloc_irq_vectors(%struct.TYPE_3__* %22, i32 %23, i32 %24, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %1
  %32 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %33 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @dev_info(i32 %34, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %2, align 4
  br label %115

37:                                               ; preds = %1
  %38 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %39 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %42 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %44 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %43, i32 0, i32 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = call i8* @pci_irq_vector(%struct.TYPE_3__* %45, i32 0)
  %47 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %48 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %47, i32 0, i32 11
  store i8* %46, i8** %48, align 8
  %49 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %50 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %49, i32 0, i32 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = call i8* @pci_irq_vector(%struct.TYPE_3__* %51, i32 1)
  %53 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %54 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %53, i32 0, i32 10
  store i8* %52, i8** %54, align 8
  %55 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %56 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %55, i32 0, i32 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = call i8* @pci_irq_vector(%struct.TYPE_3__* %57, i32 2)
  %59 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %60 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %59, i32 0, i32 9
  store i8* %58, i8** %60, align 8
  %61 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %62 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %61, i32 0, i32 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = call i8* @pci_irq_vector(%struct.TYPE_3__* %63, i32 3)
  %65 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %66 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %65, i32 0, i32 8
  store i8* %64, i8** %66, align 8
  %67 = load i32, i32* @XGBE_MSI_BASE_COUNT, align 4
  store i32 %67, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %68

68:                                               ; preds = %84, %37
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp ult i32 %69, %70
  br i1 %71, label %72, label %89

72:                                               ; preds = %68
  %73 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %74 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %73, i32 0, i32 4
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = call i8* @pci_irq_vector(%struct.TYPE_3__* %75, i32 %76)
  %78 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %79 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %78, i32 0, i32 7
  %80 = load i8**, i8*** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %80, i64 %82
  store i8* %77, i8** %83, align 8
  br label %84

84:                                               ; preds = %72
  %85 = load i32, i32* %5, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %6, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %6, align 4
  br label %68

89:                                               ; preds = %68
  %90 = load i32, i32* %6, align 4
  %91 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %92 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  %93 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %94 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %93, i32 0, i32 3
  store i32 1, i32* %94, align 4
  %95 = load i32, i32* @XGBE_IRQ_MODE_LEVEL, align 4
  %96 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %97 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %96, i32 0, i32 6
  store i32 %95, i32* %97, align 4
  %98 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %99 = call i64 @netif_msg_probe(%struct.xgbe_prv_data* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %114

101:                                              ; preds = %89
  %102 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %103 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %106 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %105, i32 0, i32 4
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %113 = call i32 @dev_dbg(i32 %104, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %112)
  br label %114

114:                                              ; preds = %101, %89
  store i32 0, i32* %2, align 4
  br label %115

115:                                              ; preds = %114, %31
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i64 @max(i32, i32) #1

declare dso_local i32 @pci_alloc_irq_vectors(%struct.TYPE_3__*, i32, i32, i32) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i8* @pci_irq_vector(%struct.TYPE_3__*, i32) #1

declare dso_local i64 @netif_msg_probe(%struct.xgbe_prv_data*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
