; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sysfs.c_qlcnic_remove_diag_entries.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sysfs.c_qlcnic_remove_diag_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }

@bin_attr_port_stats = common dso_local global i32 0, align 4
@QLCNIC_NON_PRIV_FUNC = common dso_local global i64 0, align 8
@dev_attr_diag_mode = common dso_local global i32 0, align 4
@bin_attr_crb = common dso_local global i32 0, align 4
@bin_attr_mem = common dso_local global i32 0, align 4
@__QLCNIC_MAINTENANCE_MODE = common dso_local global i32 0, align 4
@bin_attr_pci_config = common dso_local global i32 0, align 4
@dev_attr_beacon = common dso_local global i32 0, align 4
@QLCNIC_ESWITCH_ENABLED = common dso_local global i32 0, align 4
@bin_attr_esw_config = common dso_local global i32 0, align 4
@QLCNIC_MGMT_FUNC = common dso_local global i64 0, align 8
@bin_attr_npar_config = common dso_local global i32 0, align 4
@bin_attr_pm_config = common dso_local global i32 0, align 4
@bin_attr_esw_stats = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlcnic_adapter*)* @qlcnic_remove_diag_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlcnic_remove_diag_entries(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca %struct.qlcnic_adapter*, align 8
  %3 = alloca %struct.device*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %2, align 8
  %4 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %4, i32 0, i32 3
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store %struct.device* %7, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call i32 @device_remove_bin_file(%struct.device* %8, i32* @bin_attr_port_stats)
  %10 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @QLCNIC_NON_PRIV_FUNC, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %61

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %3, align 8
  %20 = call i32 @device_remove_file(%struct.device* %19, i32* @dev_attr_diag_mode)
  %21 = load %struct.device*, %struct.device** %3, align 8
  %22 = call i32 @device_remove_bin_file(%struct.device* %21, i32* @bin_attr_crb)
  %23 = load %struct.device*, %struct.device** %3, align 8
  %24 = call i32 @device_remove_bin_file(%struct.device* %23, i32* @bin_attr_mem)
  %25 = load i32, i32* @__QLCNIC_MAINTENANCE_MODE, align 4
  %26 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %27 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %26, i32 0, i32 2
  %28 = call i64 @test_bit(i32 %25, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  br label %61

31:                                               ; preds = %18
  %32 = load %struct.device*, %struct.device** %3, align 8
  %33 = call i32 @device_remove_bin_file(%struct.device* %32, i32* @bin_attr_pci_config)
  %34 = load %struct.device*, %struct.device** %3, align 8
  %35 = call i32 @device_remove_file(%struct.device* %34, i32* @dev_attr_beacon)
  %36 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %37 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @QLCNIC_ESWITCH_ENABLED, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %31
  br label %61

43:                                               ; preds = %31
  %44 = load %struct.device*, %struct.device** %3, align 8
  %45 = call i32 @device_remove_bin_file(%struct.device* %44, i32* @bin_attr_esw_config)
  %46 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %47 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @QLCNIC_MGMT_FUNC, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %61

54:                                               ; preds = %43
  %55 = load %struct.device*, %struct.device** %3, align 8
  %56 = call i32 @device_remove_bin_file(%struct.device* %55, i32* @bin_attr_npar_config)
  %57 = load %struct.device*, %struct.device** %3, align 8
  %58 = call i32 @device_remove_bin_file(%struct.device* %57, i32* @bin_attr_pm_config)
  %59 = load %struct.device*, %struct.device** %3, align 8
  %60 = call i32 @device_remove_bin_file(%struct.device* %59, i32* @bin_attr_esw_stats)
  br label %61

61:                                               ; preds = %54, %53, %42, %30, %17
  ret void
}

declare dso_local i32 @device_remove_bin_file(%struct.device*, i32*) #1

declare dso_local i32 @device_remove_file(%struct.device*, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
