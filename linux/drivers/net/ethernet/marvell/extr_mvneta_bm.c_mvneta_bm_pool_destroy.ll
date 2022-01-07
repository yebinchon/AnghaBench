; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta_bm.c_mvneta_bm_pool_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta_bm.c_mvneta_bm_pool_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvneta_bm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mvneta_bm_pool = type { i32, i32, i32*, i32, i32, %struct.hwbm_pool }
%struct.hwbm_pool = type { i32, i64 }

@MVNETA_BM_FREE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cannot free all buffers in pool %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mvneta_bm_pool_destroy(%struct.mvneta_bm* %0, %struct.mvneta_bm_pool* %1, i32 %2) #0 {
  %4 = alloca %struct.mvneta_bm*, align 8
  %5 = alloca %struct.mvneta_bm_pool*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hwbm_pool*, align 8
  store %struct.mvneta_bm* %0, %struct.mvneta_bm** %4, align 8
  store %struct.mvneta_bm_pool* %1, %struct.mvneta_bm_pool** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %5, align 8
  %9 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %8, i32 0, i32 5
  store %struct.hwbm_pool* %9, %struct.hwbm_pool** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = xor i32 %10, -1
  %12 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %5, align 8
  %13 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = and i32 %14, %11
  store i32 %15, i32* %13, align 8
  %16 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %5, align 8
  %17 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %69

21:                                               ; preds = %3
  %22 = load i32, i32* @MVNETA_BM_FREE, align 4
  %23 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %5, align 8
  %24 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 4
  %25 = load %struct.mvneta_bm*, %struct.mvneta_bm** %4, align 8
  %26 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @mvneta_bm_bufs_free(%struct.mvneta_bm* %25, %struct.mvneta_bm_pool* %26, i32 %27)
  %29 = load %struct.hwbm_pool*, %struct.hwbm_pool** %7, align 8
  %30 = getelementptr inbounds %struct.hwbm_pool, %struct.hwbm_pool* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %21
  %34 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %5, align 8
  %35 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %33, %21
  %39 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %5, align 8
  %40 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %63

43:                                               ; preds = %38
  %44 = load %struct.mvneta_bm*, %struct.mvneta_bm** %4, align 8
  %45 = getelementptr inbounds %struct.mvneta_bm, %struct.mvneta_bm* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load %struct.hwbm_pool*, %struct.hwbm_pool** %7, align 8
  %49 = getelementptr inbounds %struct.hwbm_pool, %struct.hwbm_pool* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = mul i64 4, %51
  %53 = trunc i64 %52 to i32
  %54 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %5, align 8
  %55 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %5, align 8
  %58 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @dma_free_coherent(i32* %47, i32 %53, i32* %56, i32 %59)
  %61 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %5, align 8
  %62 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %61, i32 0, i32 2
  store i32* null, i32** %62, align 8
  br label %63

63:                                               ; preds = %43, %38
  %64 = load %struct.mvneta_bm*, %struct.mvneta_bm** %4, align 8
  %65 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %5, align 8
  %66 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @mvneta_bm_pool_disable(%struct.mvneta_bm* %64, i32 %67)
  br label %69

69:                                               ; preds = %63, %20
  ret void
}

declare dso_local i32 @mvneta_bm_bufs_free(%struct.mvneta_bm*, %struct.mvneta_bm_pool*, i32) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @mvneta_bm_pool_disable(%struct.mvneta_bm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
