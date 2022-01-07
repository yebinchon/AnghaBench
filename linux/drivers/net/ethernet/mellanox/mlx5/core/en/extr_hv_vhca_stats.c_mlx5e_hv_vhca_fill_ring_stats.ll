; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_hv_vhca_stats.c_mlx5e_hv_vhca_fill_ring_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_hv_vhca_stats.c_mlx5e_hv_vhca_fill_ring_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32, %struct.mlx5e_channel_stats* }
%struct.mlx5e_channel_stats = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.mlx5e_hv_vhca_per_ring_stats = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_priv*, i32, %struct.mlx5e_hv_vhca_per_ring_stats*)* @mlx5e_hv_vhca_fill_ring_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_hv_vhca_fill_ring_stats(%struct.mlx5e_priv* %0, i32 %1, %struct.mlx5e_hv_vhca_per_ring_stats* %2) #0 {
  %4 = alloca %struct.mlx5e_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5e_hv_vhca_per_ring_stats*, align 8
  %7 = alloca %struct.mlx5e_channel_stats*, align 8
  %8 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.mlx5e_hv_vhca_per_ring_stats* %2, %struct.mlx5e_hv_vhca_per_ring_stats** %6, align 8
  %9 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %10 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %9, i32 0, i32 1
  %11 = load %struct.mlx5e_channel_stats*, %struct.mlx5e_channel_stats** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.mlx5e_channel_stats, %struct.mlx5e_channel_stats* %11, i64 %13
  store %struct.mlx5e_channel_stats* %14, %struct.mlx5e_channel_stats** %7, align 8
  %15 = load %struct.mlx5e_channel_stats*, %struct.mlx5e_channel_stats** %7, align 8
  %16 = getelementptr inbounds %struct.mlx5e_channel_stats, %struct.mlx5e_channel_stats* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.mlx5e_hv_vhca_per_ring_stats*, %struct.mlx5e_hv_vhca_per_ring_stats** %6, align 8
  %20 = getelementptr inbounds %struct.mlx5e_hv_vhca_per_ring_stats, %struct.mlx5e_hv_vhca_per_ring_stats* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load %struct.mlx5e_channel_stats*, %struct.mlx5e_channel_stats** %7, align 8
  %22 = getelementptr inbounds %struct.mlx5e_channel_stats, %struct.mlx5e_channel_stats* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.mlx5e_hv_vhca_per_ring_stats*, %struct.mlx5e_hv_vhca_per_ring_stats** %6, align 8
  %26 = getelementptr inbounds %struct.mlx5e_hv_vhca_per_ring_stats, %struct.mlx5e_hv_vhca_per_ring_stats* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %62, %3
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %30 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %65

33:                                               ; preds = %27
  %34 = load %struct.mlx5e_channel_stats*, %struct.mlx5e_channel_stats** %7, align 8
  %35 = getelementptr inbounds %struct.mlx5e_channel_stats, %struct.mlx5e_channel_stats* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.mlx5e_hv_vhca_per_ring_stats*, %struct.mlx5e_hv_vhca_per_ring_stats** %6, align 8
  %43 = getelementptr inbounds %struct.mlx5e_hv_vhca_per_ring_stats, %struct.mlx5e_hv_vhca_per_ring_stats* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %45, %41
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %43, align 4
  %48 = load %struct.mlx5e_channel_stats*, %struct.mlx5e_channel_stats** %7, align 8
  %49 = getelementptr inbounds %struct.mlx5e_channel_stats, %struct.mlx5e_channel_stats* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.mlx5e_hv_vhca_per_ring_stats*, %struct.mlx5e_hv_vhca_per_ring_stats** %6, align 8
  %57 = getelementptr inbounds %struct.mlx5e_hv_vhca_per_ring_stats, %struct.mlx5e_hv_vhca_per_ring_stats* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %59, %55
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %57, align 4
  br label %62

62:                                               ; preds = %33
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %27

65:                                               ; preds = %27
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
