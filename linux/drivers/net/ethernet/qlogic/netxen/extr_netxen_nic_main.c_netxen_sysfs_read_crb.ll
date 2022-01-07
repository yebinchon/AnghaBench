; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_main.c_netxen_sysfs_read_crb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_main.c_netxen_sysfs_read_crb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { i32 }
%struct.device = type { i32 }
%struct.netxen_adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NETXEN_PCI_CAMQM = common dso_local global i32 0, align 4
@NETXEN_PCI_CAMQM_2M_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i32, i64)* @netxen_sysfs_read_crb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netxen_sysfs_read_crb(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, i8* %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.kobject*, align 8
  %10 = alloca %struct.bin_attribute*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.device*, align 8
  %15 = alloca %struct.netxen_adapter*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.kobject* %1, %struct.kobject** %9, align 8
  store %struct.bin_attribute* %2, %struct.bin_attribute** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %19 = load %struct.kobject*, %struct.kobject** %9, align 8
  %20 = call %struct.device* @kobj_to_dev(%struct.kobject* %19)
  store %struct.device* %20, %struct.device** %14, align 8
  %21 = load %struct.device*, %struct.device** %14, align 8
  %22 = call %struct.netxen_adapter* @dev_get_drvdata(%struct.device* %21)
  store %struct.netxen_adapter* %22, %struct.netxen_adapter** %15, align 8
  %23 = load %struct.netxen_adapter*, %struct.netxen_adapter** %15, align 8
  %24 = load i32, i32* %12, align 4
  %25 = load i64, i64* %13, align 8
  %26 = call i32 @netxen_sysfs_validate_crb(%struct.netxen_adapter* %23, i32 %24, i64 %25)
  store i32 %26, i32* %18, align 4
  %27 = load i32, i32* %18, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %6
  %30 = load i32, i32* %18, align 4
  store i32 %30, i32* %7, align 4
  br label %61

31:                                               ; preds = %6
  %32 = load %struct.netxen_adapter*, %struct.netxen_adapter** %15, align 8
  %33 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @NX_IS_REVISION_P3(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %31
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @NETXEN_PCI_CAMQM, align 4
  %41 = load i32, i32* @NETXEN_PCI_CAMQM_2M_END, align 4
  %42 = call i64 @ADDR_IN_RANGE(i32 %39, i32 %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load %struct.netxen_adapter*, %struct.netxen_adapter** %15, align 8
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @netxen_pci_camqm_read_2M(%struct.netxen_adapter* %45, i32 %46, i32* %17)
  %48 = load i8*, i8** %11, align 8
  %49 = load i64, i64* %13, align 8
  %50 = call i32 @memcpy(i8* %48, i32* %17, i64 %49)
  br label %58

51:                                               ; preds = %38, %31
  %52 = load %struct.netxen_adapter*, %struct.netxen_adapter** %15, align 8
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @NXRD32(%struct.netxen_adapter* %52, i32 %53)
  store i32 %54, i32* %16, align 4
  %55 = load i8*, i8** %11, align 8
  %56 = load i64, i64* %13, align 8
  %57 = call i32 @memcpy(i8* %55, i32* %16, i64 %56)
  br label %58

58:                                               ; preds = %51, %44
  %59 = load i64, i64* %13, align 8
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %58, %29
  %62 = load i32, i32* %7, align 4
  ret i32 %62
}

declare dso_local %struct.device* @kobj_to_dev(%struct.kobject*) #1

declare dso_local %struct.netxen_adapter* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @netxen_sysfs_validate_crb(%struct.netxen_adapter*, i32, i64) #1

declare dso_local i64 @NX_IS_REVISION_P3(i32) #1

declare dso_local i64 @ADDR_IN_RANGE(i32, i32, i32) #1

declare dso_local i32 @netxen_pci_camqm_read_2M(%struct.netxen_adapter*, i32, i32*) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

declare dso_local i32 @NXRD32(%struct.netxen_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
