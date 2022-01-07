; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hisi_femac.c_hisi_femac_free_skb_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hisi_femac.c_hisi_femac_free_skb_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_femac_priv = type { i64, i32, i32, %struct.hisi_femac_queue, %struct.hisi_femac_queue }
%struct.hisi_femac_queue = type { i64, i64, i64, %struct.sk_buff**, i32* }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"NULL rx skb. pos=%d, head=%d\0A\00", align 1
@MAX_FRAME_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"NULL tx skb. pos=%d, head=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_femac_priv*)* @hisi_femac_free_skb_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hisi_femac_free_skb_rings(%struct.hisi_femac_priv* %0) #0 {
  %2 = alloca %struct.hisi_femac_priv*, align 8
  %3 = alloca %struct.hisi_femac_queue*, align 8
  %4 = alloca %struct.hisi_femac_queue*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.hisi_femac_priv* %0, %struct.hisi_femac_priv** %2, align 8
  %8 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %2, align 8
  %9 = getelementptr inbounds %struct.hisi_femac_priv, %struct.hisi_femac_priv* %8, i32 0, i32 4
  store %struct.hisi_femac_queue* %9, %struct.hisi_femac_queue** %3, align 8
  %10 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %2, align 8
  %11 = getelementptr inbounds %struct.hisi_femac_priv, %struct.hisi_femac_priv* %10, i32 0, i32 3
  store %struct.hisi_femac_queue* %11, %struct.hisi_femac_queue** %4, align 8
  %12 = load %struct.hisi_femac_queue*, %struct.hisi_femac_queue** %4, align 8
  %13 = getelementptr inbounds %struct.hisi_femac_queue, %struct.hisi_femac_queue* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %7, align 8
  br label %15

15:                                               ; preds = %43, %34, %1
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.hisi_femac_queue*, %struct.hisi_femac_queue** %4, align 8
  %18 = getelementptr inbounds %struct.hisi_femac_queue, %struct.hisi_femac_queue* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %21, label %70

21:                                               ; preds = %15
  %22 = load %struct.hisi_femac_queue*, %struct.hisi_femac_queue** %4, align 8
  %23 = getelementptr inbounds %struct.hisi_femac_queue, %struct.hisi_femac_queue* %22, i32 0, i32 3
  %24 = load %struct.sk_buff**, %struct.sk_buff*** %23, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %24, i64 %25
  %27 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  store %struct.sk_buff* %27, %struct.sk_buff** %5, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = icmp ne %struct.sk_buff* %28, null
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %21
  %35 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %2, align 8
  %36 = getelementptr inbounds %struct.hisi_femac_priv, %struct.hisi_femac_priv* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load %struct.hisi_femac_queue*, %struct.hisi_femac_queue** %4, align 8
  %40 = getelementptr inbounds %struct.hisi_femac_queue, %struct.hisi_femac_queue* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @netdev_err(i32 %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %38, i64 %41)
  br label %15

43:                                               ; preds = %21
  %44 = load %struct.hisi_femac_queue*, %struct.hisi_femac_queue** %4, align 8
  %45 = getelementptr inbounds %struct.hisi_femac_queue, %struct.hisi_femac_queue* %44, i32 0, i32 4
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* %7, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %6, align 4
  %50 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %2, align 8
  %51 = getelementptr inbounds %struct.hisi_femac_priv, %struct.hisi_femac_priv* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @MAX_FRAME_SIZE, align 4
  %55 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %56 = call i32 @dma_unmap_single(i32 %52, i32 %53, i32 %54, i32 %55)
  %57 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %58 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %57)
  %59 = load %struct.hisi_femac_queue*, %struct.hisi_femac_queue** %4, align 8
  %60 = getelementptr inbounds %struct.hisi_femac_queue, %struct.hisi_femac_queue* %59, i32 0, i32 3
  %61 = load %struct.sk_buff**, %struct.sk_buff*** %60, align 8
  %62 = load i64, i64* %7, align 8
  %63 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %61, i64 %62
  store %struct.sk_buff* null, %struct.sk_buff** %63, align 8
  %64 = load i64, i64* %7, align 8
  %65 = add i64 %64, 1
  %66 = load %struct.hisi_femac_queue*, %struct.hisi_femac_queue** %4, align 8
  %67 = getelementptr inbounds %struct.hisi_femac_queue, %struct.hisi_femac_queue* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = urem i64 %65, %68
  store i64 %69, i64* %7, align 8
  br label %15

