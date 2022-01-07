; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum1_kvdl.c_mlxsw_sp1_kvdl_alloc_size_part.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum1_kvdl.c_mlxsw_sp1_kvdl_alloc_size_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp1_kvdl_part = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mlxsw_sp1_kvdl = type { %struct.mlxsw_sp1_kvdl_part** }

@MLXSW_SP1_KVDL_PARTS_INFO_LEN = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_sp1_kvdl_part* (%struct.mlxsw_sp1_kvdl*, i32)* @mlxsw_sp1_kvdl_alloc_size_part to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_sp1_kvdl_part* @mlxsw_sp1_kvdl_alloc_size_part(%struct.mlxsw_sp1_kvdl* %0, i32 %1) #0 {
  %3 = alloca %struct.mlxsw_sp1_kvdl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp1_kvdl_part*, align 8
  %6 = alloca %struct.mlxsw_sp1_kvdl_part*, align 8
  %7 = alloca i32, align 4
  store %struct.mlxsw_sp1_kvdl* %0, %struct.mlxsw_sp1_kvdl** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.mlxsw_sp1_kvdl_part* null, %struct.mlxsw_sp1_kvdl_part** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %42, %2
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @MLXSW_SP1_KVDL_PARTS_INFO_LEN, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %45

12:                                               ; preds = %8
  %13 = load %struct.mlxsw_sp1_kvdl*, %struct.mlxsw_sp1_kvdl** %3, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp1_kvdl, %struct.mlxsw_sp1_kvdl* %13, i32 0, i32 0
  %15 = load %struct.mlxsw_sp1_kvdl_part**, %struct.mlxsw_sp1_kvdl_part*** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part*, %struct.mlxsw_sp1_kvdl_part** %15, i64 %17
  %19 = load %struct.mlxsw_sp1_kvdl_part*, %struct.mlxsw_sp1_kvdl_part** %18, align 8
  store %struct.mlxsw_sp1_kvdl_part* %19, %struct.mlxsw_sp1_kvdl_part** %5, align 8
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.mlxsw_sp1_kvdl_part*, %struct.mlxsw_sp1_kvdl_part** %5, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part, %struct.mlxsw_sp1_kvdl_part* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ule i32 %20, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %12
  %27 = load %struct.mlxsw_sp1_kvdl_part*, %struct.mlxsw_sp1_kvdl_part** %6, align 8
  %28 = icmp ne %struct.mlxsw_sp1_kvdl_part* %27, null
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  %30 = load %struct.mlxsw_sp1_kvdl_part*, %struct.mlxsw_sp1_kvdl_part** %5, align 8
  %31 = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part, %struct.mlxsw_sp1_kvdl_part* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.mlxsw_sp1_kvdl_part*, %struct.mlxsw_sp1_kvdl_part** %6, align 8
  %35 = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part, %struct.mlxsw_sp1_kvdl_part* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ule i32 %33, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %29, %26
  %40 = load %struct.mlxsw_sp1_kvdl_part*, %struct.mlxsw_sp1_kvdl_part** %5, align 8
  store %struct.mlxsw_sp1_kvdl_part* %40, %struct.mlxsw_sp1_kvdl_part** %6, align 8
  br label %41

41:                                               ; preds = %39, %29, %12
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %8

45:                                               ; preds = %8
  %46 = load %struct.mlxsw_sp1_kvdl_part*, %struct.mlxsw_sp1_kvdl_part** %6, align 8
  %47 = icmp ne %struct.mlxsw_sp1_kvdl_part* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  br label %53

49:                                               ; preds = %45
  %50 = load i32, i32* @ENOBUFS, align 4
  %51 = sub nsw i32 0, %50
  %52 = call %struct.mlxsw_sp1_kvdl_part* @ERR_PTR(i32 %51)
  br label %53

53:                                               ; preds = %49, %48
  %54 = phi %struct.mlxsw_sp1_kvdl_part* [ %46, %48 ], [ %52, %49 ]
  ret %struct.mlxsw_sp1_kvdl_part* %54
}

declare dso_local %struct.mlxsw_sp1_kvdl_part* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
