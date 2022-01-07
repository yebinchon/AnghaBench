; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_devlink_port_split.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_devlink_port_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.mlxsw_core = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.mlxsw_core*, i32, i32, %struct.netlink_ext_ack*)* }

@.str = private unnamed_addr constant [43 x i8] c"Port index exceeds maximum number of ports\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink*, i32, i32, %struct.netlink_ext_ack*)* @mlxsw_devlink_port_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_devlink_port_split(%struct.devlink* %0, i32 %1, i32 %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.devlink*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca %struct.mlxsw_core*, align 8
  store %struct.devlink* %0, %struct.devlink** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %11 = load %struct.devlink*, %struct.devlink** %6, align 8
  %12 = call %struct.mlxsw_core* @devlink_priv(%struct.devlink* %11)
  store %struct.mlxsw_core* %12, %struct.mlxsw_core** %10, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.mlxsw_core*, %struct.mlxsw_core** %10, align 8
  %15 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp uge i32 %13, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %4
  %19 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %20 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %19, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %44

23:                                               ; preds = %4
  %24 = load %struct.mlxsw_core*, %struct.mlxsw_core** %10, align 8
  %25 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.mlxsw_core*, i32, i32, %struct.netlink_ext_ack*)*, i32 (%struct.mlxsw_core*, i32, i32, %struct.netlink_ext_ack*)** %27, align 8
  %29 = icmp ne i32 (%struct.mlxsw_core*, i32, i32, %struct.netlink_ext_ack*)* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @EOPNOTSUPP, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %44

33:                                               ; preds = %23
  %34 = load %struct.mlxsw_core*, %struct.mlxsw_core** %10, align 8
  %35 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32 (%struct.mlxsw_core*, i32, i32, %struct.netlink_ext_ack*)*, i32 (%struct.mlxsw_core*, i32, i32, %struct.netlink_ext_ack*)** %37, align 8
  %39 = load %struct.mlxsw_core*, %struct.mlxsw_core** %10, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %43 = call i32 %38(%struct.mlxsw_core* %39, i32 %40, i32 %41, %struct.netlink_ext_ack* %42)
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %33, %30, %18
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local %struct.mlxsw_core* @devlink_priv(%struct.devlink*) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
