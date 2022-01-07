; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_rx.c_mlx4_en_deactivate_rx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_rx.c_mlx4_en_deactivate_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { i32, i32 }
%struct.mlx4_en_rx_ring = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@TXBB_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_en_deactivate_rx_ring(%struct.mlx4_en_priv* %0, %struct.mlx4_en_rx_ring* %1) #0 {
  %3 = alloca %struct.mlx4_en_priv*, align 8
  %4 = alloca %struct.mlx4_en_rx_ring*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %3, align 8
  store %struct.mlx4_en_rx_ring* %1, %struct.mlx4_en_rx_ring** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %41, %2
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %9 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %7, %11
  br i1 %12, label %13, label %44

13:                                               ; preds = %6
  %14 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %15 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %18 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PAGE_SIZE, align 4
  %27 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %28 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dma_unmap_page(i32 %16, i32 %25, i32 %26, i32 %29)
  %31 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %32 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @put_page(i32 %39)
  br label %41

41:                                               ; preds = %13
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %6

44:                                               ; preds = %6
  %45 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %46 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  %48 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %49 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %50 = call i32 @mlx4_en_free_rx_buf(%struct.mlx4_en_priv* %48, %struct.mlx4_en_rx_ring* %49)
  %51 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %52 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @TXBB_SIZE, align 8
  %55 = icmp sle i64 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %44
  %57 = load i64, i64* @TXBB_SIZE, align 8
  %58 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %59 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = sub nsw i64 %61, %57
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %59, align 8
  br label %64

64:                                               ; preds = %56, %44
  ret void
}

declare dso_local i32 @dma_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @put_page(i32) #1

declare dso_local i32 @mlx4_en_free_rx_buf(%struct.mlx4_en_priv*, %struct.mlx4_en_rx_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
