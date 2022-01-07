; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum1_kvdl.c_mlxsw_sp1_kvdl_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum1_kvdl.c_mlxsw_sp1_kvdl_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp1_kvdl = type { i32 }
%struct.mlxsw_sp1_kvdl_part = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, i8*, i32, i32, i32*)* @mlxsw_sp1_kvdl_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp1_kvdl_alloc(%struct.mlxsw_sp* %0, i8* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlxsw_sp*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.mlxsw_sp1_kvdl*, align 8
  %13 = alloca %struct.mlxsw_sp1_kvdl_part*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to %struct.mlxsw_sp1_kvdl*
  store %struct.mlxsw_sp1_kvdl* %15, %struct.mlxsw_sp1_kvdl** %12, align 8
  %16 = load %struct.mlxsw_sp1_kvdl*, %struct.mlxsw_sp1_kvdl** %12, align 8
  %17 = load i32, i32* %10, align 4
  %18 = call %struct.mlxsw_sp1_kvdl_part* @mlxsw_sp1_kvdl_alloc_size_part(%struct.mlxsw_sp1_kvdl* %16, i32 %17)
  store %struct.mlxsw_sp1_kvdl_part* %18, %struct.mlxsw_sp1_kvdl_part** %13, align 8
  %19 = load %struct.mlxsw_sp1_kvdl_part*, %struct.mlxsw_sp1_kvdl_part** %13, align 8
  %20 = call i64 @IS_ERR(%struct.mlxsw_sp1_kvdl_part* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load %struct.mlxsw_sp1_kvdl_part*, %struct.mlxsw_sp1_kvdl_part** %13, align 8
  %24 = call i32 @PTR_ERR(%struct.mlxsw_sp1_kvdl_part* %23)
  store i32 %24, i32* %6, align 4
  br label %29

25:                                               ; preds = %5
  %26 = load %struct.mlxsw_sp1_kvdl_part*, %struct.mlxsw_sp1_kvdl_part** %13, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = call i32 @mlxsw_sp1_kvdl_part_alloc(%struct.mlxsw_sp1_kvdl_part* %26, i32* %27)
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %25, %22
  %30 = load i32, i32* %6, align 4
  ret i32 %30
}

declare dso_local %struct.mlxsw_sp1_kvdl_part* @mlxsw_sp1_kvdl_alloc_size_part(%struct.mlxsw_sp1_kvdl*, i32) #1

declare dso_local i64 @IS_ERR(%struct.mlxsw_sp1_kvdl_part*) #1

declare dso_local i32 @PTR_ERR(%struct.mlxsw_sp1_kvdl_part*) #1

declare dso_local i32 @mlxsw_sp1_kvdl_part_alloc(%struct.mlxsw_sp1_kvdl_part*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
