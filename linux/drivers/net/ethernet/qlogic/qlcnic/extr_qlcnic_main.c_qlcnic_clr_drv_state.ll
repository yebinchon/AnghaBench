; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_clr_drv_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_clr_drv_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@QLCNIC_CRB_DRV_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*)* @qlcnic_clr_drv_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_clr_drv_state(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  %5 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %6 = call i64 @qlcnic_api_lock(%struct.qlcnic_adapter* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @EBUSY, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %26

11:                                               ; preds = %1
  %12 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %13 = load i32, i32* @QLCNIC_CRB_DRV_STATE, align 4
  %14 = call i32 @QLC_SHARED_REG_RD32(%struct.qlcnic_adapter* %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @QLC_DEV_CLR_RST_QSCNT(i32 %15, i32 %18)
  %20 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %21 = load i32, i32* @QLCNIC_CRB_DRV_STATE, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @QLC_SHARED_REG_WR32(%struct.qlcnic_adapter* %20, i32 %21, i32 %22)
  %24 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %25 = call i32 @qlcnic_api_unlock(%struct.qlcnic_adapter* %24)
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %11, %8
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i64 @qlcnic_api_lock(%struct.qlcnic_adapter*) #1

declare dso_local i32 @QLC_SHARED_REG_RD32(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @QLC_DEV_CLR_RST_QSCNT(i32, i32) #1

declare dso_local i32 @QLC_SHARED_REG_WR32(%struct.qlcnic_adapter*, i32, i32) #1

declare dso_local i32 @qlcnic_api_unlock(%struct.qlcnic_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
