; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_buffers.c_mlxsw_sp_sb_tc_pool_bind_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_buffers.c_mlxsw_sp_sb_tc_pool_bind_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_core_port = type { i32 }
%struct.mlxsw_sp_port = type { i32, %struct.mlxsw_sp* }
%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_sb_cm = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_sb_tc_pool_bind_get(%struct.mlxsw_core_port* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.mlxsw_core_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.mlxsw_sp_port*, align 8
  %14 = alloca %struct.mlxsw_sp*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.mlxsw_sp_sb_cm*, align 8
  store %struct.mlxsw_core_port* %0, %struct.mlxsw_core_port** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %19 = load %struct.mlxsw_core_port*, %struct.mlxsw_core_port** %7, align 8
  %20 = call %struct.mlxsw_sp_port* @mlxsw_core_port_driver_priv(%struct.mlxsw_core_port* %19)
  store %struct.mlxsw_sp_port* %20, %struct.mlxsw_sp_port** %13, align 8
  %21 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %13, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %21, i32 0, i32 1
  %23 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %22, align 8
  store %struct.mlxsw_sp* %23, %struct.mlxsw_sp** %14, align 8
  %24 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %13, align 8
  %25 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %16, align 4
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %17, align 4
  %29 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %14, align 8
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* %16, align 4
  %32 = load i32, i32* %17, align 4
  %33 = call %struct.mlxsw_sp_sb_cm* @mlxsw_sp_sb_cm_get(%struct.mlxsw_sp* %29, i32 %30, i32 %31, i32 %32)
  store %struct.mlxsw_sp_sb_cm* %33, %struct.mlxsw_sp_sb_cm** %18, align 8
  %34 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %14, align 8
  %35 = load %struct.mlxsw_sp_sb_cm*, %struct.mlxsw_sp_sb_cm** %18, align 8
  %36 = getelementptr inbounds %struct.mlxsw_sp_sb_cm, %struct.mlxsw_sp_sb_cm* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.mlxsw_sp_sb_cm*, %struct.mlxsw_sp_sb_cm** %18, align 8
  %39 = getelementptr inbounds %struct.mlxsw_sp_sb_cm, %struct.mlxsw_sp_sb_cm* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @mlxsw_sp_sb_threshold_out(%struct.mlxsw_sp* %34, i32 %37, i32 %40)
  %42 = load i32*, i32** %12, align 8
  store i32 %41, i32* %42, align 4
  %43 = load %struct.mlxsw_sp_sb_cm*, %struct.mlxsw_sp_sb_cm** %18, align 8
  %44 = getelementptr inbounds %struct.mlxsw_sp_sb_cm, %struct.mlxsw_sp_sb_cm* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %11, align 8
  store i32 %45, i32* %46, align 4
  ret i32 0
}

declare dso_local %struct.mlxsw_sp_port* @mlxsw_core_port_driver_priv(%struct.mlxsw_core_port*) #1

declare dso_local %struct.mlxsw_sp_sb_cm* @mlxsw_sp_sb_cm_get(%struct.mlxsw_sp*, i32, i32, i32) #1

declare dso_local i32 @mlxsw_sp_sb_threshold_out(%struct.mlxsw_sp*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
