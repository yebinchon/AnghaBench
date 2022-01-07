; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_get_mod_hdr_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_get_mod_hdr_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mod_hdr_tbl = type { i32 }
%struct.mlx5e_priv = type { %struct.TYPE_10__, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.mod_hdr_tbl }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.mlx5_eswitch* }
%struct.mlx5_eswitch = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.mod_hdr_tbl }

@MLX5_FLOW_NAMESPACE_FDB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mod_hdr_tbl* (%struct.mlx5e_priv*, i32)* @get_mod_hdr_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mod_hdr_tbl* @get_mod_hdr_table(%struct.mlx5e_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx5e_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_eswitch*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %7 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %6, i32 0, i32 1
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %10, align 8
  store %struct.mlx5_eswitch* %11, %struct.mlx5_eswitch** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @MLX5_FLOW_NAMESPACE_FDB, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %5, align 8
  %17 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  br label %24

19:                                               ; preds = %2
  %20 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %21 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  br label %24

24:                                               ; preds = %19, %15
  %25 = phi %struct.mod_hdr_tbl* [ %18, %15 ], [ %23, %19 ]
  ret %struct.mod_hdr_tbl* %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
