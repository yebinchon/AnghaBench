; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_netdev.c_mlx4_en_update_pfc_stats_bitmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_netdev.c_mlx4_en_update_pfc_stats_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mlx4_en_stats_bitmap = type { i32, i32 }

@NUM_MAIN_STATS = common dso_local global i32 0, align 4
@NUM_PORT_STATS = common dso_local global i32 0, align 4
@NUM_PF_STATS = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_FLOWSTATS_EN = common dso_local global i32 0, align 4
@NUM_FLOW_STATS = common dso_local global i32 0, align 4
@NUM_FLOW_PRIORITY_STATS_RX = common dso_local global i64 0, align 8
@NUM_FLOW_STATS_RX = common dso_local global i64 0, align 8
@NUM_FLOW_PRIORITY_STATS_TX = common dso_local global i64 0, align 8
@NUM_FLOW_STATS_TX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_en_update_pfc_stats_bitmap(%struct.mlx4_dev* %0, %struct.mlx4_en_stats_bitmap* %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.mlx4_dev*, align 8
  %8 = alloca %struct.mlx4_en_stats_bitmap*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %7, align 8
  store %struct.mlx4_en_stats_bitmap* %1, %struct.mlx4_en_stats_bitmap** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %14 = load i32, i32* @NUM_MAIN_STATS, align 4
  %15 = load i32, i32* @NUM_PORT_STATS, align 4
  %16 = add nsw i32 %14, %15
  %17 = load i32, i32* @NUM_PF_STATS, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %13, align 4
  %19 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %20 = call i32 @mlx4_is_slave(%struct.mlx4_dev* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %109, label %22

22:                                               ; preds = %6
  %23 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %24 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @MLX4_DEV_CAP_FLAG2_FLOWSTATS_EN, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %109

30:                                               ; preds = %22
  %31 = load %struct.mlx4_en_stats_bitmap*, %struct.mlx4_en_stats_bitmap** %8, align 8
  %32 = getelementptr inbounds %struct.mlx4_en_stats_bitmap, %struct.mlx4_en_stats_bitmap* %31, i32 0, i32 0
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.mlx4_en_stats_bitmap*, %struct.mlx4_en_stats_bitmap** %8, align 8
  %35 = getelementptr inbounds %struct.mlx4_en_stats_bitmap, %struct.mlx4_en_stats_bitmap* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* @NUM_FLOW_STATS, align 4
  %39 = call i32 @bitmap_clear(i32 %36, i32 %37, i32 %38)
  %40 = load i64, i64* %9, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %30
  %43 = load %struct.mlx4_en_stats_bitmap*, %struct.mlx4_en_stats_bitmap** %8, align 8
  %44 = getelementptr inbounds %struct.mlx4_en_stats_bitmap, %struct.mlx4_en_stats_bitmap* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %13, align 4
  %47 = load i64, i64* @NUM_FLOW_PRIORITY_STATS_RX, align 8
  %48 = call i32 @bitmap_set(i32 %45, i32 %46, i64 %47)
  br label %49

49:                                               ; preds = %42, %30
  %50 = load i64, i64* @NUM_FLOW_PRIORITY_STATS_RX, align 8
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %13, align 4
  %55 = load i64, i64* %10, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %49
  %58 = load i64, i64* %9, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %57
  %61 = load %struct.mlx4_en_stats_bitmap*, %struct.mlx4_en_stats_bitmap** %8, align 8
  %62 = getelementptr inbounds %struct.mlx4_en_stats_bitmap, %struct.mlx4_en_stats_bitmap* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %13, align 4
  %65 = load i64, i64* @NUM_FLOW_STATS_RX, align 8
  %66 = call i32 @bitmap_set(i32 %63, i32 %64, i64 %65)
  br label %67

67:                                               ; preds = %60, %57, %49
  %68 = load i64, i64* @NUM_FLOW_STATS_RX, align 8
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %13, align 4
  %73 = load i64, i64* %11, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %67
  %76 = load %struct.mlx4_en_stats_bitmap*, %struct.mlx4_en_stats_bitmap** %8, align 8
  %77 = getelementptr inbounds %struct.mlx4_en_stats_bitmap, %struct.mlx4_en_stats_bitmap* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %13, align 4
  %80 = load i64, i64* @NUM_FLOW_PRIORITY_STATS_TX, align 8
  %81 = call i32 @bitmap_set(i32 %78, i32 %79, i64 %80)
  br label %82

82:                                               ; preds = %75, %67
  %83 = load i64, i64* @NUM_FLOW_PRIORITY_STATS_TX, align 8
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %85, %83
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %13, align 4
  %88 = load i64, i64* %12, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %82
  %91 = load i64, i64* %11, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %100, label %93

93:                                               ; preds = %90
  %94 = load %struct.mlx4_en_stats_bitmap*, %struct.mlx4_en_stats_bitmap** %8, align 8
  %95 = getelementptr inbounds %struct.mlx4_en_stats_bitmap, %struct.mlx4_en_stats_bitmap* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %13, align 4
  %98 = load i64, i64* @NUM_FLOW_STATS_TX, align 8
  %99 = call i32 @bitmap_set(i32 %96, i32 %97, i64 %98)
  br label %100

100:                                              ; preds = %93, %90, %82
  %101 = load i64, i64* @NUM_FLOW_STATS_TX, align 8
  %102 = load i32, i32* %13, align 4
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %103, %101
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %13, align 4
  %106 = load %struct.mlx4_en_stats_bitmap*, %struct.mlx4_en_stats_bitmap** %8, align 8
  %107 = getelementptr inbounds %struct.mlx4_en_stats_bitmap, %struct.mlx4_en_stats_bitmap* %106, i32 0, i32 0
  %108 = call i32 @mutex_unlock(i32* %107)
  br label %109

109:                                              ; preds = %100, %22, %6
  ret void
}

declare dso_local i32 @mlx4_is_slave(%struct.mlx4_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @bitmap_clear(i32, i32, i32) #1

declare dso_local i32 @bitmap_set(i32, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
