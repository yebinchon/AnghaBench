; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_rx.c_mlx4_alloc_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_rx.c_mlx4_alloc_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { i32, i32, i32 }
%struct.mlx4_en_rx_alloc = type { i32, i32, %struct.page* }
%struct.page = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_en_priv*, %struct.mlx4_en_rx_alloc*, i32)* @mlx4_alloc_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_alloc_page(%struct.mlx4_en_priv* %0, %struct.mlx4_en_rx_alloc* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_en_priv*, align 8
  %6 = alloca %struct.mlx4_en_rx_alloc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %5, align 8
  store %struct.mlx4_en_rx_alloc* %1, %struct.mlx4_en_rx_alloc** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call %struct.page* @alloc_page(i32 %10)
  store %struct.page* %11, %struct.page** %8, align 8
  %12 = load %struct.page*, %struct.page** %8, align 8
  %13 = icmp ne %struct.page* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %55

21:                                               ; preds = %3
  %22 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %23 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.page*, %struct.page** %8, align 8
  %26 = load i32, i32* @PAGE_SIZE, align 4
  %27 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %28 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dma_map_page(i32 %24, %struct.page* %25, i32 0, i32 %26, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %32 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @dma_mapping_error(i32 %33, i32 %34)
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %21
  %39 = load %struct.page*, %struct.page** %8, align 8
  %40 = call i32 @__free_page(%struct.page* %39)
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %55

43:                                               ; preds = %21
  %44 = load %struct.page*, %struct.page** %8, align 8
  %45 = load %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_alloc** %6, align 8
  %46 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %45, i32 0, i32 2
  store %struct.page* %44, %struct.page** %46, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_alloc** %6, align 8
  %49 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %51 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_alloc** %6, align 8
  %54 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %43, %38, %18
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_map_page(i32, %struct.page*, i32, i32, i32) #1

declare dso_local i32 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @__free_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
