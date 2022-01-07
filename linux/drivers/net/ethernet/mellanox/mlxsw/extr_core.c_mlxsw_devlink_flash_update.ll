; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_devlink_flash_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_devlink_flash_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.mlxsw_core = type { %struct.mlxsw_driver* }
%struct.mlxsw_driver = type { i32 (%struct.mlxsw_core.0*, i8*, i8*, %struct.netlink_ext_ack*)* }
%struct.mlxsw_core.0 = type opaque

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink*, i8*, i8*, %struct.netlink_ext_ack*)* @mlxsw_devlink_flash_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_devlink_flash_update(%struct.devlink* %0, i8* %1, i8* %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.devlink*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca %struct.mlxsw_core*, align 8
  %11 = alloca %struct.mlxsw_driver*, align 8
  store %struct.devlink* %0, %struct.devlink** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %12 = load %struct.devlink*, %struct.devlink** %6, align 8
  %13 = call %struct.mlxsw_core* @devlink_priv(%struct.devlink* %12)
  store %struct.mlxsw_core* %13, %struct.mlxsw_core** %10, align 8
  %14 = load %struct.mlxsw_core*, %struct.mlxsw_core** %10, align 8
  %15 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %14, i32 0, i32 0
  %16 = load %struct.mlxsw_driver*, %struct.mlxsw_driver** %15, align 8
  store %struct.mlxsw_driver* %16, %struct.mlxsw_driver** %11, align 8
  %17 = load %struct.mlxsw_driver*, %struct.mlxsw_driver** %11, align 8
  %18 = getelementptr inbounds %struct.mlxsw_driver, %struct.mlxsw_driver* %17, i32 0, i32 0
  %19 = load i32 (%struct.mlxsw_core.0*, i8*, i8*, %struct.netlink_ext_ack*)*, i32 (%struct.mlxsw_core.0*, i8*, i8*, %struct.netlink_ext_ack*)** %18, align 8
  %20 = icmp ne i32 (%struct.mlxsw_core.0*, i8*, i8*, %struct.netlink_ext_ack*)* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %34

24:                                               ; preds = %4
  %25 = load %struct.mlxsw_driver*, %struct.mlxsw_driver** %11, align 8
  %26 = getelementptr inbounds %struct.mlxsw_driver, %struct.mlxsw_driver* %25, i32 0, i32 0
  %27 = load i32 (%struct.mlxsw_core.0*, i8*, i8*, %struct.netlink_ext_ack*)*, i32 (%struct.mlxsw_core.0*, i8*, i8*, %struct.netlink_ext_ack*)** %26, align 8
  %28 = load %struct.mlxsw_core*, %struct.mlxsw_core** %10, align 8
  %29 = bitcast %struct.mlxsw_core* %28 to %struct.mlxsw_core.0*
  %30 = load i8*, i8** %7, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %33 = call i32 %27(%struct.mlxsw_core.0* %29, i8* %30, i8* %31, %struct.netlink_ext_ack* %32)
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %24, %21
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local %struct.mlxsw_core* @devlink_priv(%struct.devlink*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
