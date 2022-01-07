; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_init.c_qlcnic_83xx_aer_stop_poll_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_init.c_qlcnic_83xx_aer_stop_poll_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, i32, %struct.qlcnic_hardware_context* }
%struct.qlcnic_hardware_context = type { i64, %struct.qlc_83xx_idc }
%struct.qlc_83xx_idc = type { i32 }

@QLC_83XX_MBX_READY = common dso_local global i32 0, align 4
@QLCNIC_VNIC_MODE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlcnic_83xx_aer_stop_poll_work(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca %struct.qlcnic_adapter*, align 8
  %3 = alloca %struct.qlcnic_hardware_context*, align 8
  %4 = alloca %struct.qlc_83xx_idc*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %2, align 8
  %5 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %5, i32 0, i32 2
  %7 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  store %struct.qlcnic_hardware_context* %7, %struct.qlcnic_hardware_context** %3, align 8
  %8 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %3, align 8
  %9 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %8, i32 0, i32 1
  store %struct.qlc_83xx_idc* %9, %struct.qlc_83xx_idc** %4, align 8
  %10 = load i32, i32* @QLC_83XX_MBX_READY, align 4
  %11 = load %struct.qlc_83xx_idc*, %struct.qlc_83xx_idc** %4, align 8
  %12 = getelementptr inbounds %struct.qlc_83xx_idc, %struct.qlc_83xx_idc* %11, i32 0, i32 0
  %13 = call i32 @clear_bit(i32 %10, i32* %12)
  %14 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %14, i32 0, i32 1
  %16 = call i32 @cancel_delayed_work_sync(i32* %15)
  %17 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %3, align 8
  %18 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @QLCNIC_VNIC_MODE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %24 = call i32 @qlcnic_83xx_disable_vnic_mode(%struct.qlcnic_adapter* %23, i32 1)
  br label %25

25:                                               ; preds = %22, %1
  %26 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %27 = call i32 @qlcnic_83xx_idc_detach_driver(%struct.qlcnic_adapter* %26)
  %28 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %29 = call i32 @qlcnic_83xx_initialize_nic(%struct.qlcnic_adapter* %28, i32 0)
  %30 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %31 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %30, i32 0, i32 0
  %32 = call i32 @cancel_delayed_work_sync(i32* %31)
  ret void
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @qlcnic_83xx_disable_vnic_mode(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_83xx_idc_detach_driver(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_initialize_nic(%struct.qlcnic_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
