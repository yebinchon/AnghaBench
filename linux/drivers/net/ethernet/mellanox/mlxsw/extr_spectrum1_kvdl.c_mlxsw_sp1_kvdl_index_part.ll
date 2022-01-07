; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum1_kvdl.c_mlxsw_sp1_kvdl_index_part.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum1_kvdl.c_mlxsw_sp1_kvdl_index_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp1_kvdl_part = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.mlxsw_sp1_kvdl = type { %struct.mlxsw_sp1_kvdl_part** }

@MLXSW_SP1_KVDL_PARTS_INFO_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_sp1_kvdl_part* (%struct.mlxsw_sp1_kvdl*, i64)* @mlxsw_sp1_kvdl_index_part to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_sp1_kvdl_part* @mlxsw_sp1_kvdl_index_part(%struct.mlxsw_sp1_kvdl* %0, i64 %1) #0 {
  %3 = alloca %struct.mlxsw_sp1_kvdl_part*, align 8
  %4 = alloca %struct.mlxsw_sp1_kvdl*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mlxsw_sp1_kvdl_part*, align 8
  %7 = alloca i32, align 4
  store %struct.mlxsw_sp1_kvdl* %0, %struct.mlxsw_sp1_kvdl** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %36, %2
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @MLXSW_SP1_KVDL_PARTS_INFO_LEN, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %39

12:                                               ; preds = %8
  %13 = load %struct.mlxsw_sp1_kvdl*, %struct.mlxsw_sp1_kvdl** %4, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp1_kvdl, %struct.mlxsw_sp1_kvdl* %13, i32 0, i32 0
  %15 = load %struct.mlxsw_sp1_kvdl_part**, %struct.mlxsw_sp1_kvdl_part*** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part*, %struct.mlxsw_sp1_kvdl_part** %15, i64 %17
  %19 = load %struct.mlxsw_sp1_kvdl_part*, %struct.mlxsw_sp1_kvdl_part** %18, align 8
  store %struct.mlxsw_sp1_kvdl_part* %19, %struct.mlxsw_sp1_kvdl_part** %6, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.mlxsw_sp1_kvdl_part*, %struct.mlxsw_sp1_kvdl_part** %6, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part, %struct.mlxsw_sp1_kvdl_part* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sge i64 %20, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %12
  %27 = load i64, i64* %5, align 8
  %28 = load %struct.mlxsw_sp1_kvdl_part*, %struct.mlxsw_sp1_kvdl_part** %6, align 8
  %29 = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part, %struct.mlxsw_sp1_kvdl_part* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp sle i64 %27, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load %struct.mlxsw_sp1_kvdl_part*, %struct.mlxsw_sp1_kvdl_part** %6, align 8
  store %struct.mlxsw_sp1_kvdl_part* %34, %struct.mlxsw_sp1_kvdl_part** %3, align 8
  br label %43

35:                                               ; preds = %26, %12
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %8

39:                                               ; preds = %8
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  %42 = call %struct.mlxsw_sp1_kvdl_part* @ERR_PTR(i32 %41)
  store %struct.mlxsw_sp1_kvdl_part* %42, %struct.mlxsw_sp1_kvdl_part** %3, align 8
  br label %43

43:                                               ; preds = %39, %33
  %44 = load %struct.mlxsw_sp1_kvdl_part*, %struct.mlxsw_sp1_kvdl_part** %3, align 8
  ret %struct.mlxsw_sp1_kvdl_part* %44
}

declare dso_local %struct.mlxsw_sp1_kvdl_part* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
