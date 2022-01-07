; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_request_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_request_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alx_priv = type { %struct.TYPE_2__*, %struct.alx_hw }
%struct.TYPE_2__ = type { i32 }
%struct.alx_hw = type { i32, %struct.pci_dev* }
%struct.pci_dev = type { i64, i64 }

@ALX_MSI_RETRANS_TM_SHIFT = common dso_local global i32 0, align 4
@ALX_MSI_RETRANS_TIMER = common dso_local global i32 0, align 4
@ALX_MSI_MASK_SEL_LINE = common dso_local global i32 0, align 4
@alx_intr_msi = common dso_local global i32 0, align 4
@alx_intr_legacy = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"IRQ registration failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.alx_priv*)* @alx_request_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alx_request_irq(%struct.alx_priv* %0) #0 {
  %2 = alloca %struct.alx_priv*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.alx_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.alx_priv* %0, %struct.alx_priv** %2, align 8
  %7 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %8 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %8, i32 0, i32 1
  %10 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  store %struct.pci_dev* %10, %struct.pci_dev** %3, align 8
  %11 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %12 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %11, i32 0, i32 1
  store %struct.alx_hw* %12, %struct.alx_hw** %4, align 8
  %13 = load %struct.alx_hw*, %struct.alx_hw** %4, align 8
  %14 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = ashr i32 %15, 1
  %17 = load i32, i32* @ALX_MSI_RETRANS_TM_SHIFT, align 4
  %18 = shl i32 %16, %17
  store i32 %18, i32* %6, align 4
  %19 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %20 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %20, i32 0, i32 1
  %22 = load %struct.pci_dev*, %struct.pci_dev** %21, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %1
  %27 = load %struct.alx_hw*, %struct.alx_hw** %4, align 8
  %28 = load i32, i32* @ALX_MSI_RETRANS_TIMER, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @alx_write_mem32(%struct.alx_hw* %27, i32 %28, i32 %29)
  %31 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %32 = call i32 @alx_request_msix(%struct.alx_priv* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %26
  br label %92

36:                                               ; preds = %26
  %37 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %38 = call i32 @alx_realloc_resources(%struct.alx_priv* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %92

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42, %1
  %44 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %45 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %45, i32 0, i32 1
  %47 = load %struct.pci_dev*, %struct.pci_dev** %46, align 8
  %48 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %77

51:                                               ; preds = %43
  %52 = load %struct.alx_hw*, %struct.alx_hw** %4, align 8
  %53 = load i32, i32* @ALX_MSI_RETRANS_TIMER, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @ALX_MSI_MASK_SEL_LINE, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @alx_write_mem32(%struct.alx_hw* %52, i32 %53, i32 %56)
  %58 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %59 = call i32 @pci_irq_vector(%struct.pci_dev* %58, i32 0)
  %60 = load i32, i32* @alx_intr_msi, align 4
  %61 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %62 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %67 = call i32 @request_irq(i32 %59, i32 %60, i32 0, i32 %65, %struct.alx_priv* %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %51
  br label %92

71:                                               ; preds = %51
  %72 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %73 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %73, i32 0, i32 1
  %75 = load %struct.pci_dev*, %struct.pci_dev** %74, align 8
  %76 = call i32 @pci_free_irq_vectors(%struct.pci_dev* %75)
  br label %77

77:                                               ; preds = %71, %43
  %78 = load %struct.alx_hw*, %struct.alx_hw** %4, align 8
  %79 = load i32, i32* @ALX_MSI_RETRANS_TIMER, align 4
  %80 = call i32 @alx_write_mem32(%struct.alx_hw* %78, i32 %79, i32 0)
  %81 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %82 = call i32 @pci_irq_vector(%struct.pci_dev* %81, i32 0)
  %83 = load i32, i32* @alx_intr_legacy, align 4
  %84 = load i32, i32* @IRQF_SHARED, align 4
  %85 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %86 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %91 = call i32 @request_irq(i32 %82, i32 %83, i32 %84, i32 %89, %struct.alx_priv* %90)
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %77, %70, %41, %35
  %93 = load i32, i32* %5, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %92
  %96 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %97 = call i32 @alx_config_vector_mapping(%struct.alx_priv* %96)
  br label %103

98:                                               ; preds = %92
  %99 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %100 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %99, i32 0, i32 0
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = call i32 @netdev_err(%struct.TYPE_2__* %101, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %103

103:                                              ; preds = %98, %95
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i32 @alx_write_mem32(%struct.alx_hw*, i32, i32) #1

declare dso_local i32 @alx_request_msix(%struct.alx_priv*) #1

declare dso_local i32 @alx_realloc_resources(%struct.alx_priv*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.alx_priv*) #1

declare dso_local i32 @pci_irq_vector(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_free_irq_vectors(%struct.pci_dev*) #1

declare dso_local i32 @alx_config_vector_mapping(%struct.alx_priv*) #1

declare dso_local i32 @netdev_err(%struct.TYPE_2__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
