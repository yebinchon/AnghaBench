; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_init.c_qlcnic_83xx_aer_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_init.c_qlcnic_83xx_aer_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.qlcnic_hardware_context* }
%struct.qlcnic_hardware_context = type { i64, %struct.qlc_83xx_idc }
%struct.qlc_83xx_idc = type { i32 (%struct.qlcnic_adapter.0*)*, i32 }
%struct.qlcnic_adapter.0 = type opaque

@QLC_83XX_IDC_DEV_NEED_RESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_83xx_aer_reset(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca %struct.qlcnic_hardware_context*, align 8
  %5 = alloca %struct.qlc_83xx_idc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  %8 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %8, i32 0, i32 0
  %10 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %9, align 8
  store %struct.qlcnic_hardware_context* %10, %struct.qlcnic_hardware_context** %4, align 8
  %11 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %4, align 8
  %12 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %11, i32 0, i32 1
  store %struct.qlc_83xx_idc* %12, %struct.qlc_83xx_idc** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load i32, i32* @QLC_83XX_IDC_DEV_NEED_RESET, align 4
  %14 = load %struct.qlc_83xx_idc*, %struct.qlc_83xx_idc** %5, align 8
  %15 = getelementptr inbounds %struct.qlc_83xx_idc, %struct.qlc_83xx_idc* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  %16 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %17 = call i64 @qlcnic_83xx_idc_find_reset_owner_id(%struct.qlcnic_adapter* %16)
  store i64 %17, i64* %7, align 8
  %18 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %4, align 8
  %19 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %1
  %24 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %25 = call i32 @qlcnic_83xx_restart_hw(%struct.qlcnic_adapter* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %2, align 4
  br label %41

30:                                               ; preds = %23
  %31 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %32 = call i32 @qlcnic_83xx_idc_clear_registers(%struct.qlcnic_adapter* %31, i32 0)
  br label %33

33:                                               ; preds = %30, %1
  %34 = load %struct.qlc_83xx_idc*, %struct.qlc_83xx_idc** %5, align 8
  %35 = getelementptr inbounds %struct.qlc_83xx_idc, %struct.qlc_83xx_idc* %34, i32 0, i32 0
  %36 = load i32 (%struct.qlcnic_adapter.0*)*, i32 (%struct.qlcnic_adapter.0*)** %35, align 8
  %37 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %38 = bitcast %struct.qlcnic_adapter* %37 to %struct.qlcnic_adapter.0*
  %39 = call i32 %36(%struct.qlcnic_adapter.0* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %33, %28
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i64 @qlcnic_83xx_idc_find_reset_owner_id(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_restart_hw(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_idc_clear_registers(%struct.qlcnic_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
