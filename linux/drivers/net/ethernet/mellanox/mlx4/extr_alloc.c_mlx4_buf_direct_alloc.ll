; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_alloc.c_mlx4_buf_direct_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_alloc.c_mlx4_buf_direct_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.mlx4_buf = type { i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, i32, %struct.mlx4_buf*)* @mlx4_buf_direct_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_buf_direct_alloc(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_buf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_buf*, align 8
  %8 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mlx4_buf* %2, %struct.mlx4_buf** %7, align 8
  %9 = load %struct.mlx4_buf*, %struct.mlx4_buf** %7, align 8
  %10 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %9, i32 0, i32 0
  store i32 1, i32* %10, align 4
  %11 = load %struct.mlx4_buf*, %struct.mlx4_buf** %7, align 8
  %12 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %11, i32 0, i32 1
  store i32 1, i32* %12, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @get_order(i32 %13)
  %15 = load i32, i32* @PAGE_SHIFT, align 4
  %16 = add nsw i32 %14, %15
  %17 = load %struct.mlx4_buf*, %struct.mlx4_buf** %7, align 8
  %18 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %20 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i32 @dma_alloc_coherent(i32* %24, i32 %25, i32* %8, i32 %26)
  %28 = load %struct.mlx4_buf*, %struct.mlx4_buf** %7, align 8
  %29 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 4
  %31 = load %struct.mlx4_buf*, %struct.mlx4_buf** %7, align 8
  %32 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %3
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %63

39:                                               ; preds = %3
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.mlx4_buf*, %struct.mlx4_buf** %7, align 8
  %42 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 4
  br label %44

44:                                               ; preds = %53, %39
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.mlx4_buf*, %struct.mlx4_buf** %7, align 8
  %47 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 1, %48
  %50 = sub nsw i32 %49, 1
  %51 = and i32 %45, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %44
  %54 = load %struct.mlx4_buf*, %struct.mlx4_buf** %7, align 8
  %55 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %55, align 4
  %58 = load %struct.mlx4_buf*, %struct.mlx4_buf** %7, align 8
  %59 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = mul nsw i32 %60, 2
  store i32 %61, i32* %59, align 4
  br label %44

62:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %36
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @get_order(i32) #1

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
