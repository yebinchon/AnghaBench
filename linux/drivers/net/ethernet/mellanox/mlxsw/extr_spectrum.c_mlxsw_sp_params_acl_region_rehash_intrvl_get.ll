; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_params_acl_region_rehash_intrvl_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_params_acl_region_rehash_intrvl_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { i32 }
%struct.devlink_param_gset_ctx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mlxsw_core = type { i32 }
%struct.mlxsw_sp = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink*, i32, %struct.devlink_param_gset_ctx*)* @mlxsw_sp_params_acl_region_rehash_intrvl_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_params_acl_region_rehash_intrvl_get(%struct.devlink* %0, i32 %1, %struct.devlink_param_gset_ctx* %2) #0 {
  %4 = alloca %struct.devlink*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.devlink_param_gset_ctx*, align 8
  %7 = alloca %struct.mlxsw_core*, align 8
  %8 = alloca %struct.mlxsw_sp*, align 8
  store %struct.devlink* %0, %struct.devlink** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.devlink_param_gset_ctx* %2, %struct.devlink_param_gset_ctx** %6, align 8
  %9 = load %struct.devlink*, %struct.devlink** %4, align 8
  %10 = call %struct.mlxsw_core* @devlink_priv(%struct.devlink* %9)
  store %struct.mlxsw_core* %10, %struct.mlxsw_core** %7, align 8
  %11 = load %struct.mlxsw_core*, %struct.mlxsw_core** %7, align 8
  %12 = call %struct.mlxsw_sp* @mlxsw_core_driver_priv(%struct.mlxsw_core* %11)
  store %struct.mlxsw_sp* %12, %struct.mlxsw_sp** %8, align 8
  %13 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %14 = call i32 @mlxsw_sp_acl_region_rehash_intrvl_get(%struct.mlxsw_sp* %13)
  %15 = load %struct.devlink_param_gset_ctx*, %struct.devlink_param_gset_ctx** %6, align 8
  %16 = getelementptr inbounds %struct.devlink_param_gset_ctx, %struct.devlink_param_gset_ctx* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %14, i32* %17, align 4
  ret i32 0
}

declare dso_local %struct.mlxsw_core* @devlink_priv(%struct.devlink*) #1

declare dso_local %struct.mlxsw_sp* @mlxsw_core_driver_priv(%struct.mlxsw_core*) #1

declare dso_local i32 @mlxsw_sp_acl_region_rehash_intrvl_get(%struct.mlxsw_sp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
