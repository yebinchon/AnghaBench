; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_icm.c_mlx4_alloc_icm_coherent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_icm.c_mlx4_alloc_icm_coherent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.mlx4_icm_buf = type { i32, i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.mlx4_icm_buf*, i32, i32)* @mlx4_alloc_icm_coherent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_alloc_icm_coherent(%struct.device* %0, %struct.mlx4_icm_buf* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.mlx4_icm_buf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.mlx4_icm_buf* %1, %struct.mlx4_icm_buf** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load %struct.device*, %struct.device** %6, align 8
  %11 = load i32, i32* @PAGE_SIZE, align 4
  %12 = load i32, i32* %8, align 4
  %13 = shl i32 %11, %12
  %14 = load %struct.mlx4_icm_buf*, %struct.mlx4_icm_buf** %7, align 8
  %15 = getelementptr inbounds %struct.mlx4_icm_buf, %struct.mlx4_icm_buf* %14, i32 0, i32 1
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @dma_alloc_coherent(%struct.device* %10, i32 %13, i32* %15, i32 %16)
  %18 = load %struct.mlx4_icm_buf*, %struct.mlx4_icm_buf** %7, align 8
  %19 = getelementptr inbounds %struct.mlx4_icm_buf, %struct.mlx4_icm_buf* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load %struct.mlx4_icm_buf*, %struct.mlx4_icm_buf** %7, align 8
  %21 = getelementptr inbounds %struct.mlx4_icm_buf, %struct.mlx4_icm_buf* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %53

27:                                               ; preds = %4
  %28 = load %struct.mlx4_icm_buf*, %struct.mlx4_icm_buf** %7, align 8
  %29 = getelementptr inbounds %struct.mlx4_icm_buf, %struct.mlx4_icm_buf* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @offset_in_page(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %27
  %34 = load %struct.device*, %struct.device** %6, align 8
  %35 = load i32, i32* @PAGE_SIZE, align 4
  %36 = load i32, i32* %8, align 4
  %37 = shl i32 %35, %36
  %38 = load %struct.mlx4_icm_buf*, %struct.mlx4_icm_buf** %7, align 8
  %39 = getelementptr inbounds %struct.mlx4_icm_buf, %struct.mlx4_icm_buf* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.mlx4_icm_buf*, %struct.mlx4_icm_buf** %7, align 8
  %42 = getelementptr inbounds %struct.mlx4_icm_buf, %struct.mlx4_icm_buf* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dma_free_coherent(%struct.device* %34, i32 %37, i32 %40, i32 %43)
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %53

47:                                               ; preds = %27
  %48 = load i32, i32* @PAGE_SIZE, align 4
  %49 = load i32, i32* %8, align 4
  %50 = shl i32 %48, %49
  %51 = load %struct.mlx4_icm_buf*, %struct.mlx4_icm_buf** %7, align 8
  %52 = getelementptr inbounds %struct.mlx4_icm_buf, %struct.mlx4_icm_buf* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %47, %33, %24
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i64 @offset_in_page(i32) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
