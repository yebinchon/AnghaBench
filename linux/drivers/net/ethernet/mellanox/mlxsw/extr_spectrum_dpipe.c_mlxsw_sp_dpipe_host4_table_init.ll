; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dpipe.c_mlxsw_sp_dpipe_host4_table_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dpipe.c_mlxsw_sp_dpipe_host4_table_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.devlink = type { i32 }

@MLXSW_SP_DPIPE_TABLE_NAME_HOST4 = common dso_local global i32 0, align 4
@mlxsw_sp_host4_ops = common dso_local global i32 0, align 4
@MLXSW_SP_RESOURCE_KVD_HASH_SINGLE = common dso_local global i32 0, align 4
@MLXSW_SP_DPIPE_TABLE_RESOURCE_UNIT_HOST4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*)* @mlxsw_sp_dpipe_host4_table_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_dpipe_host4_table_init(%struct.mlxsw_sp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxsw_sp*, align 8
  %4 = alloca %struct.devlink*, align 8
  %5 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %3, align 8
  %6 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %7 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.devlink* @priv_to_devlink(i32 %8)
  store %struct.devlink* %9, %struct.devlink** %4, align 8
  %10 = load %struct.devlink*, %struct.devlink** %4, align 8
  %11 = load i32, i32* @MLXSW_SP_DPIPE_TABLE_NAME_HOST4, align 4
  %12 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %13 = call i32 @devlink_dpipe_table_register(%struct.devlink* %10, i32 %11, i32* @mlxsw_sp_host4_ops, %struct.mlxsw_sp* %12, i32 0)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %33

18:                                               ; preds = %1
  %19 = load %struct.devlink*, %struct.devlink** %4, align 8
  %20 = load i32, i32* @MLXSW_SP_DPIPE_TABLE_NAME_HOST4, align 4
  %21 = load i32, i32* @MLXSW_SP_RESOURCE_KVD_HASH_SINGLE, align 4
  %22 = load i32, i32* @MLXSW_SP_DPIPE_TABLE_RESOURCE_UNIT_HOST4, align 4
  %23 = call i32 @devlink_dpipe_table_resource_set(%struct.devlink* %19, i32 %20, i32 %21, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %28

27:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %33

28:                                               ; preds = %26
  %29 = load %struct.devlink*, %struct.devlink** %4, align 8
  %30 = load i32, i32* @MLXSW_SP_DPIPE_TABLE_NAME_HOST4, align 4
  %31 = call i32 @devlink_dpipe_table_unregister(%struct.devlink* %29, i32 %30)
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %28, %27, %16
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.devlink* @priv_to_devlink(i32) #1

declare dso_local i32 @devlink_dpipe_table_register(%struct.devlink*, i32, i32*, %struct.mlxsw_sp*, i32) #1

declare dso_local i32 @devlink_dpipe_table_resource_set(%struct.devlink*, i32, i32, i32) #1

declare dso_local i32 @devlink_dpipe_table_unregister(%struct.devlink*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
