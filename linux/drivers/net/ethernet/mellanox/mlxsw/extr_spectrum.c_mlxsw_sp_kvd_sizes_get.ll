; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_kvd_sizes_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_kvd_sizes_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_core = type { i32 }
%struct.mlxsw_config_profile = type { i64, i64, i64 }
%struct.devlink = type { i32 }

@KVD_SINGLE_MIN_SIZE = common dso_local global i32 0, align 4
@KVD_DOUBLE_MIN_SIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@MLXSW_SP_RESOURCE_KVD_LINEAR = common dso_local global i32 0, align 4
@MLXSW_SP_RESOURCE_KVD_HASH_DOUBLE = common dso_local global i32 0, align 4
@KVD_SIZE = common dso_local global i32 0, align 4
@MLXSW_SP_KVD_GRANULARITY = common dso_local global i32 0, align 4
@MLXSW_SP_RESOURCE_KVD_HASH_SINGLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_core*, %struct.mlxsw_config_profile*, i64*, i64*, i64*)* @mlxsw_sp_kvd_sizes_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_kvd_sizes_get(%struct.mlxsw_core* %0, %struct.mlxsw_config_profile* %1, i64* %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlxsw_core*, align 8
  %8 = alloca %struct.mlxsw_config_profile*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.devlink*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.mlxsw_core* %0, %struct.mlxsw_core** %7, align 8
  store %struct.mlxsw_config_profile* %1, %struct.mlxsw_config_profile** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  %15 = load %struct.mlxsw_core*, %struct.mlxsw_core** %7, align 8
  %16 = call %struct.devlink* @priv_to_devlink(%struct.mlxsw_core* %15)
  store %struct.devlink* %16, %struct.devlink** %12, align 8
  %17 = load %struct.mlxsw_core*, %struct.mlxsw_core** %7, align 8
  %18 = load i32, i32* @KVD_SINGLE_MIN_SIZE, align 4
  %19 = call i32 @MLXSW_CORE_RES_VALID(%struct.mlxsw_core* %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %5
  %22 = load %struct.mlxsw_core*, %struct.mlxsw_core** %7, align 8
  %23 = load i32, i32* @KVD_DOUBLE_MIN_SIZE, align 4
  %24 = call i32 @MLXSW_CORE_RES_VALID(%struct.mlxsw_core* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21, %5
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %116

29:                                               ; preds = %21
  %30 = load %struct.devlink*, %struct.devlink** %12, align 8
  %31 = load i32, i32* @MLXSW_SP_RESOURCE_KVD_LINEAR, align 4
  %32 = load i64*, i64** %11, align 8
  %33 = call i32 @devlink_resource_size_get(%struct.devlink* %30, i32 %31, i64* %32)
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load %struct.mlxsw_config_profile*, %struct.mlxsw_config_profile** %8, align 8
  %38 = getelementptr inbounds %struct.mlxsw_config_profile, %struct.mlxsw_config_profile* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64*, i64** %11, align 8
  store i64 %39, i64* %40, align 8
  br label %41

41:                                               ; preds = %36, %29
  %42 = load %struct.devlink*, %struct.devlink** %12, align 8
  %43 = load i32, i32* @MLXSW_SP_RESOURCE_KVD_HASH_DOUBLE, align 4
  %44 = load i64*, i64** %10, align 8
  %45 = call i32 @devlink_resource_size_get(%struct.devlink* %42, i32 %43, i64* %44)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %73

48:                                               ; preds = %41
  %49 = load %struct.mlxsw_core*, %struct.mlxsw_core** %7, align 8
  %50 = load i32, i32* @KVD_SIZE, align 4
  %51 = call i64 @MLXSW_CORE_RES_GET(%struct.mlxsw_core* %49, i32 %50)
  %52 = load i64*, i64** %11, align 8
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %51, %53
  store i64 %54, i64* %13, align 8
  %55 = load %struct.mlxsw_config_profile*, %struct.mlxsw_config_profile** %8, align 8
  %56 = getelementptr inbounds %struct.mlxsw_config_profile, %struct.mlxsw_config_profile* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %13, align 8
  %59 = mul nsw i64 %58, %57
  store i64 %59, i64* %13, align 8
  %60 = load %struct.mlxsw_config_profile*, %struct.mlxsw_config_profile** %8, align 8
  %61 = getelementptr inbounds %struct.mlxsw_config_profile, %struct.mlxsw_config_profile* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.mlxsw_config_profile*, %struct.mlxsw_config_profile** %8, align 8
  %64 = getelementptr inbounds %struct.mlxsw_config_profile, %struct.mlxsw_config_profile* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %62, %65
  %67 = load i64, i64* %13, align 8
  %68 = sdiv i64 %67, %66
  store i64 %68, i64* %13, align 8
  %69 = load i64, i64* %13, align 8
  %70 = load i32, i32* @MLXSW_SP_KVD_GRANULARITY, align 4
  %71 = call i64 @rounddown(i64 %69, i32 %70)
  %72 = load i64*, i64** %10, align 8
  store i64 %71, i64* %72, align 8
  br label %73

73:                                               ; preds = %48, %41
  %74 = load %struct.devlink*, %struct.devlink** %12, align 8
  %75 = load i32, i32* @MLXSW_SP_RESOURCE_KVD_HASH_SINGLE, align 4
  %76 = load i64*, i64** %9, align 8
  %77 = call i32 @devlink_resource_size_get(%struct.devlink* %74, i32 %75, i64* %76)
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %14, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %73
  %81 = load %struct.mlxsw_core*, %struct.mlxsw_core** %7, align 8
  %82 = load i32, i32* @KVD_SIZE, align 4
  %83 = call i64 @MLXSW_CORE_RES_GET(%struct.mlxsw_core* %81, i32 %82)
  %84 = load i64*, i64** %10, align 8
  %85 = load i64, i64* %84, align 8
  %86 = sub nsw i64 %83, %85
  %87 = load i64*, i64** %11, align 8
  %88 = load i64, i64* %87, align 8
  %89 = sub nsw i64 %86, %88
  %90 = load i64*, i64** %9, align 8
  store i64 %89, i64* %90, align 8
  br label %91

91:                                               ; preds = %80, %73
  %92 = load i64*, i64** %9, align 8
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.mlxsw_core*, %struct.mlxsw_core** %7, align 8
  %95 = load i32, i32* @KVD_SINGLE_MIN_SIZE, align 4
  %96 = call i64 @MLXSW_CORE_RES_GET(%struct.mlxsw_core* %94, i32 %95)
  %97 = icmp slt i64 %93, %96
  br i1 %97, label %112, label %98

98:                                               ; preds = %91
  %99 = load i64*, i64** %10, align 8
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.mlxsw_core*, %struct.mlxsw_core** %7, align 8
  %102 = load i32, i32* @KVD_DOUBLE_MIN_SIZE, align 4
  %103 = call i64 @MLXSW_CORE_RES_GET(%struct.mlxsw_core* %101, i32 %102)
  %104 = icmp slt i64 %100, %103
  br i1 %104, label %112, label %105

105:                                              ; preds = %98
  %106 = load %struct.mlxsw_core*, %struct.mlxsw_core** %7, align 8
  %107 = load i32, i32* @KVD_SIZE, align 4
  %108 = call i64 @MLXSW_CORE_RES_GET(%struct.mlxsw_core* %106, i32 %107)
  %109 = load i64*, i64** %11, align 8
  %110 = load i64, i64* %109, align 8
  %111 = icmp slt i64 %108, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %105, %98, %91
  %113 = load i32, i32* @EIO, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %6, align 4
  br label %116

115:                                              ; preds = %105
  store i32 0, i32* %6, align 4
  br label %116

116:                                              ; preds = %115, %112, %26
  %117 = load i32, i32* %6, align 4
  ret i32 %117
}

declare dso_local %struct.devlink* @priv_to_devlink(%struct.mlxsw_core*) #1

declare dso_local i32 @MLXSW_CORE_RES_VALID(%struct.mlxsw_core*, i32) #1

declare dso_local i32 @devlink_resource_size_get(%struct.devlink*, i32, i64*) #1

declare dso_local i64 @MLXSW_CORE_RES_GET(%struct.mlxsw_core*, i32) #1

declare dso_local i64 @rounddown(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
