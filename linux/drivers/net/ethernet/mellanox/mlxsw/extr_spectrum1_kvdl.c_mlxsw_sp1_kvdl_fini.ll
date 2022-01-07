; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum1_kvdl.c_mlxsw_sp1_kvdl_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum1_kvdl.c_mlxsw_sp1_kvdl_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.devlink = type { i32 }
%struct.mlxsw_sp1_kvdl = type { i32 }

@MLXSW_SP_RESOURCE_KVD_LINEAR_LARGE_CHUNKS = common dso_local global i32 0, align 4
@MLXSW_SP_RESOURCE_KVD_LINEAR_CHUNKS = common dso_local global i32 0, align 4
@MLXSW_SP_RESOURCE_KVD_LINEAR_SINGLE = common dso_local global i32 0, align 4
@MLXSW_SP_RESOURCE_KVD_LINEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp*, i8*)* @mlxsw_sp1_kvdl_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp1_kvdl_fini(%struct.mlxsw_sp* %0, i8* %1) #0 {
  %3 = alloca %struct.mlxsw_sp*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.devlink*, align 8
  %6 = alloca %struct.mlxsw_sp1_kvdl*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %8 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.devlink* @priv_to_devlink(i32 %9)
  store %struct.devlink* %10, %struct.devlink** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.mlxsw_sp1_kvdl*
  store %struct.mlxsw_sp1_kvdl* %12, %struct.mlxsw_sp1_kvdl** %6, align 8
  %13 = load %struct.devlink*, %struct.devlink** %5, align 8
  %14 = load i32, i32* @MLXSW_SP_RESOURCE_KVD_LINEAR_LARGE_CHUNKS, align 4
  %15 = call i32 @devlink_resource_occ_get_unregister(%struct.devlink* %13, i32 %14)
  %16 = load %struct.devlink*, %struct.devlink** %5, align 8
  %17 = load i32, i32* @MLXSW_SP_RESOURCE_KVD_LINEAR_CHUNKS, align 4
  %18 = call i32 @devlink_resource_occ_get_unregister(%struct.devlink* %16, i32 %17)
  %19 = load %struct.devlink*, %struct.devlink** %5, align 8
  %20 = load i32, i32* @MLXSW_SP_RESOURCE_KVD_LINEAR_SINGLE, align 4
  %21 = call i32 @devlink_resource_occ_get_unregister(%struct.devlink* %19, i32 %20)
  %22 = load %struct.devlink*, %struct.devlink** %5, align 8
  %23 = load i32, i32* @MLXSW_SP_RESOURCE_KVD_LINEAR, align 4
  %24 = call i32 @devlink_resource_occ_get_unregister(%struct.devlink* %22, i32 %23)
  %25 = load %struct.mlxsw_sp1_kvdl*, %struct.mlxsw_sp1_kvdl** %6, align 8
  %26 = call i32 @mlxsw_sp1_kvdl_parts_fini(%struct.mlxsw_sp1_kvdl* %25)
  ret void
}

declare dso_local %struct.devlink* @priv_to_devlink(i32) #1

declare dso_local i32 @devlink_resource_occ_get_unregister(%struct.devlink*, i32) #1

declare dso_local i32 @mlxsw_sp1_kvdl_parts_fini(%struct.mlxsw_sp1_kvdl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
