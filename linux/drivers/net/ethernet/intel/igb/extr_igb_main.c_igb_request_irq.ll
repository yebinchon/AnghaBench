; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_request_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_request_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i32, i32*, %struct.pci_dev*, %struct.net_device* }
%struct.pci_dev = type { i32, i32 }
%struct.net_device = type { i32 }

@IGB_FLAG_HAS_MSIX = common dso_local global i32 0, align 4
@IGB_FLAG_HAS_MSI = common dso_local global i32 0, align 4
@igb_intr_msi = common dso_local global i32 0, align 4
@igb_intr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Error %d getting interrupt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.igb_adapter*)* @igb_request_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_request_irq(%struct.igb_adapter* %0) #0 {
  %2 = alloca %struct.igb_adapter*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.igb_adapter* %0, %struct.igb_adapter** %2, align 8
  %6 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %6, i32 0, i32 3
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %3, align 8
  %9 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %9, i32 0, i32 2
  %11 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  store %struct.pci_dev* %11, %struct.pci_dev** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @IGB_FLAG_HAS_MSIX, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %43

18:                                               ; preds = %1
  %19 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %20 = call i32 @igb_request_msix(%struct.igb_adapter* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  br label %97

24:                                               ; preds = %18
  %25 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %26 = call i32 @igb_free_all_tx_resources(%struct.igb_adapter* %25)
  %27 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %28 = call i32 @igb_free_all_rx_resources(%struct.igb_adapter* %27)
  %29 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %30 = call i32 @igb_clear_interrupt_scheme(%struct.igb_adapter* %29)
  %31 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %32 = call i32 @igb_init_interrupt_scheme(%struct.igb_adapter* %31, i32 0)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  br label %97

36:                                               ; preds = %24
  %37 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %38 = call i32 @igb_setup_all_tx_resources(%struct.igb_adapter* %37)
  %39 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %40 = call i32 @igb_setup_all_rx_resources(%struct.igb_adapter* %39)
  %41 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %42 = call i32 @igb_configure(%struct.igb_adapter* %41)
  br label %43

43:                                               ; preds = %36, %1
  %44 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %45 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @igb_assign_vector(i32 %48, i32 0)
  %50 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %51 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @IGB_FLAG_HAS_MSI, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %78

56:                                               ; preds = %43
  %57 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %58 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @igb_intr_msi, align 4
  %61 = load %struct.net_device*, %struct.net_device** %3, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %65 = call i32 @request_irq(i32 %59, i32 %60, i32 0, i32 %63, %struct.igb_adapter* %64)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %56
  br label %97

69:                                               ; preds = %56
  %70 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %71 = call i32 @igb_reset_interrupt_capability(%struct.igb_adapter* %70)
  %72 = load i32, i32* @IGB_FLAG_HAS_MSI, align 4
  %73 = xor i32 %72, -1
  %74 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %75 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = and i32 %76, %73
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %69, %43
  %79 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %80 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @igb_intr, align 4
  %83 = load i32, i32* @IRQF_SHARED, align 4
  %84 = load %struct.net_device*, %struct.net_device** %3, align 8
  %85 = getelementptr inbounds %struct.net_device, %struct.net_device* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %88 = call i32 @request_irq(i32 %81, i32 %82, i32 %83, i32 %86, %struct.igb_adapter* %87)
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %5, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %78
  %92 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %93 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %92, i32 0, i32 0
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @dev_err(i32* %93, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %91, %78
  br label %97

97:                                               ; preds = %96, %68, %35, %23
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i32 @igb_request_msix(%struct.igb_adapter*) #1

declare dso_local i32 @igb_free_all_tx_resources(%struct.igb_adapter*) #1

declare dso_local i32 @igb_free_all_rx_resources(%struct.igb_adapter*) #1

declare dso_local i32 @igb_clear_interrupt_scheme(%struct.igb_adapter*) #1

declare dso_local i32 @igb_init_interrupt_scheme(%struct.igb_adapter*, i32) #1

declare dso_local i32 @igb_setup_all_tx_resources(%struct.igb_adapter*) #1

declare dso_local i32 @igb_setup_all_rx_resources(%struct.igb_adapter*) #1

declare dso_local i32 @igb_configure(%struct.igb_adapter*) #1

declare dso_local i32 @igb_assign_vector(i32, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.igb_adapter*) #1

declare dso_local i32 @igb_reset_interrupt_capability(%struct.igb_adapter*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
