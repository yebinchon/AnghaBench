; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_get_tc_ht.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_get_tc_ht.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rhashtable = type { i32 }
%struct.mlx5e_priv = type { %struct.TYPE_10__, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.rhashtable }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.mlx5_eswitch* }
%struct.mlx5_eswitch = type { i32 }
%struct.mlx5e_rep_priv = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.rhashtable }

@ESW_OFFLOAD = common dso_local global i32 0, align 4
@REP_ETH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rhashtable* (%struct.mlx5e_priv*, i64)* @get_tc_ht to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rhashtable* @get_tc_ht(%struct.mlx5e_priv* %0, i64 %1) #0 {
  %3 = alloca %struct.rhashtable*, align 8
  %4 = alloca %struct.mlx5e_priv*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mlx5_eswitch*, align 8
  %7 = alloca %struct.mlx5e_rep_priv*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %9 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %8, i32 0, i32 1
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %12, align 8
  store %struct.mlx5_eswitch* %13, %struct.mlx5_eswitch** %6, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i32, i32* @ESW_OFFLOAD, align 4
  %16 = call i64 @MLX5_TC_FLAG(i32 %15)
  %17 = and i64 %14, %16
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %6, align 8
  %21 = load i32, i32* @REP_ETH, align 4
  %22 = call %struct.mlx5e_rep_priv* @mlx5_eswitch_get_uplink_priv(%struct.mlx5_eswitch* %20, i32 %21)
  store %struct.mlx5e_rep_priv* %22, %struct.mlx5e_rep_priv** %7, align 8
  %23 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %7, align 8
  %24 = getelementptr inbounds %struct.mlx5e_rep_priv, %struct.mlx5e_rep_priv* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  store %struct.rhashtable* %25, %struct.rhashtable** %3, align 8
  br label %31

26:                                               ; preds = %2
  %27 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %28 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  store %struct.rhashtable* %30, %struct.rhashtable** %3, align 8
  br label %31

31:                                               ; preds = %26, %19
  %32 = load %struct.rhashtable*, %struct.rhashtable** %3, align 8
  ret %struct.rhashtable* %32
}

declare dso_local i64 @MLX5_TC_FLAG(i32) #1

declare dso_local %struct.mlx5e_rep_priv* @mlx5_eswitch_get_uplink_priv(%struct.mlx5_eswitch*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
