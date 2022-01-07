; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_vnic.c_qlcnic_83xx_disable_vnic_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_vnic.c_qlcnic_83xx_disable_vnic_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.qlcnic_hardware_context* }
%struct.qlcnic_hardware_context = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@QLC_83XX_VNIC_STATE = common dso_local global i32 0, align 4
@QLCNIC_DEV_NPAR_NON_OPER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_83xx_disable_vnic_mode(%struct.qlcnic_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qlcnic_hardware_context*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %8 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %7, i32 0, i32 0
  %9 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %8, align 8
  store %struct.qlcnic_hardware_context* %9, %struct.qlcnic_hardware_context** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %14 = call i64 @qlcnic_83xx_lock_driver(%struct.qlcnic_adapter* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %37

19:                                               ; preds = %12
  br label %20

20:                                               ; preds = %19, %2
  %21 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %22 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %21, i32 0, i32 0
  %23 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %22, align 8
  %24 = load i32, i32* @QLC_83XX_VNIC_STATE, align 4
  %25 = load i32, i32* @QLCNIC_DEV_NPAR_NON_OPER, align 4
  %26 = call i32 @QLCWRX(%struct.qlcnic_hardware_context* %23, i32 %24, i32 %25)
  %27 = load i32, i32* @QLCNIC_DEV_NPAR_NON_OPER, align 4
  %28 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %29 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %20
  %34 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %35 = call i32 @qlcnic_83xx_unlock_driver(%struct.qlcnic_adapter* %34)
  br label %36

36:                                               ; preds = %33, %20
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %16
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i64 @qlcnic_83xx_lock_driver(%struct.qlcnic_adapter*) #1

declare dso_local i32 @QLCWRX(%struct.qlcnic_hardware_context*, i32, i32) #1

declare dso_local i32 @qlcnic_83xx_unlock_driver(%struct.qlcnic_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
