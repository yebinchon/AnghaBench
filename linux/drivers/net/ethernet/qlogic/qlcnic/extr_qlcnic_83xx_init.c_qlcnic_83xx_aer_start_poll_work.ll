; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_init.c_qlcnic_83xx_aer_start_poll_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_init.c_qlcnic_83xx_aer_start_poll_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.qlcnic_hardware_context* }
%struct.qlcnic_hardware_context = type { i64, %struct.qlc_83xx_idc }
%struct.qlc_83xx_idc = type { i32 }

@QLC_83XX_IDC_DEV_READY = common dso_local global i32 0, align 4
@qlcnic_83xx_idc_poll_dev_state = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlcnic_83xx_aer_start_poll_work(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca %struct.qlcnic_adapter*, align 8
  %3 = alloca %struct.qlcnic_hardware_context*, align 8
  %4 = alloca %struct.qlc_83xx_idc*, align 8
  %5 = alloca i64, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %2, align 8
  %6 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %6, i32 0, i32 0
  %8 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %7, align 8
  store %struct.qlcnic_hardware_context* %8, %struct.qlcnic_hardware_context** %3, align 8
  %9 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %3, align 8
  %10 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %9, i32 0, i32 1
  store %struct.qlc_83xx_idc* %10, %struct.qlc_83xx_idc** %4, align 8
  %11 = load i32, i32* @QLC_83XX_IDC_DEV_READY, align 4
  %12 = load %struct.qlc_83xx_idc*, %struct.qlc_83xx_idc** %4, align 8
  %13 = getelementptr inbounds %struct.qlc_83xx_idc, %struct.qlc_83xx_idc* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %15 = call i64 @qlcnic_83xx_idc_find_reset_owner_id(%struct.qlcnic_adapter* %14)
  store i64 %15, i64* %5, align 8
  %16 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %3, align 8
  %17 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %23 = call i32 @qlcnic_83xx_idc_enter_ready_state(%struct.qlcnic_adapter* %22, i32 0)
  br label %24

24:                                               ; preds = %21, %1
  %25 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %26 = load i32, i32* @qlcnic_83xx_idc_poll_dev_state, align 4
  %27 = call i32 @qlcnic_schedule_work(%struct.qlcnic_adapter* %25, i32 %26, i32 0)
  ret void
}

declare dso_local i64 @qlcnic_83xx_idc_find_reset_owner_id(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_idc_enter_ready_state(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_schedule_work(%struct.qlcnic_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
