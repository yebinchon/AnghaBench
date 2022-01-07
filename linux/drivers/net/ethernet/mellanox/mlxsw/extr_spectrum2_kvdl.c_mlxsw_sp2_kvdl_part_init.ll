; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum2_kvdl.c_mlxsw_sp2_kvdl_part_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum2_kvdl.c_mlxsw_sp2_kvdl_part_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp2_kvdl_part = type { i32, i32, i32, %struct.mlxsw_sp2_kvdl_part_info* }
%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp2_kvdl_part_info = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_sp2_kvdl_part* (%struct.mlxsw_sp*, %struct.mlxsw_sp2_kvdl_part_info*)* @mlxsw_sp2_kvdl_part_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_sp2_kvdl_part* @mlxsw_sp2_kvdl_part_init(%struct.mlxsw_sp* %0, %struct.mlxsw_sp2_kvdl_part_info* %1) #0 {
  %3 = alloca %struct.mlxsw_sp2_kvdl_part*, align 8
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca %struct.mlxsw_sp2_kvdl_part_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlxsw_sp2_kvdl_part*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store %struct.mlxsw_sp2_kvdl_part_info* %1, %struct.mlxsw_sp2_kvdl_part_info** %5, align 8
  %11 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %12 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.mlxsw_sp2_kvdl_part_info*, %struct.mlxsw_sp2_kvdl_part_info** %5, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp2_kvdl_part_info, %struct.mlxsw_sp2_kvdl_part_info* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @mlxsw_core_res_valid(i32 %13, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.mlxsw_sp2_kvdl_part_info*, %struct.mlxsw_sp2_kvdl_part_info** %5, align 8
  %24 = getelementptr inbounds %struct.mlxsw_sp2_kvdl_part_info, %struct.mlxsw_sp2_kvdl_part_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @mlxsw_core_res_valid(i32 %22, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %19, %2
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  %31 = call %struct.mlxsw_sp2_kvdl_part* @ERR_PTR(i32 %30)
  store %struct.mlxsw_sp2_kvdl_part* %31, %struct.mlxsw_sp2_kvdl_part** %3, align 8
  br label %80

32:                                               ; preds = %19
  %33 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %34 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mlxsw_sp2_kvdl_part_info*, %struct.mlxsw_sp2_kvdl_part_info** %5, align 8
  %37 = getelementptr inbounds %struct.mlxsw_sp2_kvdl_part_info, %struct.mlxsw_sp2_kvdl_part_info* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @mlxsw_core_res_get(i32 %35, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %41 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.mlxsw_sp2_kvdl_part_info*, %struct.mlxsw_sp2_kvdl_part_info** %5, align 8
  %44 = getelementptr inbounds %struct.mlxsw_sp2_kvdl_part_info, %struct.mlxsw_sp2_kvdl_part_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @mlxsw_core_res_get(i32 %42, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = udiv i32 %47, %48
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @BITS_TO_LONGS(i32 %50)
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 8
  store i64 %53, i64* %10, align 8
  %54 = load i64, i64* %10, align 8
  %55 = add i64 24, %54
  %56 = trunc i64 %55 to i32
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call %struct.mlxsw_sp2_kvdl_part* @kzalloc(i32 %56, i32 %57)
  store %struct.mlxsw_sp2_kvdl_part* %58, %struct.mlxsw_sp2_kvdl_part** %7, align 8
  %59 = load %struct.mlxsw_sp2_kvdl_part*, %struct.mlxsw_sp2_kvdl_part** %7, align 8
  %60 = icmp ne %struct.mlxsw_sp2_kvdl_part* %59, null
  br i1 %60, label %65, label %61

61:                                               ; preds = %32
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  %64 = call %struct.mlxsw_sp2_kvdl_part* @ERR_PTR(i32 %63)
  store %struct.mlxsw_sp2_kvdl_part* %64, %struct.mlxsw_sp2_kvdl_part** %3, align 8
  br label %80

65:                                               ; preds = %32
  %66 = load %struct.mlxsw_sp2_kvdl_part_info*, %struct.mlxsw_sp2_kvdl_part_info** %5, align 8
  %67 = load %struct.mlxsw_sp2_kvdl_part*, %struct.mlxsw_sp2_kvdl_part** %7, align 8
  %68 = getelementptr inbounds %struct.mlxsw_sp2_kvdl_part, %struct.mlxsw_sp2_kvdl_part* %67, i32 0, i32 3
  store %struct.mlxsw_sp2_kvdl_part_info* %66, %struct.mlxsw_sp2_kvdl_part_info** %68, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.mlxsw_sp2_kvdl_part*, %struct.mlxsw_sp2_kvdl_part** %7, align 8
  %71 = getelementptr inbounds %struct.mlxsw_sp2_kvdl_part, %struct.mlxsw_sp2_kvdl_part* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.mlxsw_sp2_kvdl_part*, %struct.mlxsw_sp2_kvdl_part** %7, align 8
  %74 = getelementptr inbounds %struct.mlxsw_sp2_kvdl_part, %struct.mlxsw_sp2_kvdl_part* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* %9, align 4
  %76 = sub i32 %75, 1
  %77 = load %struct.mlxsw_sp2_kvdl_part*, %struct.mlxsw_sp2_kvdl_part** %7, align 8
  %78 = getelementptr inbounds %struct.mlxsw_sp2_kvdl_part, %struct.mlxsw_sp2_kvdl_part* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load %struct.mlxsw_sp2_kvdl_part*, %struct.mlxsw_sp2_kvdl_part** %7, align 8
  store %struct.mlxsw_sp2_kvdl_part* %79, %struct.mlxsw_sp2_kvdl_part** %3, align 8
  br label %80

80:                                               ; preds = %65, %61, %28
  %81 = load %struct.mlxsw_sp2_kvdl_part*, %struct.mlxsw_sp2_kvdl_part** %3, align 8
  ret %struct.mlxsw_sp2_kvdl_part* %81
}

declare dso_local i32 @mlxsw_core_res_valid(i32, i32) #1

declare dso_local %struct.mlxsw_sp2_kvdl_part* @ERR_PTR(i32) #1

declare dso_local i32 @mlxsw_core_res_get(i32, i32) #1

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local %struct.mlxsw_sp2_kvdl_part* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
