; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum1_kvdl.c_mlxsw_sp1_kvdl_resources_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum1_kvdl.c_mlxsw_sp1_kvdl_resources_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink_resource_size_params = type { i32 }
%struct.mlxsw_core = type { i32 }
%struct.devlink = type { i32 }

@mlxsw_sp1_kvdl_resources_register.size_params = internal global %struct.devlink_resource_size_params zeroinitializer, align 4
@KVD_SIZE = common dso_local global i32 0, align 4
@KVD_SINGLE_MIN_SIZE = common dso_local global i32 0, align 4
@KVD_DOUBLE_MIN_SIZE = common dso_local global i32 0, align 4
@MLXSW_SP1_KVDL_SINGLE_ALLOC_SIZE = common dso_local global i32 0, align 4
@DEVLINK_RESOURCE_UNIT_ENTRY = common dso_local global i32 0, align 4
@MLXSW_SP_RESOURCE_NAME_KVD_LINEAR_SINGLES = common dso_local global i32 0, align 4
@MLXSW_SP1_KVDL_SINGLE_SIZE = common dso_local global i32 0, align 4
@MLXSW_SP_RESOURCE_KVD_LINEAR_SINGLE = common dso_local global i32 0, align 4
@MLXSW_SP_RESOURCE_KVD_LINEAR = common dso_local global i32 0, align 4
@MLXSW_SP1_KVDL_CHUNKS_ALLOC_SIZE = common dso_local global i32 0, align 4
@MLXSW_SP_RESOURCE_NAME_KVD_LINEAR_CHUNKS = common dso_local global i32 0, align 4
@MLXSW_SP1_KVDL_CHUNKS_SIZE = common dso_local global i32 0, align 4
@MLXSW_SP_RESOURCE_KVD_LINEAR_CHUNKS = common dso_local global i32 0, align 4
@MLXSW_SP1_KVDL_LARGE_CHUNKS_ALLOC_SIZE = common dso_local global i32 0, align 4
@MLXSW_SP_RESOURCE_NAME_KVD_LINEAR_LARGE_CHUNKS = common dso_local global i32 0, align 4
@MLXSW_SP1_KVDL_LARGE_CHUNKS_SIZE = common dso_local global i32 0, align 4
@MLXSW_SP_RESOURCE_KVD_LINEAR_LARGE_CHUNKS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp1_kvdl_resources_register(%struct.mlxsw_core* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxsw_core*, align 8
  %4 = alloca %struct.devlink*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.mlxsw_core* %0, %struct.mlxsw_core** %3, align 8
  %7 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %8 = call %struct.devlink* @priv_to_devlink(%struct.mlxsw_core* %7)
  store %struct.devlink* %8, %struct.devlink** %4, align 8
  %9 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %10 = load i32, i32* @KVD_SIZE, align 4
  %11 = call i64 @MLXSW_CORE_RES_GET(%struct.mlxsw_core* %9, i32 %10)
  %12 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %13 = load i32, i32* @KVD_SINGLE_MIN_SIZE, align 4
  %14 = call i64 @MLXSW_CORE_RES_GET(%struct.mlxsw_core* %12, i32 %13)
  %15 = sub nsw i64 %11, %14
  %16 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %17 = load i32, i32* @KVD_DOUBLE_MIN_SIZE, align 4
  %18 = call i64 @MLXSW_CORE_RES_GET(%struct.mlxsw_core* %16, i32 %17)
  %19 = sub nsw i64 %15, %18
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i32, i32* @MLXSW_SP1_KVDL_SINGLE_ALLOC_SIZE, align 4
  %22 = load i32, i32* @DEVLINK_RESOURCE_UNIT_ENTRY, align 4
  %23 = call i32 @devlink_resource_size_params_init(%struct.devlink_resource_size_params* @mlxsw_sp1_kvdl_resources_register.size_params, i32 0, i64 %20, i32 %21, i32 %22)
  %24 = load %struct.devlink*, %struct.devlink** %4, align 8
  %25 = load i32, i32* @MLXSW_SP_RESOURCE_NAME_KVD_LINEAR_SINGLES, align 4
  %26 = load i32, i32* @MLXSW_SP1_KVDL_SINGLE_SIZE, align 4
  %27 = load i32, i32* @MLXSW_SP_RESOURCE_KVD_LINEAR_SINGLE, align 4
  %28 = load i32, i32* @MLXSW_SP_RESOURCE_KVD_LINEAR, align 4
  %29 = call i32 @devlink_resource_register(%struct.devlink* %24, i32 %25, i32 %26, i32 %27, i32 %28, %struct.devlink_resource_size_params* @mlxsw_sp1_kvdl_resources_register.size_params)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %2, align 4
  br label %61

34:                                               ; preds = %1
  %35 = load i64, i64* %5, align 8
  %36 = load i32, i32* @MLXSW_SP1_KVDL_CHUNKS_ALLOC_SIZE, align 4
  %37 = load i32, i32* @DEVLINK_RESOURCE_UNIT_ENTRY, align 4
  %38 = call i32 @devlink_resource_size_params_init(%struct.devlink_resource_size_params* @mlxsw_sp1_kvdl_resources_register.size_params, i32 0, i64 %35, i32 %36, i32 %37)
  %39 = load %struct.devlink*, %struct.devlink** %4, align 8
  %40 = load i32, i32* @MLXSW_SP_RESOURCE_NAME_KVD_LINEAR_CHUNKS, align 4
  %41 = load i32, i32* @MLXSW_SP1_KVDL_CHUNKS_SIZE, align 4
  %42 = load i32, i32* @MLXSW_SP_RESOURCE_KVD_LINEAR_CHUNKS, align 4
  %43 = load i32, i32* @MLXSW_SP_RESOURCE_KVD_LINEAR, align 4
  %44 = call i32 @devlink_resource_register(%struct.devlink* %39, i32 %40, i32 %41, i32 %42, i32 %43, %struct.devlink_resource_size_params* @mlxsw_sp1_kvdl_resources_register.size_params)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %34
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  br label %61

49:                                               ; preds = %34
  %50 = load i64, i64* %5, align 8
  %51 = load i32, i32* @MLXSW_SP1_KVDL_LARGE_CHUNKS_ALLOC_SIZE, align 4
  %52 = load i32, i32* @DEVLINK_RESOURCE_UNIT_ENTRY, align 4
  %53 = call i32 @devlink_resource_size_params_init(%struct.devlink_resource_size_params* @mlxsw_sp1_kvdl_resources_register.size_params, i32 0, i64 %50, i32 %51, i32 %52)
  %54 = load %struct.devlink*, %struct.devlink** %4, align 8
  %55 = load i32, i32* @MLXSW_SP_RESOURCE_NAME_KVD_LINEAR_LARGE_CHUNKS, align 4
  %56 = load i32, i32* @MLXSW_SP1_KVDL_LARGE_CHUNKS_SIZE, align 4
  %57 = load i32, i32* @MLXSW_SP_RESOURCE_KVD_LINEAR_LARGE_CHUNKS, align 4
  %58 = load i32, i32* @MLXSW_SP_RESOURCE_KVD_LINEAR, align 4
  %59 = call i32 @devlink_resource_register(%struct.devlink* %54, i32 %55, i32 %56, i32 %57, i32 %58, %struct.devlink_resource_size_params* @mlxsw_sp1_kvdl_resources_register.size_params)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %49, %47, %32
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.devlink* @priv_to_devlink(%struct.mlxsw_core*) #1

declare dso_local i64 @MLXSW_CORE_RES_GET(%struct.mlxsw_core*, i32) #1

declare dso_local i32 @devlink_resource_size_params_init(%struct.devlink_resource_size_params*, i32, i64, i32, i32) #1

declare dso_local i32 @devlink_resource_register(%struct.devlink*, i32, i32, i32, i32, %struct.devlink_resource_size_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
