; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_bnx2x_fcoe_stat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_bnx2x_fcoe_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { i32, %struct.cnic_local* }
%struct.cnic_local = type { i32 }
%struct.kwqe = type { i32 }
%struct.fcoe_kwqe_stat = type { i32 }
%struct.fcoe_stat_ramrod_params = type { i32 }
%union.l5cm_specific_data = type { i32 }
%struct.bnx2x = type { i32 }

@BNX2X_FCOE_L5_CID_BASE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FCOE_RAMROD_CMD_ID_STAT_FUNC = common dso_local global i32 0, align 4
@FCOE_CONNECTION_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_dev*, %struct.kwqe*)* @cnic_bnx2x_fcoe_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_bnx2x_fcoe_stat(%struct.cnic_dev* %0, %struct.kwqe* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cnic_dev*, align 8
  %5 = alloca %struct.kwqe*, align 8
  %6 = alloca %struct.fcoe_kwqe_stat*, align 8
  %7 = alloca %struct.fcoe_stat_ramrod_params*, align 8
  %8 = alloca %union.l5cm_specific_data, align 4
  %9 = alloca %struct.cnic_local*, align 8
  %10 = alloca %struct.bnx2x*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cnic_dev* %0, %struct.cnic_dev** %4, align 8
  store %struct.kwqe* %1, %struct.kwqe** %5, align 8
  %13 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %14 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %13, i32 0, i32 1
  %15 = load %struct.cnic_local*, %struct.cnic_local** %14, align 8
  store %struct.cnic_local* %15, %struct.cnic_local** %9, align 8
  %16 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %17 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.bnx2x* @netdev_priv(i32 %18)
  store %struct.bnx2x* %19, %struct.bnx2x** %10, align 8
  %20 = load %struct.kwqe*, %struct.kwqe** %5, align 8
  %21 = bitcast %struct.kwqe* %20 to %struct.fcoe_kwqe_stat*
  store %struct.fcoe_kwqe_stat* %21, %struct.fcoe_kwqe_stat** %6, align 8
  %22 = load %struct.bnx2x*, %struct.bnx2x** %10, align 8
  %23 = load %struct.cnic_local*, %struct.cnic_local** %9, align 8
  %24 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @BNX2X_HW_CID(%struct.bnx2x* %22, i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load %struct.cnic_local*, %struct.cnic_local** %9, align 8
  %28 = load i32, i32* @BNX2X_FCOE_L5_CID_BASE, align 4
  %29 = call %struct.fcoe_stat_ramrod_params* @cnic_get_kwqe_16_data(%struct.cnic_local* %27, i32 %28, %union.l5cm_specific_data* %8)
  store %struct.fcoe_stat_ramrod_params* %29, %struct.fcoe_stat_ramrod_params** %7, align 8
  %30 = load %struct.fcoe_stat_ramrod_params*, %struct.fcoe_stat_ramrod_params** %7, align 8
  %31 = icmp ne %struct.fcoe_stat_ramrod_params* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %2
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %48

35:                                               ; preds = %2
  %36 = load %struct.fcoe_stat_ramrod_params*, %struct.fcoe_stat_ramrod_params** %7, align 8
  %37 = call i32 @memset(%struct.fcoe_stat_ramrod_params* %36, i32 0, i32 4)
  %38 = load %struct.fcoe_stat_ramrod_params*, %struct.fcoe_stat_ramrod_params** %7, align 8
  %39 = getelementptr inbounds %struct.fcoe_stat_ramrod_params, %struct.fcoe_stat_ramrod_params* %38, i32 0, i32 0
  %40 = load %struct.fcoe_kwqe_stat*, %struct.fcoe_kwqe_stat** %6, align 8
  %41 = call i32 @memcpy(i32* %39, %struct.fcoe_kwqe_stat* %40, i32 4)
  %42 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %43 = load i32, i32* @FCOE_RAMROD_CMD_ID_STAT_FUNC, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* @FCOE_CONNECTION_TYPE, align 4
  %46 = call i32 @cnic_submit_kwqe_16(%struct.cnic_dev* %42, i32 %43, i32 %44, i32 %45, %union.l5cm_specific_data* %8)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %35, %32
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.bnx2x* @netdev_priv(i32) #1

declare dso_local i32 @BNX2X_HW_CID(%struct.bnx2x*, i32) #1

declare dso_local %struct.fcoe_stat_ramrod_params* @cnic_get_kwqe_16_data(%struct.cnic_local*, i32, %union.l5cm_specific_data*) #1

declare dso_local i32 @memset(%struct.fcoe_stat_ramrod_params*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.fcoe_kwqe_stat*, i32) #1

declare dso_local i32 @cnic_submit_kwqe_16(%struct.cnic_dev*, i32, i32, i32, %union.l5cm_specific_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
