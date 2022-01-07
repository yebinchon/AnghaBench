; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_rx.c_mlx4_en_alloc_frags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_rx.c_mlx4_en_alloc_frags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { i32 }
%struct.mlx4_en_rx_ring = type { i32 }
%struct.mlx4_en_rx_desc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mlx4_en_rx_alloc = type { i64, i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_en_priv*, %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_desc*, %struct.mlx4_en_rx_alloc*, i32)* @mlx4_en_alloc_frags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_alloc_frags(%struct.mlx4_en_priv* %0, %struct.mlx4_en_rx_ring* %1, %struct.mlx4_en_rx_desc* %2, %struct.mlx4_en_rx_alloc* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_en_priv*, align 8
  %8 = alloca %struct.mlx4_en_rx_ring*, align 8
  %9 = alloca %struct.mlx4_en_rx_desc*, align 8
  %10 = alloca %struct.mlx4_en_rx_alloc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %7, align 8
  store %struct.mlx4_en_rx_ring* %1, %struct.mlx4_en_rx_ring** %8, align 8
  store %struct.mlx4_en_rx_desc* %2, %struct.mlx4_en_rx_desc** %9, align 8
  store %struct.mlx4_en_rx_alloc* %3, %struct.mlx4_en_rx_alloc** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %54, %5
  %14 = load i32, i32* %12, align 4
  %15 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %16 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %59

19:                                               ; preds = %13
  %20 = load %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_alloc** %10, align 8
  %21 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %38, label %24

24:                                               ; preds = %19
  %25 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %26 = load %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_alloc** %10, align 8
  %27 = load i32, i32* %11, align 4
  %28 = call i64 @mlx4_alloc_page(%struct.mlx4_en_priv* %25, %struct.mlx4_en_rx_alloc* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %60

33:                                               ; preds = %24
  %34 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %8, align 8
  %35 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %33, %19
  %39 = load %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_alloc** %10, align 8
  %40 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_alloc** %10, align 8
  %43 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %41, %44
  %46 = call i32 @cpu_to_be64(i64 %45)
  %47 = load %struct.mlx4_en_rx_desc*, %struct.mlx4_en_rx_desc** %9, align 8
  %48 = getelementptr inbounds %struct.mlx4_en_rx_desc, %struct.mlx4_en_rx_desc* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32 %46, i32* %53, align 4
  br label %54

54:                                               ; preds = %38
  %55 = load i32, i32* %12, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %12, align 4
  %57 = load %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_alloc** %10, align 8
  %58 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %57, i32 1
  store %struct.mlx4_en_rx_alloc* %58, %struct.mlx4_en_rx_alloc** %10, align 8
  br label %13

59:                                               ; preds = %13
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %59, %30
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i64 @mlx4_alloc_page(%struct.mlx4_en_priv*, %struct.mlx4_en_rx_alloc*, i32) #1

declare dso_local i32 @cpu_to_be64(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
