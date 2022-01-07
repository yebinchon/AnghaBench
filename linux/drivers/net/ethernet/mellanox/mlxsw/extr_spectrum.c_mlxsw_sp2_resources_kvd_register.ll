; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp2_resources_kvd_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp2_resources_kvd_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_core = type { i32 }
%struct.devlink = type { i32 }
%struct.devlink_resource_size_params = type { i32 }

@KVD_SIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@MLXSW_SP_KVD_GRANULARITY = common dso_local global i32 0, align 4
@DEVLINK_RESOURCE_UNIT_ENTRY = common dso_local global i32 0, align 4
@MLXSW_SP_RESOURCE_NAME_KVD = common dso_local global i32 0, align 4
@MLXSW_SP_RESOURCE_KVD = common dso_local global i32 0, align 4
@DEVLINK_RESOURCE_ID_PARENT_TOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_core*)* @mlxsw_sp2_resources_kvd_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp2_resources_kvd_register(%struct.mlxsw_core* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxsw_core*, align 8
  %4 = alloca %struct.devlink*, align 8
  %5 = alloca %struct.devlink_resource_size_params, align 4
  %6 = alloca i32, align 4
  store %struct.mlxsw_core* %0, %struct.mlxsw_core** %3, align 8
  %7 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %8 = call %struct.devlink* @priv_to_devlink(%struct.mlxsw_core* %7)
  store %struct.devlink* %8, %struct.devlink** %4, align 8
  %9 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %10 = load i32, i32* @KVD_SIZE, align 4
  %11 = call i32 @MLXSW_CORE_RES_VALID(%struct.mlxsw_core* %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @EIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %31

16:                                               ; preds = %1
  %17 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %18 = load i32, i32* @KVD_SIZE, align 4
  %19 = call i32 @MLXSW_CORE_RES_GET(%struct.mlxsw_core* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @MLXSW_SP_KVD_GRANULARITY, align 4
  %23 = load i32, i32* @DEVLINK_RESOURCE_UNIT_ENTRY, align 4
  %24 = call i32 @devlink_resource_size_params_init(%struct.devlink_resource_size_params* %5, i32 %20, i32 %21, i32 %22, i32 %23)
  %25 = load %struct.devlink*, %struct.devlink** %4, align 8
  %26 = load i32, i32* @MLXSW_SP_RESOURCE_NAME_KVD, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @MLXSW_SP_RESOURCE_KVD, align 4
  %29 = load i32, i32* @DEVLINK_RESOURCE_ID_PARENT_TOP, align 4
  %30 = call i32 @devlink_resource_register(%struct.devlink* %25, i32 %26, i32 %27, i32 %28, i32 %29, %struct.devlink_resource_size_params* %5)
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %16, %13
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local %struct.devlink* @priv_to_devlink(%struct.mlxsw_core*) #1

declare dso_local i32 @MLXSW_CORE_RES_VALID(%struct.mlxsw_core*, i32) #1

declare dso_local i32 @MLXSW_CORE_RES_GET(%struct.mlxsw_core*, i32) #1

declare dso_local i32 @devlink_resource_size_params_init(%struct.devlink_resource_size_params*, i32, i32, i32, i32) #1

declare dso_local i32 @devlink_resource_register(%struct.devlink*, i32, i32, i32, i32, %struct.devlink_resource_size_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
