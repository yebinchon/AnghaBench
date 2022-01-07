; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_pcie_bus.c_wil_if_pcie_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_pcie_bus.c_wil_if_pcie_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { i32, i32, %struct.pci_dev* }
%struct.pci_dev = type { i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"if_pcie_enable\0A\00", align 1
@n_msi = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Setup %d MSI interrupts\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"MSI interrupts disabled, use INTx\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Invalid n_msi=%d, default to 1\0A\00", align 1
@PCI_IRQ_MSI = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"3 MSI mode failed, try 1 MSI\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"pci_enable_msi failed, use INTx\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"Interrupt pin not routed, unable to use INTx\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wil6210_priv*)* @wil_if_pcie_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wil_if_pcie_enable(%struct.wil6210_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wil6210_priv*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %3, align 8
  %7 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %8 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %7, i32 0, i32 2
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %4, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %14 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_dbg_misc(%struct.wil6210_priv* %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = call i32 @pci_set_master(%struct.pci_dev* %15)
  %17 = load i32, i32* @n_msi, align 4
  switch i32 %17, label %25 [
    i32 3, label %18
    i32 1, label %18
    i32 0, label %22
  ]

18:                                               ; preds = %1, %1
  %19 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %20 = load i32, i32* @n_msi, align 4
  %21 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_dbg_misc(%struct.wil6210_priv* %19, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  br label %29

22:                                               ; preds = %1
  %23 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %24 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_dbg_misc(%struct.wil6210_priv* %23, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %29

25:                                               ; preds = %1
  %26 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %27 = load i32, i32* @n_msi, align 4
  %28 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_err(%struct.wil6210_priv* %26, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %27)
  store i32 1, i32* @n_msi, align 4
  br label %29

29:                                               ; preds = %25, %22, %18
  %30 = load i32, i32* @n_msi, align 4
  %31 = icmp eq i32 %30, 3
  br i1 %31, label %32, label %43

32:                                               ; preds = %29
  %33 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %34 = load i32, i32* @n_msi, align 4
  %35 = load i32, i32* @n_msi, align 4
  %36 = load i32, i32* @PCI_IRQ_MSI, align 4
  %37 = call i32 @pci_alloc_irq_vectors(%struct.pci_dev* %33, i32 %34, i32 %35, i32 %36)
  %38 = load i32, i32* @n_msi, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %42 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_err(%struct.wil6210_priv* %41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* @n_msi, align 4
  br label %43

43:                                               ; preds = %40, %32, %29
  %44 = load i32, i32* @n_msi, align 4
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %48 = call i64 @pci_enable_msi(%struct.pci_dev* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %52 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_err(%struct.wil6210_priv* %51, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* @n_msi, align 4
  br label %53

53:                                               ; preds = %50, %46, %43
  %54 = load i32, i32* @n_msi, align 4
  %55 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %56 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %58 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %53
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %66 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_err(%struct.wil6210_priv* %65, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0))
  %67 = load i32, i32* @ENODEV, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %5, align 4
  br label %100

69:                                               ; preds = %61, %53
  %70 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %71 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %72 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @wil6210_init_irq(%struct.wil6210_priv* %70, i32 %73)
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  br label %97

78:                                               ; preds = %69
  %79 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %80 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %79, i32 0, i32 1
  %81 = call i32 @mutex_lock(i32* %80)
  %82 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %83 = call i32 @wil_reset(%struct.wil6210_priv* %82, i32 0)
  store i32 %83, i32* %5, align 4
  %84 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %85 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %84, i32 0, i32 1
  %86 = call i32 @mutex_unlock(i32* %85)
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %78
  br label %91

90:                                               ; preds = %78
  store i32 0, i32* %2, align 4
  br label %104

91:                                               ; preds = %89
  %92 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %93 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %94 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @wil6210_fini_irq(%struct.wil6210_priv* %92, i32 %95)
  br label %97

97:                                               ; preds = %91, %77
  %98 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %99 = call i32 @pci_free_irq_vectors(%struct.pci_dev* %98)
  br label %100

100:                                              ; preds = %97, %64
  %101 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %102 = call i32 @pci_clear_master(%struct.pci_dev* %101)
  %103 = load i32, i32* %5, align 4
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %100, %90
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @wil_dbg_misc(%struct.wil6210_priv*, i8*, ...) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @wil_err(%struct.wil6210_priv*, i8*, ...) #1

declare dso_local i32 @pci_alloc_irq_vectors(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i64 @pci_enable_msi(%struct.pci_dev*) #1

declare dso_local i32 @wil6210_init_irq(%struct.wil6210_priv*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wil_reset(%struct.wil6210_priv*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wil6210_fini_irq(%struct.wil6210_priv*, i32) #1

declare dso_local i32 @pci_free_irq_vectors(%struct.pci_dev*) #1

declare dso_local i32 @pci_clear_master(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
