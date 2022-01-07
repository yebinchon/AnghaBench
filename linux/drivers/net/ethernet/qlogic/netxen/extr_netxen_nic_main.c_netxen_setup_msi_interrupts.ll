; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_main.c_netxen_setup_msi_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_main.c_netxen_setup_msi_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { i32, %struct.TYPE_4__*, i32, i32, %struct.TYPE_3__, i64, i64, %struct.pci_dev* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.pci_dev = type { i32, i32 }

@NETXEN_NIC_MSIX_ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"using msi-x interrupts\0A\00", align 1
@use_msi = common dso_local global i64 0, align 8
@msi_tgt_status = common dso_local global i32* null, align 8
@NETXEN_NIC_MSI_ENABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"using msi interrupts\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Failed to acquire MSI-X/MSI interrupt vector\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netxen_adapter*, i32)* @netxen_setup_msi_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netxen_setup_msi_interrupts(%struct.netxen_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.netxen_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %10 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %9, i32 0, i32 7
  %11 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  store %struct.pci_dev* %11, %struct.pci_dev** %6, align 8
  %12 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %13 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %12, i32 0, i32 6
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %50

16:                                               ; preds = %2
  %17 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @netxen_init_msix_entries(%struct.netxen_adapter* %17, i32 %18)
  %20 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %21 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %22 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @pci_enable_msix_range(%struct.pci_dev* %20, %struct.TYPE_4__* %23, i32 %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %16
  %30 = load i32, i32* @NETXEN_NIC_MSIX_ENABLED, align 4
  %31 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %32 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %36 = call i32 @netxen_set_msix_bit(%struct.pci_dev* %35, i32 1)
  %37 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %38 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %37, i32 0, i32 5
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %29
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %44 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  br label %45

45:                                               ; preds = %41, %29
  %46 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %47 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 0
  %48 = call i32 @dev_info(i32* %47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %92

49:                                               ; preds = %16
  br label %50

50:                                               ; preds = %49, %2
  %51 = load i64, i64* @use_msi, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %86

53:                                               ; preds = %50
  %54 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %55 = call i32 @pci_enable_msi(%struct.pci_dev* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %86, label %57

57:                                               ; preds = %53
  %58 = load i32*, i32** @msi_tgt_status, align 8
  %59 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %60 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i32, i32* %58, i64 %62
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* @NETXEN_NIC_MSI_ENABLED, align 4
  %66 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %67 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @netxen_get_ioaddr(%struct.netxen_adapter* %70, i32 %71)
  %73 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %74 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %76 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %79 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %78, i32 0, i32 1
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i64 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  store i32 %77, i32* %82, align 4
  %83 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %84 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %83, i32 0, i32 0
  %85 = call i32 @dev_info(i32* %84, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %92

86:                                               ; preds = %53, %50
  %87 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %88 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %87, i32 0, i32 0
  %89 = call i32 @dev_err(i32* %88, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %90 = load i32, i32* @EIO, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %86, %57, %45
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @netxen_init_msix_entries(%struct.netxen_adapter*, i32) #1

declare dso_local i32 @pci_enable_msix_range(%struct.pci_dev*, %struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @netxen_set_msix_bit(%struct.pci_dev*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @pci_enable_msi(%struct.pci_dev*) #1

declare dso_local i32 @netxen_get_ioaddr(%struct.netxen_adapter*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
