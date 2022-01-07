; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_buffers.c_mlxsw_sp_sb_port_pool_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_buffers.c_mlxsw_sp_sb_port_pool_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_core_port = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.mlxsw_sp_port = type { i64, %struct.mlxsw_sp* }
%struct.mlxsw_sp = type { i32 }

@MLXSW_PORT_CPU_PORT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"Changing CPU port's threshold is forbidden\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_sb_port_pool_set(%struct.mlxsw_core_port* %0, i32 %1, i32 %2, i32 %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlxsw_core_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca %struct.mlxsw_sp_port*, align 8
  %13 = alloca %struct.mlxsw_sp*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mlxsw_core_port* %0, %struct.mlxsw_core_port** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  %17 = load %struct.mlxsw_core_port*, %struct.mlxsw_core_port** %7, align 8
  %18 = call %struct.mlxsw_sp_port* @mlxsw_core_port_driver_priv(%struct.mlxsw_core_port* %17)
  store %struct.mlxsw_sp_port* %18, %struct.mlxsw_sp_port** %12, align 8
  %19 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %12, align 8
  %20 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %19, i32 0, i32 1
  %21 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %20, align 8
  store %struct.mlxsw_sp* %21, %struct.mlxsw_sp** %13, align 8
  %22 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %12, align 8
  %23 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %14, align 8
  %25 = load i64, i64* %14, align 8
  %26 = load i64, i64* @MLXSW_PORT_CPU_PORT, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %5
  %29 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %30 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %29, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %49

33:                                               ; preds = %5
  %34 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %13, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %38 = call i32 @mlxsw_sp_sb_threshold_in(%struct.mlxsw_sp* %34, i32 %35, i32 %36, i32* %15, %struct.netlink_ext_ack* %37)
  store i32 %38, i32* %16, align 4
  %39 = load i32, i32* %16, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* %16, align 4
  store i32 %42, i32* %6, align 4
  br label %49

43:                                               ; preds = %33
  %44 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %13, align 8
  %45 = load i64, i64* %14, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %15, align 4
  %48 = call i32 @mlxsw_sp_sb_pm_write(%struct.mlxsw_sp* %44, i64 %45, i32 %46, i32 0, i32 %47)
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %43, %41, %28
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

declare dso_local %struct.mlxsw_sp_port* @mlxsw_core_port_driver_priv(%struct.mlxsw_core_port*) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @mlxsw_sp_sb_threshold_in(%struct.mlxsw_sp*, i32, i32, i32*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @mlxsw_sp_sb_pm_write(%struct.mlxsw_sp*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
