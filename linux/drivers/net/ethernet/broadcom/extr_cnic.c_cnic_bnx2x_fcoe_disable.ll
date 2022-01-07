; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_bnx2x_fcoe_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_bnx2x_fcoe_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { i64, i32, %struct.cnic_local* }
%struct.cnic_local = type { i32 }
%struct.kwqe = type { i32 }
%struct.fcoe_kwqe_conn_enable_disable = type { i64, i64 }
%struct.fcoe_conn_enable_disable_ramrod_params = type { i32 }
%union.l5cm_specific_data = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@BNX2X_FCOE_L5_CID_BASE = common dso_local global i64 0, align 8
@CNIC_KWQ16_DATA_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"fcoe_disable size too big\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@FCOE_RAMROD_CMD_ID_DISABLE_CONN = common dso_local global i32 0, align 4
@FCOE_CONNECTION_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_dev*, %struct.kwqe*)* @cnic_bnx2x_fcoe_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_bnx2x_fcoe_disable(%struct.cnic_dev* %0, %struct.kwqe* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cnic_dev*, align 8
  %5 = alloca %struct.kwqe*, align 8
  %6 = alloca %struct.fcoe_kwqe_conn_enable_disable*, align 8
  %7 = alloca %struct.fcoe_conn_enable_disable_ramrod_params*, align 8
  %8 = alloca %union.l5cm_specific_data, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.cnic_local*, align 8
  store %struct.cnic_dev* %0, %struct.cnic_dev** %4, align 8
  store %struct.kwqe* %1, %struct.kwqe** %5, align 8
  %13 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %14 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %13, i32 0, i32 2
  %15 = load %struct.cnic_local*, %struct.cnic_local** %14, align 8
  store %struct.cnic_local* %15, %struct.cnic_local** %12, align 8
  %16 = load %struct.kwqe*, %struct.kwqe** %5, align 8
  %17 = bitcast %struct.kwqe* %16 to %struct.fcoe_kwqe_conn_enable_disable*
  store %struct.fcoe_kwqe_conn_enable_disable* %17, %struct.fcoe_kwqe_conn_enable_disable** %6, align 8
  %18 = load %struct.fcoe_kwqe_conn_enable_disable*, %struct.fcoe_kwqe_conn_enable_disable** %6, align 8
  %19 = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, %struct.fcoe_kwqe_conn_enable_disable* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %10, align 8
  %21 = load %struct.fcoe_kwqe_conn_enable_disable*, %struct.fcoe_kwqe_conn_enable_disable** %6, align 8
  %22 = getelementptr inbounds %struct.fcoe_kwqe_conn_enable_disable, %struct.fcoe_kwqe_conn_enable_disable* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %11, align 8
  %24 = load i64, i64* %11, align 8
  %25 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %26 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sge i64 %24, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %68

32:                                               ; preds = %2
  %33 = load i64, i64* @BNX2X_FCOE_L5_CID_BASE, align 8
  %34 = load i64, i64* %11, align 8
  %35 = add nsw i64 %34, %33
  store i64 %35, i64* %11, align 8
  %36 = load i32, i32* @CNIC_KWQ16_DATA_SIZE, align 4
  %37 = sext i32 %36 to i64
  %38 = icmp ugt i64 4, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %32
  %40 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %41 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @netdev_err(i32 %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %68

46:                                               ; preds = %32
  %47 = load %struct.cnic_local*, %struct.cnic_local** %12, align 8
  %48 = load i64, i64* %11, align 8
  %49 = call %struct.fcoe_conn_enable_disable_ramrod_params* @cnic_get_kwqe_16_data(%struct.cnic_local* %47, i64 %48, %union.l5cm_specific_data* %8)
  store %struct.fcoe_conn_enable_disable_ramrod_params* %49, %struct.fcoe_conn_enable_disable_ramrod_params** %7, align 8
  %50 = load %struct.fcoe_conn_enable_disable_ramrod_params*, %struct.fcoe_conn_enable_disable_ramrod_params** %7, align 8
  %51 = icmp ne %struct.fcoe_conn_enable_disable_ramrod_params* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %46
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %68

55:                                               ; preds = %46
  %56 = load %struct.fcoe_conn_enable_disable_ramrod_params*, %struct.fcoe_conn_enable_disable_ramrod_params** %7, align 8
  %57 = call i32 @memset(%struct.fcoe_conn_enable_disable_ramrod_params* %56, i32 0, i32 4)
  %58 = load %struct.fcoe_conn_enable_disable_ramrod_params*, %struct.fcoe_conn_enable_disable_ramrod_params** %7, align 8
  %59 = getelementptr inbounds %struct.fcoe_conn_enable_disable_ramrod_params, %struct.fcoe_conn_enable_disable_ramrod_params* %58, i32 0, i32 0
  %60 = load %struct.fcoe_kwqe_conn_enable_disable*, %struct.fcoe_kwqe_conn_enable_disable** %6, align 8
  %61 = call i32 @memcpy(i32* %59, %struct.fcoe_kwqe_conn_enable_disable* %60, i32 16)
  %62 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %63 = load i32, i32* @FCOE_RAMROD_CMD_ID_DISABLE_CONN, align 4
  %64 = load i64, i64* %10, align 8
  %65 = load i32, i32* @FCOE_CONNECTION_TYPE, align 4
  %66 = call i32 @cnic_submit_kwqe_16(%struct.cnic_dev* %62, i32 %63, i64 %64, i32 %65, %union.l5cm_specific_data* %8)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %55, %52, %39, %29
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local %struct.fcoe_conn_enable_disable_ramrod_params* @cnic_get_kwqe_16_data(%struct.cnic_local*, i64, %union.l5cm_specific_data*) #1

declare dso_local i32 @memset(%struct.fcoe_conn_enable_disable_ramrod_params*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.fcoe_kwqe_conn_enable_disable*, i32) #1

declare dso_local i32 @cnic_submit_kwqe_16(%struct.cnic_dev*, i32, i64, i32, %union.l5cm_specific_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
