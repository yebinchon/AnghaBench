; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_arfs.c_arfs_modify_rule_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_arfs.c_arfs_modify_rule_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mlx5_flow_handle = type { i32 }
%struct.mlx5_flow_destination = type { i32, i32 }

@MLX5_FLOW_DESTINATION_TYPE_TIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Failed to modify aRFS rule destination to rq=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_priv*, %struct.mlx5_flow_handle*, i64)* @arfs_modify_rule_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arfs_modify_rule_rq(%struct.mlx5e_priv* %0, %struct.mlx5_flow_handle* %1, i64 %2) #0 {
  %4 = alloca %struct.mlx5e_priv*, align 8
  %5 = alloca %struct.mlx5_flow_handle*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mlx5_flow_destination, align 4
  %8 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %4, align 8
  store %struct.mlx5_flow_handle* %1, %struct.mlx5_flow_handle** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = bitcast %struct.mlx5_flow_destination* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 8, i1 false)
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* @MLX5_FLOW_DESTINATION_TYPE_TIR, align 4
  %11 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %7, i32 0, i32 1
  store i32 %10, i32* %11, align 4
  %12 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %13 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i64, i64* %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %7, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %5, align 8
  %21 = call i32 @mlx5_modify_rule_destination(%struct.mlx5_flow_handle* %20, %struct.mlx5_flow_destination* %7, i32* null)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %3
  %25 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %26 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @netdev_warn(i32 %27, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %28)
  br label %30

30:                                               ; preds = %24, %3
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mlx5_modify_rule_destination(%struct.mlx5_flow_handle*, %struct.mlx5_flow_destination*, i32*) #2

declare dso_local i32 @netdev_warn(i32, i8*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
