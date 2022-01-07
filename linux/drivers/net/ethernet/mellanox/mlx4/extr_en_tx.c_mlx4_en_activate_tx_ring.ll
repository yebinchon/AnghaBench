; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_tx.c_mlx4_en_activate_tx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_tx.c_mlx4_en_activate_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { i32, %struct.mlx4_en_dev* }
%struct.mlx4_en_dev = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.mlx4_en_tx_ring = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, i64, i32, i32, i8*, i8*, i32, i32, i32, i64 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@mlx4_en_free_tx_desc = common dso_local global i32 0, align 4
@MLX4_QP_STATE_RST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_en_activate_tx_ring(%struct.mlx4_en_priv* %0, %struct.mlx4_en_tx_ring* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mlx4_en_priv*, align 8
  %6 = alloca %struct.mlx4_en_tx_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx4_en_dev*, align 8
  %10 = alloca i32, align 4
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %5, align 8
  store %struct.mlx4_en_tx_ring* %1, %struct.mlx4_en_tx_ring** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %12 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %11, i32 0, i32 1
  %13 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %12, align 8
  store %struct.mlx4_en_dev* %13, %struct.mlx4_en_dev** %9, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %16 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %18 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %17, i32 0, i32 20
  store i64 0, i64* %18, align 8
  %19 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %20 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %19, i32 0, i32 1
  store i32 -1, i32* %20, align 4
  %21 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %22 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %21, i32 0, i32 2
  store i32 1, i32* %22, align 8
  %23 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %24 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %23, i32 0, i32 19
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %27 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 %29, 4
  %31 = trunc i64 %30 to i32
  %32 = call i32 @memset(i32 %25, i32 0, i32 %31)
  %33 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %34 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %33, i32 0, i32 18
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %37 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @memset(i32 %35, i32 0, i32 %38)
  %40 = load i32, i32* @mlx4_en_free_tx_desc, align 4
  %41 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %42 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %41, i32 0, i32 17
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @MLX4_QP_STATE_RST, align 4
  %44 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %45 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %44, i32 0, i32 7
  store i32 %43, i32* %45, align 4
  %46 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %47 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %46, i32 0, i32 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = shl i32 %49, 8
  %51 = call i8* @cpu_to_be32(i32 %50)
  %52 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %53 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %52, i32 0, i32 16
  store i8* %51, i8** %53, align 8
  %54 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %9, align 8
  %55 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @cpu_to_be32(i32 %57)
  %59 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %60 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %59, i32 0, i32 15
  store i8* %58, i8** %60, align 8
  %61 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %62 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %63 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %66 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %65, i32 0, i32 14
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %69 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %68, i32 0, i32 13
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %72 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %76 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %75, i32 0, i32 9
  %77 = call i32 @mlx4_en_fill_qp_context(%struct.mlx4_en_priv* %61, i32 %64, i32 %67, i32 1, i32 0, i32 %70, i32 %73, i32 %74, %struct.TYPE_12__* %76)
  %78 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %79 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %78, i32 0, i32 12
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %97

82:                                               ; preds = %4
  %83 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %9, align 8
  %84 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %87 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %86, i32 0, i32 11
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @mlx4_to_hw_uar_index(i32 %85, i32 %91)
  %93 = call i8* @cpu_to_be32(i32 %92)
  %94 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %95 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %94, i32 0, i32 9
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  store i8* %93, i8** %96, align 8
  br label %97

97:                                               ; preds = %82, %4
  %98 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %9, align 8
  %99 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %102 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %101, i32 0, i32 10
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %105 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %104, i32 0, i32 9
  %106 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %107 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %106, i32 0, i32 8
  %108 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %109 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %108, i32 0, i32 7
  %110 = call i32 @mlx4_qp_to_ready(i32 %100, i32* %103, %struct.TYPE_12__* %105, %struct.TYPE_13__* %107, i32* %109)
  store i32 %110, i32* %10, align 4
  %111 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %112 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %111, i32 0, i32 6
  %113 = call i32 @cpumask_empty(i32* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %125, label %115

115:                                              ; preds = %97
  %116 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %117 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %120 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %119, i32 0, i32 6
  %121 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %122 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @netif_set_xps_queue(i32 %118, i32* %120, i32 %123)
  br label %125

125:                                              ; preds = %115, %97
  %126 = load i32, i32* %10, align 4
  ret i32 %126
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @mlx4_en_fill_qp_context(%struct.mlx4_en_priv*, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @mlx4_to_hw_uar_index(i32, i32) #1

declare dso_local i32 @mlx4_qp_to_ready(i32, i32*, %struct.TYPE_12__*, %struct.TYPE_13__*, i32*) #1

declare dso_local i32 @cpumask_empty(i32*) #1

declare dso_local i32 @netif_set_xps_queue(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
