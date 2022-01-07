; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_devlink_sb_port_pool_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_devlink_sb_port_pool_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink_port = type { i32 }
%struct.mlxsw_core = type { %struct.mlxsw_driver* }
%struct.mlxsw_driver = type { i32 (%struct.mlxsw_core_port*, i32, i32, i32*)* }
%struct.mlxsw_core_port = type opaque
%struct.mlxsw_core_port.0 = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink_port*, i32, i32, i32*)* @mlxsw_devlink_sb_port_pool_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_devlink_sb_port_pool_get(%struct.devlink_port* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.devlink_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.mlxsw_core*, align 8
  %11 = alloca %struct.mlxsw_driver*, align 8
  %12 = alloca %struct.mlxsw_core_port.0*, align 8
  store %struct.devlink_port* %0, %struct.devlink_port** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load %struct.devlink_port*, %struct.devlink_port** %6, align 8
  %14 = getelementptr inbounds %struct.devlink_port, %struct.devlink_port* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.mlxsw_core* @devlink_priv(i32 %15)
  store %struct.mlxsw_core* %16, %struct.mlxsw_core** %10, align 8
  %17 = load %struct.mlxsw_core*, %struct.mlxsw_core** %10, align 8
  %18 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %17, i32 0, i32 0
  %19 = load %struct.mlxsw_driver*, %struct.mlxsw_driver** %18, align 8
  store %struct.mlxsw_driver* %19, %struct.mlxsw_driver** %11, align 8
  %20 = load %struct.devlink_port*, %struct.devlink_port** %6, align 8
  %21 = call %struct.mlxsw_core_port.0* @__dl_port(%struct.devlink_port* %20)
  store %struct.mlxsw_core_port.0* %21, %struct.mlxsw_core_port.0** %12, align 8
  %22 = load %struct.mlxsw_driver*, %struct.mlxsw_driver** %11, align 8
  %23 = getelementptr inbounds %struct.mlxsw_driver, %struct.mlxsw_driver* %22, i32 0, i32 0
  %24 = load i32 (%struct.mlxsw_core_port*, i32, i32, i32*)*, i32 (%struct.mlxsw_core_port*, i32, i32, i32*)** %23, align 8
  %25 = icmp ne i32 (%struct.mlxsw_core_port*, i32, i32, i32*)* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %4
  %27 = load %struct.mlxsw_core_port.0*, %struct.mlxsw_core_port.0** %12, align 8
  %28 = call i32 @mlxsw_core_port_check(%struct.mlxsw_core_port.0* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26, %4
  %31 = load i32, i32* @EOPNOTSUPP, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %43

33:                                               ; preds = %26
  %34 = load %struct.mlxsw_driver*, %struct.mlxsw_driver** %11, align 8
  %35 = getelementptr inbounds %struct.mlxsw_driver, %struct.mlxsw_driver* %34, i32 0, i32 0
  %36 = load i32 (%struct.mlxsw_core_port*, i32, i32, i32*)*, i32 (%struct.mlxsw_core_port*, i32, i32, i32*)** %35, align 8
  %37 = load %struct.mlxsw_core_port.0*, %struct.mlxsw_core_port.0** %12, align 8
  %38 = bitcast %struct.mlxsw_core_port.0* %37 to %struct.mlxsw_core_port*
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32*, i32** %9, align 8
  %42 = call i32 %36(%struct.mlxsw_core_port* %38, i32 %39, i32 %40, i32* %41)
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %33, %30
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local %struct.mlxsw_core* @devlink_priv(i32) #1

declare dso_local %struct.mlxsw_core_port.0* @__dl_port(%struct.devlink_port*) #1

declare dso_local i32 @mlxsw_core_port_check(%struct.mlxsw_core_port.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
