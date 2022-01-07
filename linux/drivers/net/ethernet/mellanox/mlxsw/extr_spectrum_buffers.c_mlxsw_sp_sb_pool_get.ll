; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_buffers.c_mlxsw_sp_sb_pool_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_buffers.c_mlxsw_sp_sb_pool_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_core = type { i32 }
%struct.devlink_sb_pool_info = type { i32, i32, i32, i32 }
%struct.mlxsw_sp = type { %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.mlxsw_sp_sb_pr = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_sb_pool_get(%struct.mlxsw_core* %0, i32 %1, i64 %2, %struct.devlink_sb_pool_info* %3) #0 {
  %5 = alloca %struct.mlxsw_core*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.devlink_sb_pool_info*, align 8
  %9 = alloca %struct.mlxsw_sp*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mlxsw_sp_sb_pr*, align 8
  store %struct.mlxsw_core* %0, %struct.mlxsw_core** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store %struct.devlink_sb_pool_info* %3, %struct.devlink_sb_pool_info** %8, align 8
  %12 = load %struct.mlxsw_core*, %struct.mlxsw_core** %5, align 8
  %13 = call %struct.mlxsw_sp* @mlxsw_core_driver_priv(%struct.mlxsw_core* %12)
  store %struct.mlxsw_sp* %13, %struct.mlxsw_sp** %9, align 8
  %14 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %9, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %14, i32 0, i32 1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = load i64, i64* %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %10, align 4
  %23 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %9, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call %struct.mlxsw_sp_sb_pr* @mlxsw_sp_sb_pr_get(%struct.mlxsw_sp* %23, i64 %24)
  store %struct.mlxsw_sp_sb_pr* %25, %struct.mlxsw_sp_sb_pr** %11, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.devlink_sb_pool_info*, %struct.devlink_sb_pool_info** %8, align 8
  %28 = getelementptr inbounds %struct.devlink_sb_pool_info, %struct.devlink_sb_pool_info* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %9, align 8
  %30 = load %struct.mlxsw_sp_sb_pr*, %struct.mlxsw_sp_sb_pr** %11, align 8
  %31 = getelementptr inbounds %struct.mlxsw_sp_sb_pr, %struct.mlxsw_sp_sb_pr* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @mlxsw_sp_cells_bytes(%struct.mlxsw_sp* %29, i32 %32)
  %34 = load %struct.devlink_sb_pool_info*, %struct.devlink_sb_pool_info** %8, align 8
  %35 = getelementptr inbounds %struct.devlink_sb_pool_info, %struct.devlink_sb_pool_info* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load %struct.mlxsw_sp_sb_pr*, %struct.mlxsw_sp_sb_pr** %11, align 8
  %37 = getelementptr inbounds %struct.mlxsw_sp_sb_pr, %struct.mlxsw_sp_sb_pr* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = load %struct.devlink_sb_pool_info*, %struct.devlink_sb_pool_info** %8, align 8
  %41 = getelementptr inbounds %struct.devlink_sb_pool_info, %struct.devlink_sb_pool_info* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %9, align 8
  %43 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.devlink_sb_pool_info*, %struct.devlink_sb_pool_info** %8, align 8
  %48 = getelementptr inbounds %struct.devlink_sb_pool_info, %struct.devlink_sb_pool_info* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  ret i32 0
}

declare dso_local %struct.mlxsw_sp* @mlxsw_core_driver_priv(%struct.mlxsw_core*) #1

declare dso_local %struct.mlxsw_sp_sb_pr* @mlxsw_sp_sb_pr_get(%struct.mlxsw_sp*, i64) #1

declare dso_local i32 @mlxsw_sp_cells_bytes(%struct.mlxsw_sp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
