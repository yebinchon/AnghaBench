; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_arfs.c_mlx5e_arfs_destroy_tables.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_arfs.c_mlx5e_arfs_destroy_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@NETIF_F_NTUPLE = common dso_local global i32 0, align 4
@ARFS_NUM_TYPES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5e_arfs_destroy_tables(%struct.mlx5e_priv* %0) #0 {
  %2 = alloca %struct.mlx5e_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %2, align 8
  %4 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %5 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %4, i32 0, i32 1
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @NETIF_F_NTUPLE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %54

13:                                               ; preds = %1
  %14 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %15 = call i32 @arfs_del_rules(%struct.mlx5e_priv* %14)
  %16 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %17 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @destroy_workqueue(i32 %20)
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %51, %13
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @ARFS_NUM_TYPES, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %54

26:                                               ; preds = %22
  %27 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %28 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @IS_ERR_OR_NULL(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %26
  %41 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %42 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i64 %47
  %49 = call i32 @arfs_destroy_table(%struct.TYPE_10__* %48)
  br label %50

50:                                               ; preds = %40, %26
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %22

54:                                               ; preds = %12, %22
  ret void
}

declare dso_local i32 @arfs_del_rules(%struct.mlx5e_priv*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @arfs_destroy_table(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
