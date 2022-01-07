; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_init.c_qlcnic_83xx_idc_cold_state_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_init.c_qlcnic_83xx_idc_cold_state_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32 }

@qlcnic_load_fw_file = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*)* @qlcnic_83xx_idc_cold_state_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_83xx_idc_cold_state_handler(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  %4 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %5 = call i32 @qlcnic_83xx_idc_update_drv_presence_reg(%struct.qlcnic_adapter* %4, i32 1, i32 0)
  %6 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %7 = call i32 @qlcnic_83xx_idc_update_audit_reg(%struct.qlcnic_adapter* %6, i32 1, i32 0)
  %8 = load i64, i64* @qlcnic_load_fw_file, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %12 = call i32 @qlcnic_83xx_idc_restart_hw(%struct.qlcnic_adapter* %11, i32 0)
  br label %26

13:                                               ; preds = %1
  %14 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %15 = call i64 @qlcnic_83xx_check_hw_status(%struct.qlcnic_adapter* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %19 = call i32 @qlcnic_83xx_idc_enter_failed_state(%struct.qlcnic_adapter* %18, i32 0)
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %27

22:                                               ; preds = %13
  %23 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %24 = call i32 @qlcnic_83xx_idc_enter_ready_state(%struct.qlcnic_adapter* %23, i32 0)
  br label %25

25:                                               ; preds = %22
  br label %26

26:                                               ; preds = %25, %10
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %17
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @qlcnic_83xx_idc_update_drv_presence_reg(%struct.qlcnic_adapter*, i32, i32) #1

declare dso_local i32 @qlcnic_83xx_idc_update_audit_reg(%struct.qlcnic_adapter*, i32, i32) #1

declare dso_local i32 @qlcnic_83xx_idc_restart_hw(%struct.qlcnic_adapter*, i32) #1

declare dso_local i64 @qlcnic_83xx_check_hw_status(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_idc_enter_failed_state(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_83xx_idc_enter_ready_state(%struct.qlcnic_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
