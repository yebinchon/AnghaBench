; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_core_resources_query.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_core_resources_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_core = type { i32 }
%struct.mlxsw_res = type { i32 }

@MLXSW_CMD_QUERY_RESOURCES_MAX_QUERIES = common dso_local global i32 0, align 4
@MLXSW_CMD_QUERY_RESOURCES_PER_QUERY = common dso_local global i32 0, align 4
@MLXSW_CMD_QUERY_RESOURCES_TABLE_END_ID = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_core_resources_query(%struct.mlxsw_core* %0, i8* %1, %struct.mlxsw_res* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_core*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mlxsw_res*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.mlxsw_core* %0, %struct.mlxsw_core** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.mlxsw_res* %2, %struct.mlxsw_res** %7, align 8
  %13 = load %struct.mlxsw_res*, %struct.mlxsw_res** %7, align 8
  %14 = icmp ne %struct.mlxsw_res* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %63

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @mlxsw_cmd_mbox_zero(i8* %17)
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %57, %16
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @MLXSW_CMD_QUERY_RESOURCES_MAX_QUERIES, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %60

23:                                               ; preds = %19
  %24 = load %struct.mlxsw_core*, %struct.mlxsw_core** %5, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @mlxsw_cmd_query_resources(%struct.mlxsw_core* %24, i8* %25, i32 %26)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* %12, align 4
  store i32 %31, i32* %4, align 4
  br label %63

32:                                               ; preds = %23
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %53, %32
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @MLXSW_CMD_QUERY_RESOURCES_PER_QUERY, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %56

37:                                               ; preds = %33
  %38 = load i8*, i8** %6, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i64 @mlxsw_cmd_mbox_query_resource_id_get(i8* %38, i32 %39)
  store i64 %40, i64* %11, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @mlxsw_cmd_mbox_query_resource_data_get(i8* %41, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i64, i64* %11, align 8
  %45 = load i64, i64* @MLXSW_CMD_QUERY_RESOURCES_TABLE_END_ID, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %63

48:                                               ; preds = %37
  %49 = load %struct.mlxsw_res*, %struct.mlxsw_res** %7, align 8
  %50 = load i64, i64* %11, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @mlxsw_res_parse(%struct.mlxsw_res* %49, i64 %50, i32 %51)
  br label %53

53:                                               ; preds = %48
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %33

56:                                               ; preds = %33
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %19

60:                                               ; preds = %19
  %61 = load i32, i32* @EIO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %60, %47, %30, %15
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @mlxsw_cmd_mbox_zero(i8*) #1

declare dso_local i32 @mlxsw_cmd_query_resources(%struct.mlxsw_core*, i8*, i32) #1

declare dso_local i64 @mlxsw_cmd_mbox_query_resource_id_get(i8*, i32) #1

declare dso_local i32 @mlxsw_cmd_mbox_query_resource_data_get(i8*, i32) #1

declare dso_local i32 @mlxsw_res_parse(%struct.mlxsw_res*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
