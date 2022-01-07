; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_dma.c_mt76_dma_rx_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_dma.c_mt76_dma_rx_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_dev = type { %struct.mt76_queue*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.mt76_dev*, i32, %struct.sk_buff*)* }
%struct.sk_buff = type { i64 }
%struct.mt76_queue = type { i32, i32, %struct.sk_buff* }

@MT_RXQ_MCU = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt76_dev*, %struct.mt76_queue*, i32)* @mt76_dma_rx_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt76_dma_rx_process(%struct.mt76_dev* %0, %struct.mt76_queue* %1, i32 %2) #0 {
  %4 = alloca %struct.mt76_dev*, align 8
  %5 = alloca %struct.mt76_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.mt76_dev* %0, %struct.mt76_dev** %4, align 8
  store %struct.mt76_queue* %1, %struct.mt76_queue** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %112, %108, %77, %62, %48, %3
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %130

19:                                               ; preds = %15
  %20 = load %struct.mt76_dev*, %struct.mt76_dev** %4, align 8
  %21 = load %struct.mt76_queue*, %struct.mt76_queue** %5, align 8
  %22 = call i8* @mt76_dma_dequeue(%struct.mt76_dev* %20, %struct.mt76_queue* %21, i32 0, i32* %7, i32* %13, i32* %12)
  store i8* %22, i8** %11, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  br label %130

26:                                               ; preds = %19
  %27 = load %struct.mt76_queue*, %struct.mt76_queue** %5, align 8
  %28 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %27, i32 0, i32 2
  %29 = load %struct.sk_buff*, %struct.sk_buff** %28, align 8
  %30 = icmp ne %struct.sk_buff* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.mt76_queue*, %struct.mt76_queue** %5, align 8
  %33 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %8, align 4
  br label %40

35:                                               ; preds = %26
  %36 = load %struct.mt76_queue*, %struct.mt76_queue** %5, align 8
  %37 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @SKB_WITH_OVERHEAD(i32 %38)
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %35, %31
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.mt76_queue*, %struct.mt76_queue** %5, align 8
  %44 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %42, %45
  %47 = icmp slt i32 %41, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %40
  %49 = load %struct.mt76_queue*, %struct.mt76_queue** %5, align 8
  %50 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %49, i32 0, i32 2
  %51 = load %struct.sk_buff*, %struct.sk_buff** %50, align 8
  %52 = call i32 @dev_kfree_skb(%struct.sk_buff* %51)
  %53 = load %struct.mt76_queue*, %struct.mt76_queue** %5, align 8
  %54 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %53, i32 0, i32 2
  store %struct.sk_buff* null, %struct.sk_buff** %54, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = call i32 @skb_free_frag(i8* %55)
  br label %15

57:                                               ; preds = %40
  %58 = load %struct.mt76_queue*, %struct.mt76_queue** %5, align 8
  %59 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %58, i32 0, i32 2
  %60 = load %struct.sk_buff*, %struct.sk_buff** %59, align 8
  %61 = icmp ne %struct.sk_buff* %60, null
  br i1 %61, label %62, label %69

62:                                               ; preds = %57
  %63 = load %struct.mt76_dev*, %struct.mt76_dev** %4, align 8
  %64 = load %struct.mt76_queue*, %struct.mt76_queue** %5, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @mt76_add_fragment(%struct.mt76_dev* %63, %struct.mt76_queue* %64, i8* %65, i32 %66, i32 %67)
  br label %15

69:                                               ; preds = %57
  %70 = load i8*, i8** %11, align 8
  %71 = load %struct.mt76_queue*, %struct.mt76_queue** %5, align 8
  %72 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call %struct.sk_buff* @build_skb(i8* %70, i32 %73)
  store %struct.sk_buff* %74, %struct.sk_buff** %10, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %76 = icmp ne %struct.sk_buff* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %69
  %78 = load i8*, i8** %11, align 8
  %79 = call i32 @skb_free_frag(i8* %78)
  br label %15

80:                                               ; preds = %69
  %81 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %82 = load %struct.mt76_queue*, %struct.mt76_queue** %5, align 8
  %83 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @skb_reserve(%struct.sk_buff* %81, i32 %84)
  %86 = load %struct.mt76_queue*, %struct.mt76_queue** %5, align 8
  %87 = load %struct.mt76_dev*, %struct.mt76_dev** %4, align 8
  %88 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %87, i32 0, i32 0
  %89 = load %struct.mt76_queue*, %struct.mt76_queue** %88, align 8
  %90 = load i64, i64* @MT_RXQ_MCU, align 8
  %91 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %89, i64 %90
  %92 = icmp eq %struct.mt76_queue* %86, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %80
  %94 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %95 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = inttoptr i64 %96 to i32*
  store i32* %97, i32** %14, align 8
  %98 = load i32, i32* %13, align 4
  %99 = load i32*, i32** %14, align 8
  store i32 %98, i32* %99, align 4
  br label %100

100:                                              ; preds = %93, %80
  %101 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @__skb_put(%struct.sk_buff* %101, i32 %102)
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* %12, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %100
  %109 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %110 = load %struct.mt76_queue*, %struct.mt76_queue** %5, align 8
  %111 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %110, i32 0, i32 2
  store %struct.sk_buff* %109, %struct.sk_buff** %111, align 8
  br label %15

112:                                              ; preds = %100
  %113 = load %struct.mt76_dev*, %struct.mt76_dev** %4, align 8
  %114 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %113, i32 0, i32 1
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i32 (%struct.mt76_dev*, i32, %struct.sk_buff*)*, i32 (%struct.mt76_dev*, i32, %struct.sk_buff*)** %116, align 8
  %118 = load %struct.mt76_dev*, %struct.mt76_dev** %4, align 8
  %119 = load %struct.mt76_queue*, %struct.mt76_queue** %5, align 8
  %120 = load %struct.mt76_dev*, %struct.mt76_dev** %4, align 8
  %121 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %120, i32 0, i32 0
  %122 = load %struct.mt76_queue*, %struct.mt76_queue** %121, align 8
  %123 = ptrtoint %struct.mt76_queue* %119 to i64
  %124 = ptrtoint %struct.mt76_queue* %122 to i64
  %125 = sub i64 %123, %124
  %126 = sdiv exact i64 %125, 16
  %127 = trunc i64 %126 to i32
  %128 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %129 = call i32 %117(%struct.mt76_dev* %118, i32 %127, %struct.sk_buff* %128)
  br label %15

130:                                              ; preds = %25, %15
  %131 = load %struct.mt76_dev*, %struct.mt76_dev** %4, align 8
  %132 = load %struct.mt76_queue*, %struct.mt76_queue** %5, align 8
  %133 = call i32 @mt76_dma_rx_fill(%struct.mt76_dev* %131, %struct.mt76_queue* %132)
  %134 = load i32, i32* %9, align 4
  ret i32 %134
}

declare dso_local i8* @mt76_dma_dequeue(%struct.mt76_dev*, %struct.mt76_queue*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @SKB_WITH_OVERHEAD(i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_free_frag(i8*) #1

declare dso_local i32 @mt76_add_fragment(%struct.mt76_dev*, %struct.mt76_queue*, i8*, i32, i32) #1

declare dso_local %struct.sk_buff* @build_skb(i8*, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @__skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @mt76_dma_rx_fill(%struct.mt76_dev*, %struct.mt76_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
