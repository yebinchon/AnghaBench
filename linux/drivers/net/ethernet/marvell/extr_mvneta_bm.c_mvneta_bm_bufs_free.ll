; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta_bm.c_mvneta_bm_bufs_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta_bm.c_mvneta_bm_bufs_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvneta_bm = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mvneta_bm_pool = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@MVNETA_BM_EMPTY_LIMIT_MASK = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mvneta_bm_bufs_free(%struct.mvneta_bm* %0, %struct.mvneta_bm_pool* %1, i32 %2) #0 {
  %4 = alloca %struct.mvneta_bm*, align 8
  %5 = alloca %struct.mvneta_bm_pool*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store %struct.mvneta_bm* %0, %struct.mvneta_bm** %4, align 8
  store %struct.mvneta_bm_pool* %1, %struct.mvneta_bm_pool** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = xor i32 %10, -1
  %12 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %5, align 8
  %13 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %5, align 8
  %17 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %73

21:                                               ; preds = %3
  %22 = load %struct.mvneta_bm*, %struct.mvneta_bm** %4, align 8
  %23 = load i32, i32* @MVNETA_BM_EMPTY_LIMIT_MASK, align 4
  %24 = call i32 @mvneta_bm_config_set(%struct.mvneta_bm* %22, i32 %23)
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %60, %21
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %5, align 8
  %28 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %26, %30
  br i1 %31, label %32, label %63

32:                                               ; preds = %25
  %33 = load %struct.mvneta_bm*, %struct.mvneta_bm** %4, align 8
  %34 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %5, align 8
  %35 = call i64 @mvneta_bm_pool_get_bp(%struct.mvneta_bm* %33, %struct.mvneta_bm_pool* %34)
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %8, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %60

39:                                               ; preds = %32
  %40 = load i64, i64* %8, align 8
  %41 = call i32* @phys_to_virt(i64 %40)
  store i32* %41, i32** %9, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  br label %63

45:                                               ; preds = %39
  %46 = load %struct.mvneta_bm*, %struct.mvneta_bm** %4, align 8
  %47 = getelementptr inbounds %struct.mvneta_bm, %struct.mvneta_bm* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %8, align 8
  %51 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %5, align 8
  %52 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %55 = call i32 @dma_unmap_single(i32* %49, i64 %50, i32 %53, i32 %54)
  %56 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %5, align 8
  %57 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %56, i32 0, i32 1
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @hwbm_buf_free(%struct.TYPE_4__* %57, i32* %58)
  br label %60

60:                                               ; preds = %45, %38
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %25

63:                                               ; preds = %44, %25
  %64 = load %struct.mvneta_bm*, %struct.mvneta_bm** %4, align 8
  %65 = load i32, i32* @MVNETA_BM_EMPTY_LIMIT_MASK, align 4
  %66 = call i32 @mvneta_bm_config_clear(%struct.mvneta_bm* %64, i32 %65)
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %5, align 8
  %69 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 %71, %67
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %63, %20
  ret void
}

declare dso_local i32 @mvneta_bm_config_set(%struct.mvneta_bm*, i32) #1

declare dso_local i64 @mvneta_bm_pool_get_bp(%struct.mvneta_bm*, %struct.mvneta_bm_pool*) #1

declare dso_local i32* @phys_to_virt(i64) #1

declare dso_local i32 @dma_unmap_single(i32*, i64, i32, i32) #1

declare dso_local i32 @hwbm_buf_free(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @mvneta_bm_config_clear(%struct.mvneta_bm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
