; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_vf_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_vf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, i32, %struct.TYPE_4__*, i32, i64, i64, %struct.qlcnic_hardware_context* }
%struct.TYPE_4__ = type { i32 }
%struct.qlcnic_hardware_context = type { i32, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@QLC_83XX_MODULE_LOADED = common dso_local global i32 0, align 4
@QLC_83XX_IDC_FW_POLL_DELAY = common dso_local global i32 0, align 4
@QLCNIC_TX_INTR_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to read mac addr\0A\00", align 1
@qlcnic_83xx_idc_aen_work = common dso_local global i32 0, align 4
@__QLCNIC_RESETTING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_sriov_vf_init(%struct.qlcnic_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qlcnic_hardware_context*, align 8
  %7 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %9 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %8, i32 0, i32 6
  %10 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %9, align 8
  store %struct.qlcnic_hardware_context* %10, %struct.qlcnic_hardware_context** %6, align 8
  %11 = load i32, i32* @QLC_83XX_MODULE_LOADED, align 4
  %12 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %13 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = call i32 @set_bit(i32 %11, i32* %14)
  %16 = load i32, i32* @QLC_83XX_IDC_FW_POLL_DELAY, align 4
  %17 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %18 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 8
  %20 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %21 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %23 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %22, i32 0, i32 5
  store i64 0, i64* %23, align 8
  %24 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %25 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %27 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %26, i32 0, i32 4
  store i64 0, i64* %27, align 8
  %28 = load i32, i32* @QLCNIC_TX_INTR_SHARED, align 4
  %29 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %30 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 8
  %33 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %34 = call i32 @qlcnic_sriov_check_dev_ready(%struct.qlcnic_adapter* %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %2
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %66

39:                                               ; preds = %2
  %40 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @qlcnic_sriov_setup_vf(%struct.qlcnic_adapter* %40, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %3, align 4
  br label %66

47:                                               ; preds = %39
  %48 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %49 = call i64 @qlcnic_read_mac_addr(%struct.qlcnic_adapter* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %53 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %52, i32 0, i32 2
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = call i32 @dev_warn(i32* %55, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %51, %47
  %58 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %59 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %58, i32 0, i32 1
  %60 = load i32, i32* @qlcnic_83xx_idc_aen_work, align 4
  %61 = call i32 @INIT_DELAYED_WORK(i32* %59, i32 %60)
  %62 = load i32, i32* @__QLCNIC_RESETTING, align 4
  %63 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %64 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %63, i32 0, i32 0
  %65 = call i32 @clear_bit(i32 %62, i32* %64)
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %57, %45, %37
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @qlcnic_sriov_check_dev_ready(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_sriov_setup_vf(%struct.qlcnic_adapter*, i32) #1

declare dso_local i64 @qlcnic_read_mac_addr(%struct.qlcnic_adapter*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
