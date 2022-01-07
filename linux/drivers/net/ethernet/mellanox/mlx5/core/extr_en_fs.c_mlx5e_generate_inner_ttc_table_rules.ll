; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_fs.c_mlx5e_generate_inner_ttc_table_rules.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_fs.c_mlx5e_generate_inner_ttc_table_rules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.mlx5e_priv = type { i32 }
%struct.ttc_params = type { i32*, i32 }
%struct.mlx5e_ttc_table = type { %struct.mlx5_flow_handle**, %struct.TYPE_3__ }
%struct.mlx5_flow_handle = type { i32 }
%struct.TYPE_3__ = type { %struct.mlx5_flow_table* }
%struct.mlx5_flow_table = type { i32 }
%struct.mlx5_flow_destination = type { i32, i32 }

@MLX5_FLOW_DESTINATION_TYPE_TIR = common dso_local global i32 0, align 4
@MLX5E_NUM_TT = common dso_local global i32 0, align 4
@MLX5E_TT_ANY = common dso_local global i32 0, align 4
@ttc_rules = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, %struct.ttc_params*, %struct.mlx5e_ttc_table*)* @mlx5e_generate_inner_ttc_table_rules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_generate_inner_ttc_table_rules(%struct.mlx5e_priv* %0, %struct.ttc_params* %1, %struct.mlx5e_ttc_table* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5e_priv*, align 8
  %6 = alloca %struct.ttc_params*, align 8
  %7 = alloca %struct.mlx5e_ttc_table*, align 8
  %8 = alloca %struct.mlx5_flow_destination, align 4
  %9 = alloca %struct.mlx5_flow_handle**, align 8
  %10 = alloca %struct.mlx5_flow_table*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %5, align 8
  store %struct.ttc_params* %1, %struct.ttc_params** %6, align 8
  store %struct.mlx5e_ttc_table* %2, %struct.mlx5e_ttc_table** %7, align 8
  %13 = bitcast %struct.mlx5_flow_destination* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 8, i1 false)
  %14 = load %struct.mlx5e_ttc_table*, %struct.mlx5e_ttc_table** %7, align 8
  %15 = getelementptr inbounds %struct.mlx5e_ttc_table, %struct.mlx5e_ttc_table* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %16, align 8
  store %struct.mlx5_flow_table* %17, %struct.mlx5_flow_table** %10, align 8
  %18 = load %struct.mlx5e_ttc_table*, %struct.mlx5e_ttc_table** %7, align 8
  %19 = getelementptr inbounds %struct.mlx5e_ttc_table, %struct.mlx5e_ttc_table* %18, i32 0, i32 0
  %20 = load %struct.mlx5_flow_handle**, %struct.mlx5_flow_handle*** %19, align 8
  store %struct.mlx5_flow_handle** %20, %struct.mlx5_flow_handle*** %9, align 8
  %21 = load i32, i32* @MLX5_FLOW_DESTINATION_TYPE_TIR, align 4
  %22 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %8, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  store i32 0, i32* %12, align 4
  br label %23

23:                                               ; preds = %74, %3
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* @MLX5E_NUM_TT, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %77

27:                                               ; preds = %23
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* @MLX5E_TT_ANY, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load %struct.ttc_params*, %struct.ttc_params** %6, align 8
  %33 = getelementptr inbounds %struct.ttc_params, %struct.ttc_params* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %8, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  br label %45

36:                                               ; preds = %27
  %37 = load %struct.ttc_params*, %struct.ttc_params** %6, align 8
  %38 = getelementptr inbounds %struct.ttc_params, %struct.ttc_params* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %12, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %8, i32 0, i32 0
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %36, %31
  %46 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %47 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %10, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ttc_rules, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ttc_rules, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call %struct.mlx5_flow_handle* @mlx5e_generate_inner_ttc_rule(%struct.mlx5e_priv* %46, %struct.mlx5_flow_table* %47, %struct.mlx5_flow_destination* %8, i32 %53, i32 %59)
  %61 = load %struct.mlx5_flow_handle**, %struct.mlx5_flow_handle*** %9, align 8
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %61, i64 %63
  store %struct.mlx5_flow_handle* %60, %struct.mlx5_flow_handle** %64, align 8
  %65 = load %struct.mlx5_flow_handle**, %struct.mlx5_flow_handle*** %9, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %65, i64 %67
  %69 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %68, align 8
  %70 = call i64 @IS_ERR(%struct.mlx5_flow_handle* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %45
  br label %78

73:                                               ; preds = %45
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %12, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %12, align 4
  br label %23

77:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %92

78:                                               ; preds = %72
  %79 = load %struct.mlx5_flow_handle**, %struct.mlx5_flow_handle*** %9, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %79, i64 %81
  %83 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %82, align 8
  %84 = call i32 @PTR_ERR(%struct.mlx5_flow_handle* %83)
  store i32 %84, i32* %11, align 4
  %85 = load %struct.mlx5_flow_handle**, %struct.mlx5_flow_handle*** %9, align 8
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %85, i64 %87
  store %struct.mlx5_flow_handle* null, %struct.mlx5_flow_handle** %88, align 8
  %89 = load %struct.mlx5e_ttc_table*, %struct.mlx5e_ttc_table** %7, align 8
  %90 = call i32 @mlx5e_cleanup_ttc_rules(%struct.mlx5e_ttc_table* %89)
  %91 = load i32, i32* %11, align 4
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %78, %77
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.mlx5_flow_handle* @mlx5e_generate_inner_ttc_rule(%struct.mlx5e_priv*, %struct.mlx5_flow_table*, %struct.mlx5_flow_destination*, i32, i32) #2

declare dso_local i64 @IS_ERR(%struct.mlx5_flow_handle*) #2

declare dso_local i32 @PTR_ERR(%struct.mlx5_flow_handle*) #2

declare dso_local i32 @mlx5e_cleanup_ttc_rules(%struct.mlx5e_ttc_table*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
