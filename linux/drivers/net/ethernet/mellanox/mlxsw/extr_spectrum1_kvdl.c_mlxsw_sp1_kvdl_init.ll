; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum1_kvdl.c_mlxsw_sp1_kvdl_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum1_kvdl.c_mlxsw_sp1_kvdl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.devlink = type { i32 }
%struct.mlxsw_sp1_kvdl = type { i32 }

@MLXSW_SP_RESOURCE_KVD_LINEAR = common dso_local global i32 0, align 4
@mlxsw_sp1_kvdl_occ_get = common dso_local global i32 0, align 4
@MLXSW_SP_RESOURCE_KVD_LINEAR_SINGLE = common dso_local global i32 0, align 4
@mlxsw_sp1_kvdl_single_occ_get = common dso_local global i32 0, align 4
@MLXSW_SP_RESOURCE_KVD_LINEAR_CHUNKS = common dso_local global i32 0, align 4
@mlxsw_sp1_kvdl_chunks_occ_get = common dso_local global i32 0, align 4
@MLXSW_SP_RESOURCE_KVD_LINEAR_LARGE_CHUNKS = common dso_local global i32 0, align 4
@mlxsw_sp1_kvdl_large_chunks_occ_get = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, i8*)* @mlxsw_sp1_kvdl_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp1_kvdl_init(%struct.mlxsw_sp* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.devlink*, align 8
  %7 = alloca %struct.mlxsw_sp1_kvdl*, align 8
  %8 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %10 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.devlink* @priv_to_devlink(i32 %11)
  store %struct.devlink* %12, %struct.devlink** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.mlxsw_sp1_kvdl*
  store %struct.mlxsw_sp1_kvdl* %14, %struct.mlxsw_sp1_kvdl** %7, align 8
  %15 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %16 = load %struct.mlxsw_sp1_kvdl*, %struct.mlxsw_sp1_kvdl** %7, align 8
  %17 = call i32 @mlxsw_sp1_kvdl_parts_init(%struct.mlxsw_sp* %15, %struct.mlxsw_sp1_kvdl* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %3, align 4
  br label %43

22:                                               ; preds = %2
  %23 = load %struct.devlink*, %struct.devlink** %6, align 8
  %24 = load i32, i32* @MLXSW_SP_RESOURCE_KVD_LINEAR, align 4
  %25 = load i32, i32* @mlxsw_sp1_kvdl_occ_get, align 4
  %26 = load %struct.mlxsw_sp1_kvdl*, %struct.mlxsw_sp1_kvdl** %7, align 8
  %27 = call i32 @devlink_resource_occ_get_register(%struct.devlink* %23, i32 %24, i32 %25, %struct.mlxsw_sp1_kvdl* %26)
  %28 = load %struct.devlink*, %struct.devlink** %6, align 8
  %29 = load i32, i32* @MLXSW_SP_RESOURCE_KVD_LINEAR_SINGLE, align 4
  %30 = load i32, i32* @mlxsw_sp1_kvdl_single_occ_get, align 4
  %31 = load %struct.mlxsw_sp1_kvdl*, %struct.mlxsw_sp1_kvdl** %7, align 8
  %32 = call i32 @devlink_resource_occ_get_register(%struct.devlink* %28, i32 %29, i32 %30, %struct.mlxsw_sp1_kvdl* %31)
  %33 = load %struct.devlink*, %struct.devlink** %6, align 8
  %34 = load i32, i32* @MLXSW_SP_RESOURCE_KVD_LINEAR_CHUNKS, align 4
  %35 = load i32, i32* @mlxsw_sp1_kvdl_chunks_occ_get, align 4
  %36 = load %struct.mlxsw_sp1_kvdl*, %struct.mlxsw_sp1_kvdl** %7, align 8
  %37 = call i32 @devlink_resource_occ_get_register(%struct.devlink* %33, i32 %34, i32 %35, %struct.mlxsw_sp1_kvdl* %36)
  %38 = load %struct.devlink*, %struct.devlink** %6, align 8
  %39 = load i32, i32* @MLXSW_SP_RESOURCE_KVD_LINEAR_LARGE_CHUNKS, align 4
  %40 = load i32, i32* @mlxsw_sp1_kvdl_large_chunks_occ_get, align 4
  %41 = load %struct.mlxsw_sp1_kvdl*, %struct.mlxsw_sp1_kvdl** %7, align 8
  %42 = call i32 @devlink_resource_occ_get_register(%struct.devlink* %38, i32 %39, i32 %40, %struct.mlxsw_sp1_kvdl* %41)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %22, %20
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.devlink* @priv_to_devlink(i32) #1

declare dso_local i32 @mlxsw_sp1_kvdl_parts_init(%struct.mlxsw_sp*, %struct.mlxsw_sp1_kvdl*) #1

declare dso_local i32 @devlink_resource_occ_get_register(%struct.devlink*, i32, i32, %struct.mlxsw_sp1_kvdl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
