; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum1_kvdl.c_mlxsw_sp1_kvdl_part_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum1_kvdl.c_mlxsw_sp1_kvdl_part_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp1_kvdl_part_info = type { i32, i64, i64, i32 }
%struct.mlxsw_sp1_kvdl_part = type { i32 }
%struct.devlink = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_sp1_kvdl_part* (%struct.mlxsw_sp*, %struct.mlxsw_sp1_kvdl_part_info*, %struct.mlxsw_sp1_kvdl_part*)* @mlxsw_sp1_kvdl_part_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_sp1_kvdl_part* @mlxsw_sp1_kvdl_part_init(%struct.mlxsw_sp* %0, %struct.mlxsw_sp1_kvdl_part_info* %1, %struct.mlxsw_sp1_kvdl_part* %2) #0 {
  %4 = alloca %struct.mlxsw_sp1_kvdl_part*, align 8
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca %struct.mlxsw_sp1_kvdl_part_info*, align 8
  %7 = alloca %struct.mlxsw_sp1_kvdl_part*, align 8
  %8 = alloca %struct.devlink*, align 8
  %9 = alloca %struct.mlxsw_sp1_kvdl_part*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %5, align 8
  store %struct.mlxsw_sp1_kvdl_part_info* %1, %struct.mlxsw_sp1_kvdl_part_info** %6, align 8
  store %struct.mlxsw_sp1_kvdl_part* %2, %struct.mlxsw_sp1_kvdl_part** %7, align 8
  %15 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.devlink* @priv_to_devlink(i32 %17)
  store %struct.devlink* %18, %struct.devlink** %8, align 8
  store i32 1, i32* %10, align 4
  %19 = load %struct.devlink*, %struct.devlink** %8, align 8
  %20 = load %struct.mlxsw_sp1_kvdl_part_info*, %struct.mlxsw_sp1_kvdl_part_info** %6, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part_info, %struct.mlxsw_sp1_kvdl_part_info* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @devlink_resource_size_get(%struct.devlink* %19, i32 %22, i64* %13)
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %14, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  %27 = load %struct.mlxsw_sp1_kvdl_part_info*, %struct.mlxsw_sp1_kvdl_part_info** %6, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part_info, %struct.mlxsw_sp1_kvdl_part_info* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.mlxsw_sp1_kvdl_part_info*, %struct.mlxsw_sp1_kvdl_part_info** %6, align 8
  %31 = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part_info, %struct.mlxsw_sp1_kvdl_part_info* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %29, %32
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %13, align 8
  br label %35

35:                                               ; preds = %26, %3
  %36 = load i64, i64* %13, align 8
  %37 = load %struct.mlxsw_sp1_kvdl_part_info*, %struct.mlxsw_sp1_kvdl_part_info** %6, align 8
  %38 = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part_info, %struct.mlxsw_sp1_kvdl_part_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @div_u64(i64 %36, i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @BITS_TO_LONGS(i32 %41)
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 8
  store i64 %44, i64* %12, align 8
  %45 = load i64, i64* %12, align 8
  %46 = add i64 4, %45
  %47 = trunc i64 %46 to i32
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call %struct.mlxsw_sp1_kvdl_part* @kzalloc(i32 %47, i32 %48)
  store %struct.mlxsw_sp1_kvdl_part* %49, %struct.mlxsw_sp1_kvdl_part** %9, align 8
  %50 = load %struct.mlxsw_sp1_kvdl_part*, %struct.mlxsw_sp1_kvdl_part** %9, align 8
  %51 = icmp ne %struct.mlxsw_sp1_kvdl_part* %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %35
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  %55 = call %struct.mlxsw_sp1_kvdl_part* @ERR_PTR(i32 %54)
  store %struct.mlxsw_sp1_kvdl_part* %55, %struct.mlxsw_sp1_kvdl_part** %4, align 8
  br label %70

56:                                               ; preds = %35
  %57 = load %struct.mlxsw_sp1_kvdl_part*, %struct.mlxsw_sp1_kvdl_part** %9, align 8
  %58 = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part, %struct.mlxsw_sp1_kvdl_part* %57, i32 0, i32 0
  %59 = load %struct.mlxsw_sp1_kvdl_part_info*, %struct.mlxsw_sp1_kvdl_part_info** %6, align 8
  %60 = call i32 @memcpy(i32* %58, %struct.mlxsw_sp1_kvdl_part_info* %59, i32 4)
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %56
  %64 = load %struct.mlxsw_sp1_kvdl_part*, %struct.mlxsw_sp1_kvdl_part** %9, align 8
  %65 = load %struct.mlxsw_sp1_kvdl_part*, %struct.mlxsw_sp1_kvdl_part** %7, align 8
  %66 = load i64, i64* %13, align 8
  %67 = call i32 @mlxsw_sp1_kvdl_part_update(%struct.mlxsw_sp1_kvdl_part* %64, %struct.mlxsw_sp1_kvdl_part* %65, i64 %66)
  br label %68

68:                                               ; preds = %63, %56
  %69 = load %struct.mlxsw_sp1_kvdl_part*, %struct.mlxsw_sp1_kvdl_part** %9, align 8
  store %struct.mlxsw_sp1_kvdl_part* %69, %struct.mlxsw_sp1_kvdl_part** %4, align 8
  br label %70

70:                                               ; preds = %68, %52
  %71 = load %struct.mlxsw_sp1_kvdl_part*, %struct.mlxsw_sp1_kvdl_part** %4, align 8
  ret %struct.mlxsw_sp1_kvdl_part* %71
}

declare dso_local %struct.devlink* @priv_to_devlink(i32) #1

declare dso_local i32 @devlink_resource_size_get(%struct.devlink*, i32, i64*) #1

declare dso_local i32 @div_u64(i64, i32) #1

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local %struct.mlxsw_sp1_kvdl_part* @kzalloc(i32, i32) #1

declare dso_local %struct.mlxsw_sp1_kvdl_part* @ERR_PTR(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.mlxsw_sp1_kvdl_part_info*, i32) #1

declare dso_local i32 @mlxsw_sp1_kvdl_part_update(%struct.mlxsw_sp1_kvdl_part*, %struct.mlxsw_sp1_kvdl_part*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
