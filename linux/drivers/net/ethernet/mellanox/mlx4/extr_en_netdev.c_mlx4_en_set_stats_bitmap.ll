; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_netdev.c_mlx4_en_set_stats_bitmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_netdev.c_mlx4_en_set_stats_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_en_stats_bitmap = type { i32, i32 }

@NUM_ALL_STATS = common dso_local global i32 0, align 4
@rx_packets = common dso_local global i32 0, align 4
@tx_packets = common dso_local global i32 0, align 4
@rx_bytes = common dso_local global i32 0, align 4
@tx_bytes = common dso_local global i32 0, align 4
@rx_dropped = common dso_local global i32 0, align 4
@tx_dropped = common dso_local global i32 0, align 4
@NUM_MAIN_STATS = common dso_local global i32 0, align 4
@NUM_PORT_STATS = common dso_local global i32 0, align 4
@NUM_PF_STATS = common dso_local global i32 0, align 4
@NUM_FLOW_STATS = common dso_local global i64 0, align 8
@NUM_PKT_STATS = common dso_local global i32 0, align 4
@NUM_XDP_STATS = common dso_local global i32 0, align 4
@NUM_PHY_STATS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_en_set_stats_bitmap(%struct.mlx4_dev* %0, %struct.mlx4_en_stats_bitmap* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.mlx4_dev*, align 8
  %8 = alloca %struct.mlx4_en_stats_bitmap*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %7, align 8
  store %struct.mlx4_en_stats_bitmap* %1, %struct.mlx4_en_stats_bitmap** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %14 = load %struct.mlx4_en_stats_bitmap*, %struct.mlx4_en_stats_bitmap** %8, align 8
  %15 = getelementptr inbounds %struct.mlx4_en_stats_bitmap, %struct.mlx4_en_stats_bitmap* %14, i32 0, i32 1
  %16 = call i32 @mutex_init(i32* %15)
  %17 = load %struct.mlx4_en_stats_bitmap*, %struct.mlx4_en_stats_bitmap** %8, align 8
  %18 = getelementptr inbounds %struct.mlx4_en_stats_bitmap, %struct.mlx4_en_stats_bitmap* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @NUM_ALL_STATS, align 4
  %21 = call i32 @bitmap_zero(i32 %19, i32 %20)
  %22 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %23 = call i64 @mlx4_is_slave(%struct.mlx4_dev* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %74

25:                                               ; preds = %6
  %26 = load %struct.mlx4_en_stats_bitmap*, %struct.mlx4_en_stats_bitmap** %8, align 8
  %27 = getelementptr inbounds %struct.mlx4_en_stats_bitmap, %struct.mlx4_en_stats_bitmap* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* @rx_packets, align 4
  %31 = call i32 @MLX4_FIND_NETDEV_STAT(i32 %30)
  %32 = add nsw i32 %29, %31
  %33 = call i32 @bitmap_set(i32 %28, i32 %32, i32 1)
  %34 = load %struct.mlx4_en_stats_bitmap*, %struct.mlx4_en_stats_bitmap** %8, align 8
  %35 = getelementptr inbounds %struct.mlx4_en_stats_bitmap, %struct.mlx4_en_stats_bitmap* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* @tx_packets, align 4
  %39 = call i32 @MLX4_FIND_NETDEV_STAT(i32 %38)
  %40 = add nsw i32 %37, %39
  %41 = call i32 @bitmap_set(i32 %36, i32 %40, i32 1)
  %42 = load %struct.mlx4_en_stats_bitmap*, %struct.mlx4_en_stats_bitmap** %8, align 8
  %43 = getelementptr inbounds %struct.mlx4_en_stats_bitmap, %struct.mlx4_en_stats_bitmap* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* @rx_bytes, align 4
  %47 = call i32 @MLX4_FIND_NETDEV_STAT(i32 %46)
  %48 = add nsw i32 %45, %47
  %49 = call i32 @bitmap_set(i32 %44, i32 %48, i32 1)
  %50 = load %struct.mlx4_en_stats_bitmap*, %struct.mlx4_en_stats_bitmap** %8, align 8
  %51 = getelementptr inbounds %struct.mlx4_en_stats_bitmap, %struct.mlx4_en_stats_bitmap* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* @tx_bytes, align 4
  %55 = call i32 @MLX4_FIND_NETDEV_STAT(i32 %54)
  %56 = add nsw i32 %53, %55
  %57 = call i32 @bitmap_set(i32 %52, i32 %56, i32 1)
  %58 = load %struct.mlx4_en_stats_bitmap*, %struct.mlx4_en_stats_bitmap** %8, align 8
  %59 = getelementptr inbounds %struct.mlx4_en_stats_bitmap, %struct.mlx4_en_stats_bitmap* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* @rx_dropped, align 4
  %63 = call i32 @MLX4_FIND_NETDEV_STAT(i32 %62)
  %64 = add nsw i32 %61, %63
  %65 = call i32 @bitmap_set(i32 %60, i32 %64, i32 1)
  %66 = load %struct.mlx4_en_stats_bitmap*, %struct.mlx4_en_stats_bitmap** %8, align 8
  %67 = getelementptr inbounds %struct.mlx4_en_stats_bitmap, %struct.mlx4_en_stats_bitmap* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* @tx_dropped, align 4
  %71 = call i32 @MLX4_FIND_NETDEV_STAT(i32 %70)
  %72 = add nsw i32 %69, %71
  %73 = call i32 @bitmap_set(i32 %68, i32 %72, i32 1)
  br label %81

74:                                               ; preds = %6
  %75 = load %struct.mlx4_en_stats_bitmap*, %struct.mlx4_en_stats_bitmap** %8, align 8
  %76 = getelementptr inbounds %struct.mlx4_en_stats_bitmap, %struct.mlx4_en_stats_bitmap* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* @NUM_MAIN_STATS, align 4
  %80 = call i32 @bitmap_set(i32 %77, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %74, %25
  %82 = load i32, i32* @NUM_MAIN_STATS, align 4
  %83 = load i32, i32* %13, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* %13, align 4
  %85 = load %struct.mlx4_en_stats_bitmap*, %struct.mlx4_en_stats_bitmap** %8, align 8
  %86 = getelementptr inbounds %struct.mlx4_en_stats_bitmap, %struct.mlx4_en_stats_bitmap* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* @NUM_PORT_STATS, align 4
  %90 = call i32 @bitmap_set(i32 %87, i32 %88, i32 %89)
  %91 = load i32, i32* @NUM_PORT_STATS, align 4
  %92 = load i32, i32* %13, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* %13, align 4
  %94 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %95 = call i64 @mlx4_is_master(%struct.mlx4_dev* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %81
  %98 = load %struct.mlx4_en_stats_bitmap*, %struct.mlx4_en_stats_bitmap** %8, align 8
  %99 = getelementptr inbounds %struct.mlx4_en_stats_bitmap, %struct.mlx4_en_stats_bitmap* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* @NUM_PF_STATS, align 4
  %103 = call i32 @bitmap_set(i32 %100, i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %97, %81
  %105 = load i32, i32* @NUM_PF_STATS, align 4
  %106 = load i32, i32* %13, align 4
  %107 = add nsw i32 %106, %105
  store i32 %107, i32* %13, align 4
  %108 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %109 = load %struct.mlx4_en_stats_bitmap*, %struct.mlx4_en_stats_bitmap** %8, align 8
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* %12, align 4
  %114 = call i32 @mlx4_en_update_pfc_stats_bitmap(%struct.mlx4_dev* %108, %struct.mlx4_en_stats_bitmap* %109, i32 %110, i32 %111, i32 %112, i32 %113)
  %115 = load i64, i64* @NUM_FLOW_STATS, align 8
  %116 = load i32, i32* %13, align 4
  %117 = sext i32 %116 to i64
  %118 = add nsw i64 %117, %115
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %13, align 4
  %120 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %121 = call i64 @mlx4_is_slave(%struct.mlx4_dev* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %130, label %123

123:                                              ; preds = %104
  %124 = load %struct.mlx4_en_stats_bitmap*, %struct.mlx4_en_stats_bitmap** %8, align 8
  %125 = getelementptr inbounds %struct.mlx4_en_stats_bitmap, %struct.mlx4_en_stats_bitmap* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %13, align 4
  %128 = load i32, i32* @NUM_PKT_STATS, align 4
  %129 = call i32 @bitmap_set(i32 %126, i32 %127, i32 %128)
  br label %130

130:                                              ; preds = %123, %104
  %131 = load i32, i32* @NUM_PKT_STATS, align 4
  %132 = load i32, i32* %13, align 4
  %133 = add nsw i32 %132, %131
  store i32 %133, i32* %13, align 4
  %134 = load %struct.mlx4_en_stats_bitmap*, %struct.mlx4_en_stats_bitmap** %8, align 8
  %135 = getelementptr inbounds %struct.mlx4_en_stats_bitmap, %struct.mlx4_en_stats_bitmap* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %13, align 4
  %138 = load i32, i32* @NUM_XDP_STATS, align 4
  %139 = call i32 @bitmap_set(i32 %136, i32 %137, i32 %138)
  %140 = load i32, i32* @NUM_XDP_STATS, align 4
  %141 = load i32, i32* %13, align 4
  %142 = add nsw i32 %141, %140
  store i32 %142, i32* %13, align 4
  %143 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %144 = call i64 @mlx4_is_slave(%struct.mlx4_dev* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %153, label %146

146:                                              ; preds = %130
  %147 = load %struct.mlx4_en_stats_bitmap*, %struct.mlx4_en_stats_bitmap** %8, align 8
  %148 = getelementptr inbounds %struct.mlx4_en_stats_bitmap, %struct.mlx4_en_stats_bitmap* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %13, align 4
  %151 = load i32, i32* @NUM_PHY_STATS, align 4
  %152 = call i32 @bitmap_set(i32 %149, i32 %150, i32 %151)
  br label %153

153:                                              ; preds = %146, %130
  %154 = load i32, i32* @NUM_PHY_STATS, align 4
  %155 = load i32, i32* %13, align 4
  %156 = add nsw i32 %155, %154
  store i32 %156, i32* %13, align 4
  ret void
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @bitmap_zero(i32, i32) #1

declare dso_local i64 @mlx4_is_slave(%struct.mlx4_dev*) #1

declare dso_local i32 @bitmap_set(i32, i32, i32) #1

declare dso_local i32 @MLX4_FIND_NETDEV_STAT(i32) #1

declare dso_local i64 @mlx4_is_master(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_en_update_pfc_stats_bitmap(%struct.mlx4_dev*, %struct.mlx4_en_stats_bitmap*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
