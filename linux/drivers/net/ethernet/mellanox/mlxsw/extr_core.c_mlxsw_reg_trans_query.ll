; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_reg_trans_query.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_reg_trans_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_core = type { i32 }
%struct.mlxsw_reg_info = type { i32 }
%struct.list_head = type { i32 }

@MLXSW_CORE_REG_ACCESS_TYPE_QUERY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_reg_trans_query(%struct.mlxsw_core* %0, %struct.mlxsw_reg_info* %1, i8* %2, %struct.list_head* %3, i32* %4, i64 %5) #0 {
  %7 = alloca %struct.mlxsw_core*, align 8
  %8 = alloca %struct.mlxsw_reg_info*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.list_head*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store %struct.mlxsw_core* %0, %struct.mlxsw_core** %7, align 8
  store %struct.mlxsw_reg_info* %1, %struct.mlxsw_reg_info** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.list_head* %3, %struct.list_head** %10, align 8
  store i32* %4, i32** %11, align 8
  store i64 %5, i64* %12, align 8
  %13 = load %struct.mlxsw_core*, %struct.mlxsw_core** %7, align 8
  %14 = load %struct.mlxsw_reg_info*, %struct.mlxsw_reg_info** %8, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = load i32, i32* @MLXSW_CORE_REG_ACCESS_TYPE_QUERY, align 4
  %17 = load %struct.list_head*, %struct.list_head** %10, align 8
  %18 = load i32*, i32** %11, align 8
  %19 = load i64, i64* %12, align 8
  %20 = call i32 @mlxsw_core_reg_access_emad(%struct.mlxsw_core* %13, %struct.mlxsw_reg_info* %14, i8* %15, i32 %16, %struct.list_head* %17, i32* %18, i64 %19)
  ret i32 %20
}

declare dso_local i32 @mlxsw_core_reg_access_emad(%struct.mlxsw_core*, %struct.mlxsw_reg_info*, i8*, i32, %struct.list_head*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
