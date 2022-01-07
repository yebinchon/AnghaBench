; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum1_kvdl.c_mlxsw_sp1_kvdl_parts_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum1_kvdl.c_mlxsw_sp1_kvdl_parts_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp1_kvdl_part_info = type { i32 }
%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp1_kvdl = type { %struct.mlxsw_sp1_kvdl_part** }
%struct.mlxsw_sp1_kvdl_part = type { i32 }

@MLXSW_SP1_KVDL_PARTS_INFO_LEN = common dso_local global i32 0, align 4
@mlxsw_sp1_kvdl_parts_info = common dso_local global %struct.mlxsw_sp1_kvdl_part_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.mlxsw_sp1_kvdl*)* @mlxsw_sp1_kvdl_parts_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp1_kvdl_parts_init(%struct.mlxsw_sp* %0, %struct.mlxsw_sp1_kvdl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca %struct.mlxsw_sp1_kvdl*, align 8
  %6 = alloca %struct.mlxsw_sp1_kvdl_part_info*, align 8
  %7 = alloca %struct.mlxsw_sp1_kvdl_part*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store %struct.mlxsw_sp1_kvdl* %1, %struct.mlxsw_sp1_kvdl** %5, align 8
  store %struct.mlxsw_sp1_kvdl_part* null, %struct.mlxsw_sp1_kvdl_part** %7, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %55, %2
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* @MLXSW_SP1_KVDL_PARTS_INFO_LEN, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %58

14:                                               ; preds = %10
  %15 = load %struct.mlxsw_sp1_kvdl_part_info*, %struct.mlxsw_sp1_kvdl_part_info** @mlxsw_sp1_kvdl_parts_info, align 8
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part_info, %struct.mlxsw_sp1_kvdl_part_info* %15, i64 %17
  store %struct.mlxsw_sp1_kvdl_part_info* %18, %struct.mlxsw_sp1_kvdl_part_info** %6, align 8
  %19 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %20 = load %struct.mlxsw_sp1_kvdl_part_info*, %struct.mlxsw_sp1_kvdl_part_info** %6, align 8
  %21 = load %struct.mlxsw_sp1_kvdl_part*, %struct.mlxsw_sp1_kvdl_part** %7, align 8
  %22 = call %struct.mlxsw_sp1_kvdl_part* @mlxsw_sp1_kvdl_part_init(%struct.mlxsw_sp* %19, %struct.mlxsw_sp1_kvdl_part_info* %20, %struct.mlxsw_sp1_kvdl_part* %21)
  %23 = load %struct.mlxsw_sp1_kvdl*, %struct.mlxsw_sp1_kvdl** %5, align 8
  %24 = getelementptr inbounds %struct.mlxsw_sp1_kvdl, %struct.mlxsw_sp1_kvdl* %23, i32 0, i32 0
  %25 = load %struct.mlxsw_sp1_kvdl_part**, %struct.mlxsw_sp1_kvdl_part*** %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part*, %struct.mlxsw_sp1_kvdl_part** %25, i64 %27
  store %struct.mlxsw_sp1_kvdl_part* %22, %struct.mlxsw_sp1_kvdl_part** %28, align 8
  %29 = load %struct.mlxsw_sp1_kvdl*, %struct.mlxsw_sp1_kvdl** %5, align 8
  %30 = getelementptr inbounds %struct.mlxsw_sp1_kvdl, %struct.mlxsw_sp1_kvdl* %29, i32 0, i32 0
  %31 = load %struct.mlxsw_sp1_kvdl_part**, %struct.mlxsw_sp1_kvdl_part*** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part*, %struct.mlxsw_sp1_kvdl_part** %31, i64 %33
  %35 = load %struct.mlxsw_sp1_kvdl_part*, %struct.mlxsw_sp1_kvdl_part** %34, align 8
  %36 = call i64 @IS_ERR(%struct.mlxsw_sp1_kvdl_part* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %14
  %39 = load %struct.mlxsw_sp1_kvdl*, %struct.mlxsw_sp1_kvdl** %5, align 8
  %40 = getelementptr inbounds %struct.mlxsw_sp1_kvdl, %struct.mlxsw_sp1_kvdl* %39, i32 0, i32 0
  %41 = load %struct.mlxsw_sp1_kvdl_part**, %struct.mlxsw_sp1_kvdl_part*** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part*, %struct.mlxsw_sp1_kvdl_part** %41, i64 %43
  %45 = load %struct.mlxsw_sp1_kvdl_part*, %struct.mlxsw_sp1_kvdl_part** %44, align 8
  %46 = call i32 @PTR_ERR(%struct.mlxsw_sp1_kvdl_part* %45)
  store i32 %46, i32* %8, align 4
  br label %59

47:                                               ; preds = %14
  %48 = load %struct.mlxsw_sp1_kvdl*, %struct.mlxsw_sp1_kvdl** %5, align 8
  %49 = getelementptr inbounds %struct.mlxsw_sp1_kvdl, %struct.mlxsw_sp1_kvdl* %48, i32 0, i32 0
  %50 = load %struct.mlxsw_sp1_kvdl_part**, %struct.mlxsw_sp1_kvdl_part*** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part*, %struct.mlxsw_sp1_kvdl_part** %50, i64 %52
  %54 = load %struct.mlxsw_sp1_kvdl_part*, %struct.mlxsw_sp1_kvdl_part** %53, align 8
  store %struct.mlxsw_sp1_kvdl_part* %54, %struct.mlxsw_sp1_kvdl_part** %7, align 8
  br label %55

55:                                               ; preds = %47
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %10

58:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %79

59:                                               ; preds = %38
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %74, %59
  %63 = load i32, i32* %9, align 4
  %64 = icmp sge i32 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %62
  %66 = load %struct.mlxsw_sp1_kvdl*, %struct.mlxsw_sp1_kvdl** %5, align 8
  %67 = getelementptr inbounds %struct.mlxsw_sp1_kvdl, %struct.mlxsw_sp1_kvdl* %66, i32 0, i32 0
  %68 = load %struct.mlxsw_sp1_kvdl_part**, %struct.mlxsw_sp1_kvdl_part*** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part*, %struct.mlxsw_sp1_kvdl_part** %68, i64 %70
  %72 = load %struct.mlxsw_sp1_kvdl_part*, %struct.mlxsw_sp1_kvdl_part** %71, align 8
  %73 = call i32 @mlxsw_sp1_kvdl_part_fini(%struct.mlxsw_sp1_kvdl_part* %72)
  br label %74

74:                                               ; preds = %65
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %9, align 4
  br label %62

77:                                               ; preds = %62
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %77, %58
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.mlxsw_sp1_kvdl_part* @mlxsw_sp1_kvdl_part_init(%struct.mlxsw_sp*, %struct.mlxsw_sp1_kvdl_part_info*, %struct.mlxsw_sp1_kvdl_part*) #1

declare dso_local i64 @IS_ERR(%struct.mlxsw_sp1_kvdl_part*) #1

declare dso_local i32 @PTR_ERR(%struct.mlxsw_sp1_kvdl_part*) #1

declare dso_local i32 @mlxsw_sp1_kvdl_part_fini(%struct.mlxsw_sp1_kvdl_part*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
