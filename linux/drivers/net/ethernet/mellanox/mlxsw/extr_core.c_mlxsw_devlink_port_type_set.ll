; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_devlink_port_type_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_devlink_port_type_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink_port = type { i32 }
%struct.mlxsw_core = type { %struct.mlxsw_driver* }
%struct.mlxsw_driver = type { i32 (%struct.mlxsw_core.0*, i32, i32)* }
%struct.mlxsw_core.0 = type opaque
%struct.mlxsw_core_port = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink_port*, i32)* @mlxsw_devlink_port_type_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_devlink_port_type_set(%struct.devlink_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.devlink_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_core*, align 8
  %7 = alloca %struct.mlxsw_driver*, align 8
  %8 = alloca %struct.mlxsw_core_port*, align 8
  store %struct.devlink_port* %0, %struct.devlink_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.devlink_port*, %struct.devlink_port** %4, align 8
  %10 = getelementptr inbounds %struct.devlink_port, %struct.devlink_port* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.mlxsw_core* @devlink_priv(i32 %11)
  store %struct.mlxsw_core* %12, %struct.mlxsw_core** %6, align 8
  %13 = load %struct.mlxsw_core*, %struct.mlxsw_core** %6, align 8
  %14 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %13, i32 0, i32 0
  %15 = load %struct.mlxsw_driver*, %struct.mlxsw_driver** %14, align 8
  store %struct.mlxsw_driver* %15, %struct.mlxsw_driver** %7, align 8
  %16 = load %struct.devlink_port*, %struct.devlink_port** %4, align 8
  %17 = call %struct.mlxsw_core_port* @__dl_port(%struct.devlink_port* %16)
  store %struct.mlxsw_core_port* %17, %struct.mlxsw_core_port** %8, align 8
  %18 = load %struct.mlxsw_driver*, %struct.mlxsw_driver** %7, align 8
  %19 = getelementptr inbounds %struct.mlxsw_driver, %struct.mlxsw_driver* %18, i32 0, i32 0
  %20 = load i32 (%struct.mlxsw_core.0*, i32, i32)*, i32 (%struct.mlxsw_core.0*, i32, i32)** %19, align 8
  %21 = icmp ne i32 (%struct.mlxsw_core.0*, i32, i32)* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %36

25:                                               ; preds = %2
  %26 = load %struct.mlxsw_driver*, %struct.mlxsw_driver** %7, align 8
  %27 = getelementptr inbounds %struct.mlxsw_driver, %struct.mlxsw_driver* %26, i32 0, i32 0
  %28 = load i32 (%struct.mlxsw_core.0*, i32, i32)*, i32 (%struct.mlxsw_core.0*, i32, i32)** %27, align 8
  %29 = load %struct.mlxsw_core*, %struct.mlxsw_core** %6, align 8
  %30 = bitcast %struct.mlxsw_core* %29 to %struct.mlxsw_core.0*
  %31 = load %struct.mlxsw_core_port*, %struct.mlxsw_core_port** %8, align 8
  %32 = getelementptr inbounds %struct.mlxsw_core_port, %struct.mlxsw_core_port* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 %28(%struct.mlxsw_core.0* %30, i32 %33, i32 %34)
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %25, %22
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.mlxsw_core* @devlink_priv(i32) #1

declare dso_local %struct.mlxsw_core_port* @__dl_port(%struct.devlink_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
