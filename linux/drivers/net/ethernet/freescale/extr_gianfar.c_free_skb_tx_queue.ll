; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar.c_free_skb_tx_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar.c_free_skb_tx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfar_priv_tx_q = type { i32, i32**, %struct.txbd8*, i32 }
%struct.txbd8 = type { i32, i32, i64 }
%struct.gfar_private = type { i32 }
%struct.TYPE_2__ = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfar_priv_tx_q*)* @free_skb_tx_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_skb_tx_queue(%struct.gfar_priv_tx_q* %0) #0 {
  %2 = alloca %struct.gfar_priv_tx_q*, align 8
  %3 = alloca %struct.txbd8*, align 8
  %4 = alloca %struct.gfar_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gfar_priv_tx_q* %0, %struct.gfar_priv_tx_q** %2, align 8
  %7 = load %struct.gfar_priv_tx_q*, %struct.gfar_priv_tx_q** %2, align 8
  %8 = getelementptr inbounds %struct.gfar_priv_tx_q, %struct.gfar_priv_tx_q* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.gfar_private* @netdev_priv(i32 %9)
  store %struct.gfar_private* %10, %struct.gfar_private** %4, align 8
  %11 = load %struct.gfar_priv_tx_q*, %struct.gfar_priv_tx_q** %2, align 8
  %12 = getelementptr inbounds %struct.gfar_priv_tx_q, %struct.gfar_priv_tx_q* %11, i32 0, i32 2
  %13 = load %struct.txbd8*, %struct.txbd8** %12, align 8
  store %struct.txbd8* %13, %struct.txbd8** %3, align 8
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %95, %1
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.gfar_priv_tx_q*, %struct.gfar_priv_tx_q** %2, align 8
  %17 = getelementptr inbounds %struct.gfar_priv_tx_q, %struct.gfar_priv_tx_q* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %98

20:                                               ; preds = %14
  %21 = load %struct.gfar_priv_tx_q*, %struct.gfar_priv_tx_q** %2, align 8
  %22 = getelementptr inbounds %struct.gfar_priv_tx_q, %struct.gfar_priv_tx_q* %21, i32 0, i32 1
  %23 = load i32**, i32*** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32*, i32** %23, i64 %25
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %20
  br label %95

30:                                               ; preds = %20
  %31 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %32 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.txbd8*, %struct.txbd8** %3, align 8
  %35 = getelementptr inbounds %struct.txbd8, %struct.txbd8* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @be32_to_cpu(i32 %36)
  %38 = load %struct.txbd8*, %struct.txbd8** %3, align 8
  %39 = getelementptr inbounds %struct.txbd8, %struct.txbd8* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @be16_to_cpu(i32 %40)
  %42 = load i32, i32* @DMA_TO_DEVICE, align 4
  %43 = call i32 @dma_unmap_single(i32 %33, i32 %37, i32 %41, i32 %42)
  %44 = load %struct.txbd8*, %struct.txbd8** %3, align 8
  %45 = getelementptr inbounds %struct.txbd8, %struct.txbd8* %44, i32 0, i32 2
  store i64 0, i64* %45, align 8
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %75, %30
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.gfar_priv_tx_q*, %struct.gfar_priv_tx_q** %2, align 8
  %49 = getelementptr inbounds %struct.gfar_priv_tx_q, %struct.gfar_priv_tx_q* %48, i32 0, i32 1
  %50 = load i32**, i32*** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32*, i32** %50, i64 %52
  %54 = load i32*, i32** %53, align 8
  %55 = call %struct.TYPE_2__* @skb_shinfo(i32* %54)
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %47, %57
  br i1 %58, label %59, label %78

59:                                               ; preds = %46
  %60 = load %struct.txbd8*, %struct.txbd8** %3, align 8
  %61 = getelementptr inbounds %struct.txbd8, %struct.txbd8* %60, i32 1
  store %struct.txbd8* %61, %struct.txbd8** %3, align 8
  %62 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %63 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.txbd8*, %struct.txbd8** %3, align 8
  %66 = getelementptr inbounds %struct.txbd8, %struct.txbd8* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @be32_to_cpu(i32 %67)
  %69 = load %struct.txbd8*, %struct.txbd8** %3, align 8
  %70 = getelementptr inbounds %struct.txbd8, %struct.txbd8* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @be16_to_cpu(i32 %71)
  %73 = load i32, i32* @DMA_TO_DEVICE, align 4
  %74 = call i32 @dma_unmap_page(i32 %64, i32 %68, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %59
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %46

78:                                               ; preds = %46
  %79 = load %struct.txbd8*, %struct.txbd8** %3, align 8
  %80 = getelementptr inbounds %struct.txbd8, %struct.txbd8* %79, i32 1
  store %struct.txbd8* %80, %struct.txbd8** %3, align 8
  %81 = load %struct.gfar_priv_tx_q*, %struct.gfar_priv_tx_q** %2, align 8
  %82 = getelementptr inbounds %struct.gfar_priv_tx_q, %struct.gfar_priv_tx_q* %81, i32 0, i32 1
  %83 = load i32**, i32*** %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32*, i32** %83, i64 %85
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @dev_kfree_skb_any(i32* %87)
  %89 = load %struct.gfar_priv_tx_q*, %struct.gfar_priv_tx_q** %2, align 8
  %90 = getelementptr inbounds %struct.gfar_priv_tx_q, %struct.gfar_priv_tx_q* %89, i32 0, i32 1
  %91 = load i32**, i32*** %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32*, i32** %91, i64 %93
  store i32* null, i32** %94, align 8
  br label %95

95:                                               ; preds = %78, %29
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %5, align 4
  br label %14

98:                                               ; preds = %14
  %99 = load %struct.gfar_priv_tx_q*, %struct.gfar_priv_tx_q** %2, align 8
  %100 = getelementptr inbounds %struct.gfar_priv_tx_q, %struct.gfar_priv_tx_q* %99, i32 0, i32 1
  %101 = load i32**, i32*** %100, align 8
  %102 = call i32 @kfree(i32** %101)
  %103 = load %struct.gfar_priv_tx_q*, %struct.gfar_priv_tx_q** %2, align 8
  %104 = getelementptr inbounds %struct.gfar_priv_tx_q, %struct.gfar_priv_tx_q* %103, i32 0, i32 1
  store i32** null, i32*** %104, align 8
  ret void
}

declare dso_local %struct.gfar_private* @netdev_priv(i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(i32*) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

declare dso_local i32 @kfree(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
