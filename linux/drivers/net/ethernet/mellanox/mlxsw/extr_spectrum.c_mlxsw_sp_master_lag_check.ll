; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_master_lag_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_master_lag_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.net_device = type { i32 }
%struct.netdev_lag_upper_info = type { i64 }
%struct.netlink_ext_ack = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"Exceeded number of supported LAG devices\00", align 1
@NETDEV_LAG_TX_TYPE_HASH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"LAG device using unsupported Tx type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.net_device*, %struct.netdev_lag_upper_info*, %struct.netlink_ext_ack*)* @mlxsw_sp_master_lag_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_master_lag_check(%struct.mlxsw_sp* %0, %struct.net_device* %1, %struct.netdev_lag_upper_info* %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.netdev_lag_upper_info*, align 8
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store %struct.netdev_lag_upper_info* %2, %struct.netdev_lag_upper_info** %8, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %11 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %7, align 8
  %13 = call i64 @mlxsw_sp_lag_index_get(%struct.mlxsw_sp* %11, %struct.net_device* %12, i32* %10)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %17 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %16, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %28

18:                                               ; preds = %4
  %19 = load %struct.netdev_lag_upper_info*, %struct.netdev_lag_upper_info** %8, align 8
  %20 = getelementptr inbounds %struct.netdev_lag_upper_info, %struct.netdev_lag_upper_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @NETDEV_LAG_TX_TYPE_HASH, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %26 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %25, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %28

27:                                               ; preds = %18
  store i32 1, i32* %5, align 4
  br label %28

28:                                               ; preds = %27, %24, %15
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local i64 @mlxsw_sp_lag_index_get(%struct.mlxsw_sp*, %struct.net_device*, i32*) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
