; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_main.c_netxen_setup_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_main.c_netxen_setup_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { i32, i32, %struct.TYPE_2__*, i64, %struct.pci_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32, i32 }

@MSIX_ENTRIES_PER_ADAPTER = common dso_local global i64 0, align 8
@NETXEN_NIC_MSI_ENABLED = common dso_local global i32 0, align 4
@NETXEN_NIC_MSIX_ENABLED = common dso_local global i32 0, align 4
@NETXEN_MSI_MODE = common dso_local global i64 0, align 8
@NETXEN_INTX_MODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [64 x i8] c"Co-existence of MSI-X/MSI and INTx interrupts is not supported\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"using legacy interrupts\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netxen_adapter*)* @netxen_setup_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netxen_setup_intr(%struct.netxen_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.netxen_adapter*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %3, align 8
  %6 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %6, i32 0, i32 4
  %8 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  store %struct.pci_dev* %8, %struct.pci_dev** %4, align 8
  %9 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = call i64 (...) @num_online_cpus()
  %15 = load i64, i64* @MSIX_ENTRIES_PER_ADAPTER, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i64, i64* @MSIX_ENTRIES_PER_ADAPTER, align 8
  br label %20

19:                                               ; preds = %13
  br label %20

20:                                               ; preds = %19, %17
  %21 = phi i64 [ %18, %17 ], [ 2, %19 ]
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %5, align 4
  br label %24

23:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  br label %24

24:                                               ; preds = %23, %20
  %25 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %26 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load i32, i32* @NETXEN_NIC_MSI_ENABLED, align 4
  %28 = load i32, i32* @NETXEN_NIC_MSIX_ENABLED, align 4
  %29 = or i32 %27, %28
  %30 = xor i32 %29, -1
  %31 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %32 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %36 = call i32 @netxen_initialize_interrupt_registers(%struct.netxen_adapter* %35)
  %37 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %38 = call i32 @netxen_set_msix_bit(%struct.pci_dev* %37, i32 0)
  %39 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %40 = call i64 @netxen_function_zero(%struct.pci_dev* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %24
  %43 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i64 @netxen_setup_msi_interrupts(%struct.netxen_adapter* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %42
  %48 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %49 = load i64, i64* @NETXEN_MSI_MODE, align 8
  %50 = call i32 @netxen_set_interrupt_mode(%struct.netxen_adapter* %48, i64 %49)
  br label %55

51:                                               ; preds = %42
  %52 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %53 = load i64, i64* @NETXEN_INTX_MODE, align 8
  %54 = call i32 @netxen_set_interrupt_mode(%struct.netxen_adapter* %52, i64 %53)
  br label %55

55:                                               ; preds = %51, %47
  br label %73

56:                                               ; preds = %24
  %57 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %58 = call i64 @netxen_get_interrupt_mode(%struct.netxen_adapter* %57)
  %59 = load i64, i64* @NETXEN_MSI_MODE, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %56
  %62 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i64 @netxen_setup_msi_interrupts(%struct.netxen_adapter* %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %68 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %67, i32 0, i32 0
  %69 = call i32 @dev_err(i32* %68, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %70 = load i32, i32* @EIO, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %90

72:                                               ; preds = %61, %56
  br label %73

73:                                               ; preds = %72, %55
  %74 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %75 = call i32 @NETXEN_IS_MSI_FAMILY(%struct.netxen_adapter* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %89, label %77

77:                                               ; preds = %73
  %78 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %79 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %82 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %81, i32 0, i32 2
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store i32 %80, i32* %85, align 4
  %86 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %87 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %86, i32 0, i32 0
  %88 = call i32 @dev_info(i32* %87, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %89

89:                                               ; preds = %77, %73
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %89, %66
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i64 @num_online_cpus(...) #1

declare dso_local i32 @netxen_initialize_interrupt_registers(%struct.netxen_adapter*) #1

declare dso_local i32 @netxen_set_msix_bit(%struct.pci_dev*, i32) #1

declare dso_local i64 @netxen_function_zero(%struct.pci_dev*) #1

declare dso_local i64 @netxen_setup_msi_interrupts(%struct.netxen_adapter*, i32) #1

declare dso_local i32 @netxen_set_interrupt_mode(%struct.netxen_adapter*, i64) #1

declare dso_local i64 @netxen_get_interrupt_mode(%struct.netxen_adapter*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @NETXEN_IS_MSI_FAMILY(%struct.netxen_adapter*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
