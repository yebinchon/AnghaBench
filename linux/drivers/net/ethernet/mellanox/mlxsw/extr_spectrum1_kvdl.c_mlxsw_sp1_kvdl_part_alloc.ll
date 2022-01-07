; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum1_kvdl.c_mlxsw_sp1_kvdl_part_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum1_kvdl.c_mlxsw_sp1_kvdl_part_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp1_kvdl_part = type { i32, %struct.mlxsw_sp1_kvdl_part_info }
%struct.mlxsw_sp1_kvdl_part_info = type { i32, i32, i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp1_kvdl_part*, i32*)* @mlxsw_sp1_kvdl_part_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp1_kvdl_part_alloc(%struct.mlxsw_sp1_kvdl_part* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_sp1_kvdl_part*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.mlxsw_sp1_kvdl_part_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlxsw_sp1_kvdl_part* %0, %struct.mlxsw_sp1_kvdl_part** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.mlxsw_sp1_kvdl_part*, %struct.mlxsw_sp1_kvdl_part** %4, align 8
  %10 = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part, %struct.mlxsw_sp1_kvdl_part* %9, i32 0, i32 1
  store %struct.mlxsw_sp1_kvdl_part_info* %10, %struct.mlxsw_sp1_kvdl_part_info** %6, align 8
  %11 = load %struct.mlxsw_sp1_kvdl_part_info*, %struct.mlxsw_sp1_kvdl_part_info** %6, align 8
  %12 = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part_info, %struct.mlxsw_sp1_kvdl_part_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.mlxsw_sp1_kvdl_part_info*, %struct.mlxsw_sp1_kvdl_part_info** %6, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part_info, %struct.mlxsw_sp1_kvdl_part_info* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = sub nsw i32 %13, %16
  %18 = add nsw i32 %17, 1
  %19 = load %struct.mlxsw_sp1_kvdl_part_info*, %struct.mlxsw_sp1_kvdl_part_info** %6, align 8
  %20 = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part_info, %struct.mlxsw_sp1_kvdl_part_info* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = sdiv i32 %18, %21
  store i32 %22, i32* %8, align 4
  %23 = load %struct.mlxsw_sp1_kvdl_part*, %struct.mlxsw_sp1_kvdl_part** %4, align 8
  %24 = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part, %struct.mlxsw_sp1_kvdl_part* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @find_first_zero_bit(i32 %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = load i32, i32* @ENOBUFS, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %44

34:                                               ; preds = %2
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.mlxsw_sp1_kvdl_part*, %struct.mlxsw_sp1_kvdl_part** %4, align 8
  %37 = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part, %struct.mlxsw_sp1_kvdl_part* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @__set_bit(i32 %35, i32 %38)
  %40 = load %struct.mlxsw_sp1_kvdl_part_info*, %struct.mlxsw_sp1_kvdl_part_info** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @mlxsw_sp1_kvdl_to_kvdl_index(%struct.mlxsw_sp1_kvdl_part_info* %40, i32 %41)
  %43 = load i32*, i32** %5, align 8
  store i32 %42, i32* %43, align 4
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %34, %31
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @mlxsw_sp1_kvdl_to_kvdl_index(%struct.mlxsw_sp1_kvdl_part_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
