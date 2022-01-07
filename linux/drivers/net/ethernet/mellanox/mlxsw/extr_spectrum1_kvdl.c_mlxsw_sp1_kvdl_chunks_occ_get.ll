; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum1_kvdl.c_mlxsw_sp1_kvdl_chunks_occ_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum1_kvdl.c_mlxsw_sp1_kvdl_chunks_occ_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp1_kvdl = type { %struct.mlxsw_sp1_kvdl_part** }
%struct.mlxsw_sp1_kvdl_part = type { i32 }

@MLXSW_SP1_KVDL_PART_ID_CHUNKS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @mlxsw_sp1_kvdl_chunks_occ_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp1_kvdl_chunks_occ_get(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mlxsw_sp1_kvdl*, align 8
  %4 = alloca %struct.mlxsw_sp1_kvdl_part*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.mlxsw_sp1_kvdl*
  store %struct.mlxsw_sp1_kvdl* %6, %struct.mlxsw_sp1_kvdl** %3, align 8
  %7 = load %struct.mlxsw_sp1_kvdl*, %struct.mlxsw_sp1_kvdl** %3, align 8
  %8 = getelementptr inbounds %struct.mlxsw_sp1_kvdl, %struct.mlxsw_sp1_kvdl* %7, i32 0, i32 0
  %9 = load %struct.mlxsw_sp1_kvdl_part**, %struct.mlxsw_sp1_kvdl_part*** %8, align 8
  %10 = load i64, i64* @MLXSW_SP1_KVDL_PART_ID_CHUNKS, align 8
  %11 = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part*, %struct.mlxsw_sp1_kvdl_part** %9, i64 %10
  %12 = load %struct.mlxsw_sp1_kvdl_part*, %struct.mlxsw_sp1_kvdl_part** %11, align 8
  store %struct.mlxsw_sp1_kvdl_part* %12, %struct.mlxsw_sp1_kvdl_part** %4, align 8
  %13 = load %struct.mlxsw_sp1_kvdl_part*, %struct.mlxsw_sp1_kvdl_part** %4, align 8
  %14 = call i32 @mlxsw_sp1_kvdl_part_occ(%struct.mlxsw_sp1_kvdl_part* %13)
  ret i32 %14
}

declare dso_local i32 @mlxsw_sp1_kvdl_part_occ(%struct.mlxsw_sp1_kvdl_part*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
