; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_main.c_netxen_create_diag_entries.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_main.c_netxen_create_diag_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { %struct.pci_dev* }
%struct.pci_dev = type { %struct.device }
%struct.device = type { i32 }

@dev_attr_diag_mode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"failed to create diag_mode sysfs entry\0A\00", align 1
@bin_attr_crb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to create crb sysfs entry\0A\00", align 1
@bin_attr_mem = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to create mem sysfs entry\0A\00", align 1
@bin_attr_dimm = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"failed to create dimm sysfs entry\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netxen_adapter*)* @netxen_create_diag_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netxen_create_diag_entries(%struct.netxen_adapter* %0) #0 {
  %2 = alloca %struct.netxen_adapter*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %2, align 8
  %5 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %5, i32 0, i32 0
  %7 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  store %struct.pci_dev* %7, %struct.pci_dev** %3, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %9 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call i64 @device_create_file(%struct.device* %10, i32* @dev_attr_diag_mode)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call i32 @dev_info(%struct.device* %14, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = call i64 @device_create_bin_file(%struct.device* %17, i32* @bin_attr_crb)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = call i32 @dev_info(%struct.device* %21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %16
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = call i64 @device_create_bin_file(%struct.device* %24, i32* @bin_attr_mem)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = call i32 @dev_info(%struct.device* %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %23
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = call i64 @device_create_bin_file(%struct.device* %31, i32* @bin_attr_dimm)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = call i32 @dev_info(%struct.device* %35, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %30
  ret void
}

declare dso_local i64 @device_create_file(%struct.device*, i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i64 @device_create_bin_file(%struct.device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
