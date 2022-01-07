; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_retry_bc_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_retry_bc_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i64, i32 }
%struct.qlcnic_bc_trans = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@QLC_BC_CMD_MAX_RETRY_CNT = common dso_local global i64 0, align 8
@QLC_83XX_IDC_DEV_STATE = common dso_local global i32 0, align 4
@QLC_83XX_IDC_DEV_READY = common dso_local global i64 0, align 8
@QLC_BC_VF_CHANNEL = common dso_local global i32 0, align 4
@QLC_INIT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, %struct.qlcnic_bc_trans*)* @qlcnic_sriov_retry_bc_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_sriov_retry_bc_cmd(%struct.qlcnic_adapter* %0, %struct.qlcnic_bc_trans* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca %struct.qlcnic_bc_trans*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %4, align 8
  store %struct.qlcnic_bc_trans* %1, %struct.qlcnic_bc_trans** %5, align 8
  %8 = load i64, i64* @QLC_BC_CMD_MAX_RETRY_CNT, align 8
  store i64 %8, i64* %6, align 8
  %9 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %10 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @QLC_83XX_IDC_DEV_STATE, align 4
  %13 = call i64 @QLCRDX(i32 %11, i32 %12)
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @QLC_83XX_IDC_DEV_READY, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %38

17:                                               ; preds = %2
  %18 = call i32 @msleep(i32 20)
  %19 = load i32, i32* @QLC_BC_VF_CHANNEL, align 4
  %20 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %5, align 8
  %21 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @clear_bit(i32 %19, i32* %23)
  %25 = load i32, i32* @QLC_INIT, align 4
  %26 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %5, align 8
  %27 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %29 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %29, align 8
  %32 = load i64, i64* %6, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %17
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %41

37:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %41

38:                                               ; preds = %2
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %38, %37, %34
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i64 @QLCRDX(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
