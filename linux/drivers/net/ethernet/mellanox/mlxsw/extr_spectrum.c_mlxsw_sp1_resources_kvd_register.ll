; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp1_resources_kvd_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp1_resources_kvd_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_config_profile = type { i64, i64, i64 }
%struct.mlxsw_core = type { i32 }
%struct.devlink = type { i32 }
%struct.devlink_resource_size_params = type { i32 }

@mlxsw_sp1_config_profile = common dso_local global %struct.mlxsw_config_profile zeroinitializer, align 8
@KVD_SIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@MLXSW_SP_RESOURCE_NAME_KVD = common dso_local global i32 0, align 4
@MLXSW_SP_RESOURCE_KVD = common dso_local global i32 0, align 4
@DEVLINK_RESOURCE_ID_PARENT_TOP = common dso_local global i32 0, align 4
@MLXSW_SP_RESOURCE_NAME_KVD_LINEAR = common dso_local global i32 0, align 4
@MLXSW_SP_RESOURCE_KVD_LINEAR = common dso_local global i32 0, align 4
@MLXSW_SP_KVD_GRANULARITY = common dso_local global i32 0, align 4
@MLXSW_SP_RESOURCE_NAME_KVD_HASH_DOUBLE = common dso_local global i32 0, align 4
@MLXSW_SP_RESOURCE_KVD_HASH_DOUBLE = common dso_local global i32 0, align 4
@MLXSW_SP_RESOURCE_NAME_KVD_HASH_SINGLE = common dso_local global i32 0, align 4
@MLXSW_SP_RESOURCE_KVD_HASH_SINGLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_core*)* @mlxsw_sp1_resources_kvd_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp1_resources_kvd_register(%struct.mlxsw_core* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxsw_core*, align 8
  %4 = alloca %struct.devlink*, align 8
  %5 = alloca %struct.devlink_resource_size_params, align 4
  %6 = alloca %struct.devlink_resource_size_params, align 4
  %7 = alloca %struct.devlink_resource_size_params, align 4
  %8 = alloca %struct.devlink_resource_size_params, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.mlxsw_config_profile*, align 8
  %14 = alloca i32, align 4
  store %struct.mlxsw_core* %0, %struct.mlxsw_core** %3, align 8
  %15 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %16 = call %struct.devlink* @priv_to_devlink(%struct.mlxsw_core* %15)
  store %struct.devlink* %16, %struct.devlink** %4, align 8
  store %struct.mlxsw_config_profile* @mlxsw_sp1_config_profile, %struct.mlxsw_config_profile** %13, align 8
  %17 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %18 = load i32, i32* @KVD_SIZE, align 4
  %19 = call i32 @MLXSW_CORE_RES_VALID(%struct.mlxsw_core* %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %109

24:                                               ; preds = %1
  %25 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %26 = call i32 @mlxsw_sp_resource_size_params_prepare(%struct.mlxsw_core* %25, %struct.devlink_resource_size_params* %8, %struct.devlink_resource_size_params* %7, %struct.devlink_resource_size_params* %6, %struct.devlink_resource_size_params* %5)
  %27 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %28 = load i32, i32* @KVD_SIZE, align 4
  %29 = call i64 @MLXSW_CORE_RES_GET(%struct.mlxsw_core* %27, i32 %28)
  store i64 %29, i64* %9, align 8
  %30 = load %struct.devlink*, %struct.devlink** %4, align 8
  %31 = load i32, i32* @MLXSW_SP_RESOURCE_NAME_KVD, align 4
  %32 = load i64, i64* %9, align 8
  %33 = load i32, i32* @MLXSW_SP_RESOURCE_KVD, align 4
  %34 = load i32, i32* @DEVLINK_RESOURCE_ID_PARENT_TOP, align 4
  %35 = call i32 @devlink_resource_register(%struct.devlink* %30, i32 %31, i64 %32, i32 %33, i32 %34, %struct.devlink_resource_size_params* %8)
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %14, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %24
  %39 = load i32, i32* %14, align 4
  store i32 %39, i32* %2, align 4
  br label %109

40:                                               ; preds = %24
  %41 = load %struct.mlxsw_config_profile*, %struct.mlxsw_config_profile** %13, align 8
  %42 = getelementptr inbounds %struct.mlxsw_config_profile, %struct.mlxsw_config_profile* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %12, align 8
  %44 = load %struct.devlink*, %struct.devlink** %4, align 8
  %45 = load i32, i32* @MLXSW_SP_RESOURCE_NAME_KVD_LINEAR, align 4
  %46 = load i64, i64* %12, align 8
  %47 = load i32, i32* @MLXSW_SP_RESOURCE_KVD_LINEAR, align 4
  %48 = load i32, i32* @MLXSW_SP_RESOURCE_KVD, align 4
  %49 = call i32 @devlink_resource_register(%struct.devlink* %44, i32 %45, i64 %46, i32 %47, i32 %48, %struct.devlink_resource_size_params* %7)
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %40
  %53 = load i32, i32* %14, align 4
  store i32 %53, i32* %2, align 4
  br label %109

54:                                               ; preds = %40
  %55 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %56 = call i32 @mlxsw_sp1_kvdl_resources_register(%struct.mlxsw_core* %55)
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* %14, align 4
  store i32 %60, i32* %2, align 4
  br label %109

61:                                               ; preds = %54
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* %12, align 8
  %64 = sub nsw i64 %62, %63
  store i64 %64, i64* %11, align 8
  %65 = load %struct.mlxsw_config_profile*, %struct.mlxsw_config_profile** %13, align 8
  %66 = getelementptr inbounds %struct.mlxsw_config_profile, %struct.mlxsw_config_profile* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %11, align 8
  %69 = mul nsw i64 %68, %67
  store i64 %69, i64* %11, align 8
  %70 = load %struct.mlxsw_config_profile*, %struct.mlxsw_config_profile** %13, align 8
  %71 = getelementptr inbounds %struct.mlxsw_config_profile, %struct.mlxsw_config_profile* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.mlxsw_config_profile*, %struct.mlxsw_config_profile** %13, align 8
  %74 = getelementptr inbounds %struct.mlxsw_config_profile, %struct.mlxsw_config_profile* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %72, %75
  %77 = load i64, i64* %11, align 8
  %78 = sdiv i64 %77, %76
  store i64 %78, i64* %11, align 8
  %79 = load i64, i64* %11, align 8
  %80 = load i32, i32* @MLXSW_SP_KVD_GRANULARITY, align 4
  %81 = call i64 @rounddown(i64 %79, i32 %80)
  store i64 %81, i64* %11, align 8
  %82 = load %struct.devlink*, %struct.devlink** %4, align 8
  %83 = load i32, i32* @MLXSW_SP_RESOURCE_NAME_KVD_HASH_DOUBLE, align 4
  %84 = load i64, i64* %11, align 8
  %85 = load i32, i32* @MLXSW_SP_RESOURCE_KVD_HASH_DOUBLE, align 4
  %86 = load i32, i32* @MLXSW_SP_RESOURCE_KVD, align 4
  %87 = call i32 @devlink_resource_register(%struct.devlink* %82, i32 %83, i64 %84, i32 %85, i32 %86, %struct.devlink_resource_size_params* %6)
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %14, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %61
  %91 = load i32, i32* %14, align 4
  store i32 %91, i32* %2, align 4
  br label %109

92:                                               ; preds = %61
  %93 = load i64, i64* %9, align 8
  %94 = load i64, i64* %11, align 8
  %95 = sub nsw i64 %93, %94
  %96 = load i64, i64* %12, align 8
  %97 = sub nsw i64 %95, %96
  store i64 %97, i64* %10, align 8
  %98 = load %struct.devlink*, %struct.devlink** %4, align 8
  %99 = load i32, i32* @MLXSW_SP_RESOURCE_NAME_KVD_HASH_SINGLE, align 4
  %100 = load i64, i64* %10, align 8
  %101 = load i32, i32* @MLXSW_SP_RESOURCE_KVD_HASH_SINGLE, align 4
  %102 = load i32, i32* @MLXSW_SP_RESOURCE_KVD, align 4
  %103 = call i32 @devlink_resource_register(%struct.devlink* %98, i32 %99, i64 %100, i32 %101, i32 %102, %struct.devlink_resource_size_params* %5)
  store i32 %103, i32* %14, align 4
  %104 = load i32, i32* %14, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %92
  %107 = load i32, i32* %14, align 4
  store i32 %107, i32* %2, align 4
  br label %109

108:                                              ; preds = %92
  store i32 0, i32* %2, align 4
  br label %109

109:                                              ; preds = %108, %106, %90, %59, %52, %38, %21
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local %struct.devlink* @priv_to_devlink(%struct.mlxsw_core*) #1

declare dso_local i32 @MLXSW_CORE_RES_VALID(%struct.mlxsw_core*, i32) #1

declare dso_local i32 @mlxsw_sp_resource_size_params_prepare(%struct.mlxsw_core*, %struct.devlink_resource_size_params*, %struct.devlink_resource_size_params*, %struct.devlink_resource_size_params*, %struct.devlink_resource_size_params*) #1

declare dso_local i64 @MLXSW_CORE_RES_GET(%struct.mlxsw_core*, i32) #1

declare dso_local i32 @devlink_resource_register(%struct.devlink*, i32, i64, i32, i32, %struct.devlink_resource_size_params*) #1

declare dso_local i32 @mlxsw_sp1_kvdl_resources_register(%struct.mlxsw_core*) #1

declare dso_local i64 @rounddown(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
