; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_devlink_port_unsplit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_devlink_port_unsplit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.mlxsw_core = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.mlxsw_core*, i32, %struct.netlink_ext_ack*)* }

@.str = private unnamed_addr constant [43 x i8] c"Port index exceeds maximum number of ports\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink*, i32, %struct.netlink_ext_ack*)* @mlxsw_devlink_port_unsplit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_devlink_port_unsplit(%struct.devlink* %0, i32 %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.devlink*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.mlxsw_core*, align 8
  store %struct.devlink* %0, %struct.devlink** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %9 = load %struct.devlink*, %struct.devlink** %5, align 8
  %10 = call %struct.mlxsw_core* @devlink_priv(%struct.devlink* %9)
  store %struct.mlxsw_core* %10, %struct.mlxsw_core** %8, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.mlxsw_core*, %struct.mlxsw_core** %8, align 8
  %13 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp uge i32 %11, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %18 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %17, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %41

21:                                               ; preds = %3
  %22 = load %struct.mlxsw_core*, %struct.mlxsw_core** %8, align 8
  %23 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.mlxsw_core*, i32, %struct.netlink_ext_ack*)*, i32 (%struct.mlxsw_core*, i32, %struct.netlink_ext_ack*)** %25, align 8
  %27 = icmp ne i32 (%struct.mlxsw_core*, i32, %struct.netlink_ext_ack*)* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @EOPNOTSUPP, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %41

31:                                               ; preds = %21
  %32 = load %struct.mlxsw_core*, %struct.mlxsw_core** %8, align 8
  %33 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32 (%struct.mlxsw_core*, i32, %struct.netlink_ext_ack*)*, i32 (%struct.mlxsw_core*, i32, %struct.netlink_ext_ack*)** %35, align 8
  %37 = load %struct.mlxsw_core*, %struct.mlxsw_core** %8, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %40 = call i32 %36(%struct.mlxsw_core* %37, i32 %38, %struct.netlink_ext_ack* %39)
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %31, %28, %16
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.mlxsw_core* @devlink_priv(%struct.devlink*) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
