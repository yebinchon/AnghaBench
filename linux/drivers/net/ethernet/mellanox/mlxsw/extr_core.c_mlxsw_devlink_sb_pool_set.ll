; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_devlink_sb_pool_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_devlink_sb_pool_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.mlxsw_core = type { %struct.mlxsw_driver* }
%struct.mlxsw_driver = type { i32 (%struct.mlxsw_core.0*, i32, i32, i32, i32, %struct.netlink_ext_ack*)* }
%struct.mlxsw_core.0 = type opaque

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink*, i32, i32, i32, i32, %struct.netlink_ext_ack*)* @mlxsw_devlink_sb_pool_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_devlink_sb_pool_set(%struct.devlink* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.netlink_ext_ack* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.devlink*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.netlink_ext_ack*, align 8
  %14 = alloca %struct.mlxsw_core*, align 8
  %15 = alloca %struct.mlxsw_driver*, align 8
  store %struct.devlink* %0, %struct.devlink** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.netlink_ext_ack* %5, %struct.netlink_ext_ack** %13, align 8
  %16 = load %struct.devlink*, %struct.devlink** %8, align 8
  %17 = call %struct.mlxsw_core* @devlink_priv(%struct.devlink* %16)
  store %struct.mlxsw_core* %17, %struct.mlxsw_core** %14, align 8
  %18 = load %struct.mlxsw_core*, %struct.mlxsw_core** %14, align 8
  %19 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %18, i32 0, i32 0
  %20 = load %struct.mlxsw_driver*, %struct.mlxsw_driver** %19, align 8
  store %struct.mlxsw_driver* %20, %struct.mlxsw_driver** %15, align 8
  %21 = load %struct.mlxsw_driver*, %struct.mlxsw_driver** %15, align 8
  %22 = getelementptr inbounds %struct.mlxsw_driver, %struct.mlxsw_driver* %21, i32 0, i32 0
  %23 = load i32 (%struct.mlxsw_core.0*, i32, i32, i32, i32, %struct.netlink_ext_ack*)*, i32 (%struct.mlxsw_core.0*, i32, i32, i32, i32, %struct.netlink_ext_ack*)** %22, align 8
  %24 = icmp ne i32 (%struct.mlxsw_core.0*, i32, i32, i32, i32, %struct.netlink_ext_ack*)* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %6
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %7, align 4
  br label %40

28:                                               ; preds = %6
  %29 = load %struct.mlxsw_driver*, %struct.mlxsw_driver** %15, align 8
  %30 = getelementptr inbounds %struct.mlxsw_driver, %struct.mlxsw_driver* %29, i32 0, i32 0
  %31 = load i32 (%struct.mlxsw_core.0*, i32, i32, i32, i32, %struct.netlink_ext_ack*)*, i32 (%struct.mlxsw_core.0*, i32, i32, i32, i32, %struct.netlink_ext_ack*)** %30, align 8
  %32 = load %struct.mlxsw_core*, %struct.mlxsw_core** %14, align 8
  %33 = bitcast %struct.mlxsw_core* %32 to %struct.mlxsw_core.0*
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %39 = call i32 %31(%struct.mlxsw_core.0* %33, i32 %34, i32 %35, i32 %36, i32 %37, %struct.netlink_ext_ack* %38)
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %28, %25
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local %struct.mlxsw_core* @devlink_priv(%struct.devlink*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
