; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_rx.c_mlx4_en_prepare_rx_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_rx.c_mlx4_en_prepare_rx_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { i32 }
%struct.mlx4_en_rx_ring = type { i32, %struct.TYPE_5__, %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_desc* }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.mlx4_en_rx_alloc = type { i64, i64, i64 }
%struct.mlx4_en_rx_desc = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@XDP_PACKET_HEADROOM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_en_priv*, %struct.mlx4_en_rx_ring*, i32, i32)* @mlx4_en_prepare_rx_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_prepare_rx_desc(%struct.mlx4_en_priv* %0, %struct.mlx4_en_rx_ring* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_en_priv*, align 8
  %7 = alloca %struct.mlx4_en_rx_ring*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_en_rx_desc*, align 8
  %11 = alloca %struct.mlx4_en_rx_alloc*, align 8
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %6, align 8
  store %struct.mlx4_en_rx_ring* %1, %struct.mlx4_en_rx_ring** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %7, align 8
  %13 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %12, i32 0, i32 3
  %14 = load %struct.mlx4_en_rx_desc*, %struct.mlx4_en_rx_desc** %13, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %7, align 8
  %17 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = shl i32 %15, %18
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.mlx4_en_rx_desc, %struct.mlx4_en_rx_desc* %14, i64 %20
  store %struct.mlx4_en_rx_desc* %21, %struct.mlx4_en_rx_desc** %10, align 8
  %22 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %7, align 8
  %23 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %22, i32 0, i32 2
  %24 = load %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_alloc** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %27 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %25, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %24, i64 %30
  store %struct.mlx4_en_rx_alloc* %31, %struct.mlx4_en_rx_alloc** %11, align 8
  %32 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %7, align 8
  %33 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ugt i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i64 @likely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %92

40:                                               ; preds = %4
  %41 = load %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_alloc** %11, align 8
  %42 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %77, label %45

45:                                               ; preds = %40
  %46 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %7, align 8
  %47 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add i64 %49, -1
  store i64 %50, i64* %48, align 8
  %51 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %7, align 8
  %52 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %7, align 8
  %56 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_alloc** %11, align 8
  %63 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %62, i32 0, i32 2
  store i64 %61, i64* %63, align 8
  %64 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %7, align 8
  %65 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %7, align 8
  %69 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_alloc** %11, align 8
  %76 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  br label %77

77:                                               ; preds = %45, %40
  %78 = load i64, i64* @XDP_PACKET_HEADROOM, align 8
  %79 = load %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_alloc** %11, align 8
  %80 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  %81 = load %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_alloc** %11, align 8
  %82 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @XDP_PACKET_HEADROOM, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @cpu_to_be64(i64 %85)
  %87 = load %struct.mlx4_en_rx_desc*, %struct.mlx4_en_rx_desc** %10, align 8
  %88 = getelementptr inbounds %struct.mlx4_en_rx_desc, %struct.mlx4_en_rx_desc* %87, i32 0, i32 0
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i64 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  store i32 %86, i32* %91, align 4
  store i32 0, i32* %5, align 4
  br label %99

92:                                               ; preds = %4
  %93 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %94 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %7, align 8
  %95 = load %struct.mlx4_en_rx_desc*, %struct.mlx4_en_rx_desc** %10, align 8
  %96 = load %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_alloc** %11, align 8
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @mlx4_en_alloc_frags(%struct.mlx4_en_priv* %93, %struct.mlx4_en_rx_ring* %94, %struct.mlx4_en_rx_desc* %95, %struct.mlx4_en_rx_alloc* %96, i32 %97)
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %92, %77
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @cpu_to_be64(i64) #1

declare dso_local i32 @mlx4_en_alloc_frags(%struct.mlx4_en_priv*, %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_desc*, %struct.mlx4_en_rx_alloc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