70:                                               ; preds = %15
  %71 = load i64, i64* %7, align 8
  %72 = load %struct.hisi_femac_queue*, %struct.hisi_femac_queue** %4, align 8
  %73 = getelementptr inbounds %struct.hisi_femac_queue, %struct.hisi_femac_queue* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load %struct.hisi_femac_queue*, %struct.hisi_femac_queue** %3, align 8
  %75 = getelementptr inbounds %struct.hisi_femac_queue, %struct.hisi_femac_queue* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %7, align 8
  br label %77

77:                                               ; preds = %105, %96, %70
  %78 = load i64, i64* %7, align 8
  %79 = load %struct.hisi_femac_queue*, %struct.hisi_femac_queue** %3, align 8
  %80 = getelementptr inbounds %struct.hisi_femac_queue, %struct.hisi_femac_queue* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %78, %81
  br i1 %82, label %83, label %123

83:                                               ; preds = %77
  %84 = load %struct.hisi_femac_queue*, %struct.hisi_femac_queue** %3, align 8
  %85 = getelementptr inbounds %struct.hisi_femac_queue, %struct.hisi_femac_queue* %84, i32 0, i32 3
  %86 = load %struct.sk_buff**, %struct.sk_buff*** %85, align 8
  %87 = load i64, i64* %7, align 8
  %88 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %86, i64 %87
  %89 = load %struct.sk_buff*, %struct.sk_buff** %88, align 8
  store %struct.sk_buff* %89, %struct.sk_buff** %5, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %91 = icmp ne %struct.sk_buff* %90, null
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  %94 = call i64 @unlikely(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %83
  %97 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %2, align 8
  %98 = getelementptr inbounds %struct.hisi_femac_priv, %struct.hisi_femac_priv* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i64, i64* %7, align 8
  %101 = load %struct.hisi_femac_queue*, %struct.hisi_femac_queue** %3, align 8
  %102 = getelementptr inbounds %struct.hisi_femac_queue, %struct.hisi_femac_queue* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @netdev_err(i32 %99, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %100, i64 %103)
  br label %77

105:                                              ; preds = %83
  %106 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %2, align 8
  %107 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %108 = load i64, i64* %7, align 8
  %109 = call i32 @hisi_femac_tx_dma_unmap(%struct.hisi_femac_priv* %106, %struct.sk_buff* %107, i64 %108)
  %110 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %111 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %110)
  %112 = load %struct.hisi_femac_queue*, %struct.hisi_femac_queue** %3, align 8
  %113 = getelementptr inbounds %struct.hisi_femac_queue, %struct.hisi_femac_queue* %112, i32 0, i32 3
  %114 = load %struct.sk_buff**, %struct.sk_buff*** %113, align 8
  %115 = load i64, i64* %7, align 8
  %116 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %114, i64 %115
  store %struct.sk_buff* null, %struct.sk_buff** %116, align 8
  %117 = load i64, i64* %7, align 8
  %118 = add i64 %117, 1
  %119 = load %struct.hisi_femac_queue*, %struct.hisi_femac_queue** %3, align 8
  %120 = getelementptr inbounds %struct.hisi_femac_queue, %struct.hisi_femac_queue* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = urem i64 %118, %121
  store i64 %122, i64* %7, align 8
  br label %77

123:                                              ; preds = %77
  %124 = load i64, i64* %7, align 8
  %125 = load %struct.hisi_femac_queue*, %struct.hisi_femac_queue** %3, align 8
  %126 = getelementptr inbounds %struct.hisi_femac_queue, %struct.hisi_femac_queue* %125, i32 0, i32 0
  store i64 %124, i64* %126, align 8
  %127 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %2, align 8
  %128 = getelementptr inbounds %struct.hisi_femac_priv, %struct.hisi_femac_priv* %127, i32 0, i32 0
  store i64 0, i64* %128, align 8
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netdev_err(i32, i8*, i64, i64) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @hisi_femac_tx_dma_unmap(%struct.hisi_femac_priv*, %struct.sk_buff*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
