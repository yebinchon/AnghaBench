; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_clr_all_drv_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_clr_all_drv_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@QLCNIC_CRB_DRV_ACTIVE = common dso_local global i32 0, align 4
@QLCNIC_CRB_DEV_STATE = common dso_local global i32 0, align 4
@QLCNIC_DEV_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Device state set to Failed. Please Reboot\0A\00", align 1
@QLCNIC_DEV_COLD = common dso_local global i32 0, align 4
@QLCNIC_CRB_DRV_STATE = common dso_local global i32 0, align 4
@QLCNIC_FW_HANG = common dso_local global i32 0, align 4
@__QLCNIC_START_FW = common dso_local global i32 0, align 4
@__QLCNIC_RESETTING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlcnic_clr_all_drv_state(%struct.qlcnic_adapter* %0, i64 %1) #0 {
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %7 = call i64 @qlcnic_api_lock(%struct.qlcnic_adapter* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %60

10:                                               ; preds = %2
  %11 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %12 = load i32, i32* @QLCNIC_CRB_DRV_ACTIVE, align 4
  %13 = call i32 @QLC_SHARED_REG_RD32(%struct.qlcnic_adapter* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @QLC_DEV_CLR_REF_CNT(i32 %14, i32 %17)
  %19 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %20 = load i32, i32* @QLCNIC_CRB_DRV_ACTIVE, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @QLC_SHARED_REG_WR32(%struct.qlcnic_adapter* %19, i32 %20, i32 %21)
  %23 = load i64, i64* %4, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %10
  %26 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %27 = load i32, i32* @QLCNIC_CRB_DEV_STATE, align 4
  %28 = load i32, i32* @QLCNIC_DEV_FAILED, align 4
  %29 = call i32 @QLC_SHARED_REG_WR32(%struct.qlcnic_adapter* %26, i32 %27, i32 %28)
  %30 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %31 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %30, i32 0, i32 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @dev_info(i32* %33, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %45

35:                                               ; preds = %10
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, 286331153
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %35
  %40 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %41 = load i32, i32* @QLCNIC_CRB_DEV_STATE, align 4
  %42 = load i32, i32* @QLCNIC_DEV_COLD, align 4
  %43 = call i32 @QLC_SHARED_REG_WR32(%struct.qlcnic_adapter* %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %39, %35
  br label %45

45:                                               ; preds = %44, %25
  %46 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %47 = load i32, i32* @QLCNIC_CRB_DRV_STATE, align 4
  %48 = call i32 @QLC_SHARED_REG_RD32(%struct.qlcnic_adapter* %46, i32 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %51 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @QLC_DEV_CLR_RST_QSCNT(i32 %49, i32 %52)
  %54 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %55 = load i32, i32* @QLCNIC_CRB_DRV_STATE, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @QLC_SHARED_REG_WR32(%struct.qlcnic_adapter* %54, i32 %55, i32 %56)
  %58 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %59 = call i32 @qlcnic_api_unlock(%struct.qlcnic_adapter* %58)
  br label %60

60:                                               ; preds = %45, %9
  %61 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %62 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %61, i32 0, i32 2
  store i64 0, i64* %62, align 8
  %63 = load i32, i32* @QLCNIC_FW_HANG, align 4
  %64 = xor i32 %63, -1
  %65 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %66 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, %64
  store i32 %68, i32* %66, align 4
  %69 = load i32, i32* @__QLCNIC_START_FW, align 4
  %70 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %71 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %70, i32 0, i32 0
  %72 = call i32 @clear_bit(i32 %69, i32* %71)
  %73 = load i32, i32* @__QLCNIC_RESETTING, align 4
  %74 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %75 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %74, i32 0, i32 0
  %76 = call i32 @clear_bit(i32 %73, i32* %75)
  ret void
}

declare dso_local i64 @qlcnic_api_lock(%struct.qlcnic_adapter*) #1

declare dso_local i32 @QLC_SHARED_REG_RD32(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @QLC_DEV_CLR_REF_CNT(i32, i32) #1

declare dso_local i32 @QLC_SHARED_REG_WR32(%struct.qlcnic_adapter*, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @QLC_DEV_CLR_RST_QSCNT(i32, i32) #1

declare dso_local i32 @qlcnic_api_unlock(%struct.qlcnic_adapter*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
