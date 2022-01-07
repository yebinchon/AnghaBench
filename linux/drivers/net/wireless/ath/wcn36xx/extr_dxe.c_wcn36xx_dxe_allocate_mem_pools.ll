; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_dxe.c_wcn36xx_dxe_allocate_mem_pools.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_dxe.c_wcn36xx_dxe_allocate_mem_pools.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx = type { %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i8*, i32 }
%struct.TYPE_3__ = type { i32, i8*, i32 }

@WCN36XX_BD_CHUNK_SIZE = common dso_local global i32 0, align 4
@WCN36XX_DXE_CH_DESC_NUMB_TX_H = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@WCN36XX_DXE_CH_DESC_NUMB_TX_L = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Failed to allocate BD mempool\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wcn36xx_dxe_allocate_mem_pools(%struct.wcn36xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wcn36xx*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store %struct.wcn36xx* %0, %struct.wcn36xx** %3, align 8
  %6 = load i32, i32* @WCN36XX_BD_CHUNK_SIZE, align 4
  %7 = add nsw i32 %6, 16
  %8 = load i32, i32* @WCN36XX_BD_CHUNK_SIZE, align 4
  %9 = srem i32 %8, 8
  %10 = sub nsw i32 %7, %9
  %11 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %12 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i32 %10, i32* %13, align 8
  %14 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %15 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = load i64, i64* @WCN36XX_DXE_CH_DESC_NUMB_TX_H, align 8
  %20 = mul i64 %18, %19
  store i64 %20, i64* %4, align 8
  %21 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %22 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i64, i64* %4, align 8
  %25 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %26 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i8* @dma_alloc_coherent(i32 %23, i64 %24, i32* %27, i32 %28)
  store i8* %29, i8** %5, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %1
  br label %70

33:                                               ; preds = %1
  %34 = load i8*, i8** %5, align 8
  %35 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %36 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  store i8* %34, i8** %37, align 8
  %38 = load i32, i32* @WCN36XX_BD_CHUNK_SIZE, align 4
  %39 = add nsw i32 %38, 16
  %40 = load i32, i32* @WCN36XX_BD_CHUNK_SIZE, align 4
  %41 = srem i32 %40, 8
  %42 = sub nsw i32 %39, %41
  %43 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %44 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 8
  %46 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %47 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* @WCN36XX_DXE_CH_DESC_NUMB_TX_L, align 8
  %52 = mul i64 %50, %51
  store i64 %52, i64* %4, align 8
  %53 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %54 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i64, i64* %4, align 8
  %57 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %58 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call i8* @dma_alloc_coherent(i32 %55, i64 %56, i32* %59, i32 %60)
  store i8* %61, i8** %5, align 8
  %62 = load i8*, i8** %5, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %33
  br label %70

65:                                               ; preds = %33
  %66 = load i8*, i8** %5, align 8
  %67 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %68 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  store i8* %66, i8** %69, align 8
  store i32 0, i32* %2, align 4
  br label %76

70:                                               ; preds = %64, %32
  %71 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %72 = call i32 @wcn36xx_dxe_free_mem_pools(%struct.wcn36xx* %71)
  %73 = call i32 @wcn36xx_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %70, %65
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i8* @dma_alloc_coherent(i32, i64, i32*, i32) #1

declare dso_local i32 @wcn36xx_dxe_free_mem_pools(%struct.wcn36xx*) #1

declare dso_local i32 @wcn36xx_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
