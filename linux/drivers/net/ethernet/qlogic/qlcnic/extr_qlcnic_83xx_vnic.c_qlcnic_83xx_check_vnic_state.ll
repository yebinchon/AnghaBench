; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_vnic.c_qlcnic_83xx_check_vnic_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_vnic.c_qlcnic_83xx_check_vnic_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_2__*, %struct.qlcnic_hardware_context* }
%struct.TYPE_2__ = type { i32 }
%struct.qlcnic_hardware_context = type { %struct.qlc_83xx_idc }
%struct.qlc_83xx_idc = type { i64 }

@QLC_83XX_VNIC_STATE = common dso_local global i32 0, align 4
@QLCNIC_DEV_NPAR_OPER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"vNIC mode not operational, state check timed out.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_83xx_check_vnic_state(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca %struct.qlcnic_hardware_context*, align 8
  %5 = alloca %struct.qlc_83xx_idc*, align 8
  %6 = alloca i64, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  %7 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %7, i32 0, i32 1
  %9 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %8, align 8
  store %struct.qlcnic_hardware_context* %9, %struct.qlcnic_hardware_context** %4, align 8
  %10 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %4, align 8
  %11 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %10, i32 0, i32 0
  store %struct.qlc_83xx_idc* %11, %struct.qlc_83xx_idc** %5, align 8
  %12 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %4, align 8
  %13 = load i32, i32* @QLC_83XX_VNIC_STATE, align 4
  %14 = call i64 @QLCRDX(%struct.qlcnic_hardware_context* %12, i32 %13)
  store i64 %14, i64* %6, align 8
  br label %15

15:                                               ; preds = %26, %1
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @QLCNIC_DEV_NPAR_OPER, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load %struct.qlc_83xx_idc*, %struct.qlc_83xx_idc** %5, align 8
  %21 = getelementptr inbounds %struct.qlc_83xx_idc, %struct.qlc_83xx_idc* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  br i1 %25, label %26, label %35

26:                                               ; preds = %24
  %27 = load %struct.qlc_83xx_idc*, %struct.qlc_83xx_idc** %5, align 8
  %28 = getelementptr inbounds %struct.qlc_83xx_idc, %struct.qlc_83xx_idc* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, -1
  store i64 %30, i64* %28, align 8
  %31 = call i32 @msleep(i32 1000)
  %32 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %4, align 8
  %33 = load i32, i32* @QLC_83XX_VNIC_STATE, align 4
  %34 = call i64 @QLCRDX(%struct.qlcnic_hardware_context* %32, i32 %33)
  store i64 %34, i64* %6, align 8
  br label %15

35:                                               ; preds = %24
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* @QLCNIC_DEV_NPAR_OPER, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %41 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %48

47:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %39
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i64 @QLCRDX(%struct.qlcnic_hardware_context*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
