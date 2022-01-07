; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_devlink_sb_occ_tc_port_bind_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_devlink_sb_occ_tc_port_bind_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink_port = type { i32 }
%struct.mlxsw_core = type { %struct.mlxsw_driver* }
%struct.mlxsw_driver = type { i32 (%struct.mlxsw_core_port*, i32, i32, i32, i32*, i32*)* }
%struct.mlxsw_core_port = type opaque
%struct.mlxsw_core_port.0 = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink_port*, i32, i32, i32, i32*, i32*)* @mlxsw_devlink_sb_occ_tc_port_bind_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_devlink_sb_occ_tc_port_bind_get(%struct.devlink_port* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.devlink_port*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.mlxsw_core*, align 8
  %15 = alloca %struct.mlxsw_driver*, align 8
  %16 = alloca %struct.mlxsw_core_port.0*, align 8
  store %struct.devlink_port* %0, %struct.devlink_port** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load %struct.devlink_port*, %struct.devlink_port** %8, align 8
  %18 = getelementptr inbounds %struct.devlink_port, %struct.devlink_port* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.mlxsw_core* @devlink_priv(i32 %19)
  store %struct.mlxsw_core* %20, %struct.mlxsw_core** %14, align 8
  %21 = load %struct.mlxsw_core*, %struct.mlxsw_core** %14, align 8
  %22 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %21, i32 0, i32 0
  %23 = load %struct.mlxsw_driver*, %struct.mlxsw_driver** %22, align 8
  store %struct.mlxsw_driver* %23, %struct.mlxsw_driver** %15, align 8
  %24 = load %struct.devlink_port*, %struct.devlink_port** %8, align 8
  %25 = call %struct.mlxsw_core_port.0* @__dl_port(%struct.devlink_port* %24)
  store %struct.mlxsw_core_port.0* %25, %struct.mlxsw_core_port.0** %16, align 8
  %26 = load %struct.mlxsw_driver*, %struct.mlxsw_driver** %15, align 8
  %27 = getelementptr inbounds %struct.mlxsw_driver, %struct.mlxsw_driver* %26, i32 0, i32 0
  %28 = load i32 (%struct.mlxsw_core_port*, i32, i32, i32, i32*, i32*)*, i32 (%struct.mlxsw_core_port*, i32, i32, i32, i32*, i32*)** %27, align 8
  %29 = icmp ne i32 (%struct.mlxsw_core_port*, i32, i32, i32, i32*, i32*)* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %6
  %31 = load %struct.mlxsw_core_port.0*, %struct.mlxsw_core_port.0** %16, align 8
  %32 = call i32 @mlxsw_core_port_check(%struct.mlxsw_core_port.0* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %30, %6
  %35 = load i32, i32* @EOPNOTSUPP, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %7, align 4
  br label %49

37:                                               ; preds = %30
  %38 = load %struct.mlxsw_driver*, %struct.mlxsw_driver** %15, align 8
  %39 = getelementptr inbounds %struct.mlxsw_driver, %struct.mlxsw_driver* %38, i32 0, i32 0
  %40 = load i32 (%struct.mlxsw_core_port*, i32, i32, i32, i32*, i32*)*, i32 (%struct.mlxsw_core_port*, i32, i32, i32, i32*, i32*)** %39, align 8
  %41 = load %struct.mlxsw_core_port.0*, %struct.mlxsw_core_port.0** %16, align 8
  %42 = bitcast %struct.mlxsw_core_port.0* %41 to %struct.mlxsw_core_port*
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32*, i32** %12, align 8
  %47 = load i32*, i32** %13, align 8
  %48 = call i32 %40(%struct.mlxsw_core_port* %42, i32 %43, i32 %44, i32 %45, i32* %46, i32* %47)
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %37, %34
  %50 = load i32, i32* %7, align 4
  ret i32 %50
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
