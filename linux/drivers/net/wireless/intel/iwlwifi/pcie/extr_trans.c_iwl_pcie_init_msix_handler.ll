; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_pcie_init_msix_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_pcie_init_msix_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.iwl_trans_pcie = type { i32, i32, i32, %struct.msix_entry* }
%struct.msix_entry = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@iwl_pcie_msix_isr = common dso_local global i32 0, align 4
@iwl_pcie_irq_msix_handler = common dso_local global i32 0, align 4
@iwl_pcie_irq_rx_msix_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Error allocating IRQ %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.iwl_trans_pcie*)* @iwl_pcie_init_msix_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_pcie_init_msix_handler(%struct.pci_dev* %0, %struct.iwl_trans_pcie* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.iwl_trans_pcie*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.msix_entry*, align 8
  %9 = alloca i8*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.iwl_trans_pcie* %1, %struct.iwl_trans_pcie** %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %65, %2
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %13 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %68

16:                                               ; preds = %10
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 0
  %19 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i8* @queue_name(i32* %18, %struct.iwl_trans_pcie* %19, i32 %20)
  store i8* %21, i8** %9, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %16
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %73

27:                                               ; preds = %16
  %28 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %29 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %28, i32 0, i32 3
  %30 = load %struct.msix_entry*, %struct.msix_entry** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %30, i64 %32
  store %struct.msix_entry* %33, %struct.msix_entry** %8, align 8
  %34 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 0
  %36 = load %struct.msix_entry*, %struct.msix_entry** %8, align 8
  %37 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @iwl_pcie_msix_isr, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %42 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %40, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %27
  %46 = load i32, i32* @iwl_pcie_irq_msix_handler, align 4
  br label %49

47:                                               ; preds = %27
  %48 = load i32, i32* @iwl_pcie_irq_rx_msix_handler, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  %51 = load i32, i32* @IRQF_SHARED, align 4
  %52 = load i8*, i8** %9, align 8
  %53 = load %struct.msix_entry*, %struct.msix_entry** %8, align 8
  %54 = call i32 @devm_request_threaded_irq(i32* %35, i32 %38, i32 %39, i32 %50, i32 %51, i8* %52, %struct.msix_entry* %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %49
  %58 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %59 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @IWL_ERR(i32 %60, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %3, align 4
  br label %73

64:                                               ; preds = %49
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %10

68:                                               ; preds = %10
  %69 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %70 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @iwl_pcie_irq_set_affinity(i32 %71)
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %68, %57, %24
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i8* @queue_name(i32*, %struct.iwl_trans_pcie*, i32) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i32, i32, i32, i32, i8*, %struct.msix_entry*) #1

declare dso_local i32 @IWL_ERR(i32, i8*, i32) #1

declare dso_local i32 @iwl_pcie_irq_set_affinity(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
