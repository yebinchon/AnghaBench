; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_alloc.c_mlx5_buf_alloc_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_alloc.c_mlx5_buf_alloc_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_frag_buf = type { i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_buf_alloc_node(%struct.mlx5_core_dev* %0, i32 %1, %struct.mlx5_frag_buf* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_core_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5_frag_buf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.mlx5_frag_buf* %2, %struct.mlx5_frag_buf** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.mlx5_frag_buf*, %struct.mlx5_frag_buf** %8, align 8
  %13 = getelementptr inbounds %struct.mlx5_frag_buf, %struct.mlx5_frag_buf* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.mlx5_frag_buf*, %struct.mlx5_frag_buf** %8, align 8
  %15 = getelementptr inbounds %struct.mlx5_frag_buf, %struct.mlx5_frag_buf* %14, i32 0, i32 1
  store i32 1, i32* %15, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @get_order(i32 %16)
  %18 = trunc i64 %17 to i32
  %19 = load i32, i32* @PAGE_SHIFT, align 4
  %20 = add nsw i32 %18, %19
  %21 = load %struct.mlx5_frag_buf*, %struct.mlx5_frag_buf** %8, align 8
  %22 = getelementptr inbounds %struct.mlx5_frag_buf, %struct.mlx5_frag_buf* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.TYPE_3__* @kzalloc(i32 8, i32 %23)
  %25 = load %struct.mlx5_frag_buf*, %struct.mlx5_frag_buf** %8, align 8
  %26 = getelementptr inbounds %struct.mlx5_frag_buf, %struct.mlx5_frag_buf* %25, i32 0, i32 3
  store %struct.TYPE_3__* %24, %struct.TYPE_3__** %26, align 8
  %27 = load %struct.mlx5_frag_buf*, %struct.mlx5_frag_buf** %8, align 8
  %28 = getelementptr inbounds %struct.mlx5_frag_buf, %struct.mlx5_frag_buf* %27, i32 0, i32 3
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = icmp ne %struct.TYPE_3__* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %4
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %82

34:                                               ; preds = %4
  %35 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @mlx5_dma_zalloc_coherent_node(%struct.mlx5_core_dev* %35, i32 %36, i32* %10, i32 %37)
  %39 = load %struct.mlx5_frag_buf*, %struct.mlx5_frag_buf** %8, align 8
  %40 = getelementptr inbounds %struct.mlx5_frag_buf, %struct.mlx5_frag_buf* %39, i32 0, i32 3
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  store i32 %38, i32* %42, align 4
  %43 = load %struct.mlx5_frag_buf*, %struct.mlx5_frag_buf** %8, align 8
  %44 = getelementptr inbounds %struct.mlx5_frag_buf, %struct.mlx5_frag_buf* %43, i32 0, i32 3
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %34
  br label %75

50:                                               ; preds = %34
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.mlx5_frag_buf*, %struct.mlx5_frag_buf** %8, align 8
  %53 = getelementptr inbounds %struct.mlx5_frag_buf, %struct.mlx5_frag_buf* %52, i32 0, i32 3
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i32 %51, i32* %55, align 4
  br label %56

56:                                               ; preds = %65, %50
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.mlx5_frag_buf*, %struct.mlx5_frag_buf** %8, align 8
  %59 = getelementptr inbounds %struct.mlx5_frag_buf, %struct.mlx5_frag_buf* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = shl i32 1, %60
  %62 = sub nsw i32 %61, 1
  %63 = and i32 %57, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %56
  %66 = load %struct.mlx5_frag_buf*, %struct.mlx5_frag_buf** %8, align 8
  %67 = getelementptr inbounds %struct.mlx5_frag_buf, %struct.mlx5_frag_buf* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %67, align 8
  %70 = load %struct.mlx5_frag_buf*, %struct.mlx5_frag_buf** %8, align 8
  %71 = getelementptr inbounds %struct.mlx5_frag_buf, %struct.mlx5_frag_buf* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 %72, 2
  store i32 %73, i32* %71, align 4
  br label %56

74:                                               ; preds = %56
  store i32 0, i32* %5, align 4
  br label %82

75:                                               ; preds = %49
  %76 = load %struct.mlx5_frag_buf*, %struct.mlx5_frag_buf** %8, align 8
  %77 = getelementptr inbounds %struct.mlx5_frag_buf, %struct.mlx5_frag_buf* %76, i32 0, i32 3
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = call i32 @kfree(%struct.TYPE_3__* %78)
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %75, %74, %31
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i64 @get_order(i32) #1

declare dso_local %struct.TYPE_3__* @kzalloc(i32, i32) #1

declare dso_local i32 @mlx5_dma_zalloc_coherent_node(%struct.mlx5_core_dev*, i32, i32*, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
