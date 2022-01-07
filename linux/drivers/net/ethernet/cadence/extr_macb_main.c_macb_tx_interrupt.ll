; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_tx_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_tx_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macb_queue = type { i32, i32, %struct.TYPE_8__, %struct.macb* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.macb = type { i32, i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.macb_tx_skb = type { %struct.sk_buff* }
%struct.sk_buff = type { i64, i32 }
%struct.macb_dma_desc = type { i32 }
%struct.TYPE_9__ = type { i32 }

@TSR = common dso_local global i32 0, align 4
@MACB_CAPS_ISR_CLEAR_ON_WRITE = common dso_local global i32 0, align 4
@ISR = common dso_local global i32 0, align 4
@TCOMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"macb_tx_interrupt status = 0x%03lx\0A\00", align 1
@TX_USED = common dso_local global i32 0, align 4
@SKBTX_HW_TSTAMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"skb %u (data %p) TX complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.macb_queue*)* @macb_tx_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @macb_tx_interrupt(%struct.macb_queue* %0) #0 {
  %2 = alloca %struct.macb_queue*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.macb*, align 8
  %7 = alloca %struct.macb_queue*, align 8
  %8 = alloca %struct.macb_tx_skb*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.macb_dma_desc*, align 8
  %11 = alloca i32, align 4
  store %struct.macb_queue* %0, %struct.macb_queue** %2, align 8
  %12 = load %struct.macb_queue*, %struct.macb_queue** %2, align 8
  %13 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %12, i32 0, i32 3
  %14 = load %struct.macb*, %struct.macb** %13, align 8
  store %struct.macb* %14, %struct.macb** %6, align 8
  %15 = load %struct.macb_queue*, %struct.macb_queue** %2, align 8
  %16 = load %struct.macb*, %struct.macb** %6, align 8
  %17 = getelementptr inbounds %struct.macb, %struct.macb* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = sub i64 0, %19
  %21 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %15, i64 %20
  store %struct.macb_queue* %21, %struct.macb_queue** %7, align 8
  %22 = load %struct.macb*, %struct.macb** %6, align 8
  %23 = load i32, i32* @TSR, align 4
  %24 = call i32 @macb_readl(%struct.macb* %22, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load %struct.macb*, %struct.macb** %6, align 8
  %26 = load i32, i32* @TSR, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @macb_writel(%struct.macb* %25, i32 %26, i32 %27)
  %29 = load %struct.macb*, %struct.macb** %6, align 8
  %30 = getelementptr inbounds %struct.macb, %struct.macb* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @MACB_CAPS_ISR_CLEAR_ON_WRITE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %1
  %36 = load %struct.macb_queue*, %struct.macb_queue** %2, align 8
  %37 = load i32, i32* @ISR, align 4
  %38 = load i32, i32* @TCOMP, align 4
  %39 = call i32 @MACB_BIT(i32 %38)
  %40 = call i32 @queue_writel(%struct.macb_queue* %36, i32 %37, i32 %39)
  br label %41

41:                                               ; preds = %35, %1
  %42 = load %struct.macb*, %struct.macb** %6, align 8
  %43 = getelementptr inbounds %struct.macb, %struct.macb* %42, i32 0, i32 2
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = call i32 (%struct.TYPE_10__*, i8*, i64, ...) @netdev_vdbg(%struct.TYPE_10__* %44, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %46)
  %48 = load %struct.macb_queue*, %struct.macb_queue** %2, align 8
  %49 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %4, align 4
  %51 = load %struct.macb_queue*, %struct.macb_queue** %2, align 8
  %52 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %158, %41
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %161

58:                                               ; preds = %54
  %59 = load %struct.macb_queue*, %struct.macb_queue** %2, align 8
  %60 = load i32, i32* %3, align 4
  %61 = call %struct.macb_dma_desc* @macb_tx_desc(%struct.macb_queue* %59, i32 %60)
  store %struct.macb_dma_desc* %61, %struct.macb_dma_desc** %10, align 8
  %62 = call i32 (...) @rmb()
  %63 = load %struct.macb_dma_desc*, %struct.macb_dma_desc** %10, align 8
  %64 = getelementptr inbounds %struct.macb_dma_desc, %struct.macb_dma_desc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @TX_USED, align 4
  %68 = call i32 @MACB_BIT(i32 %67)
  %69 = and i32 %66, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %58
  br label %161

72:                                               ; preds = %58
  br label %73

73:                                               ; preds = %154, %72
  %74 = load %struct.macb_queue*, %struct.macb_queue** %2, align 8
  %75 = load i32, i32* %3, align 4
  %76 = call %struct.macb_tx_skb* @macb_tx_skb(%struct.macb_queue* %74, i32 %75)
  store %struct.macb_tx_skb* %76, %struct.macb_tx_skb** %8, align 8
  %77 = load %struct.macb_tx_skb*, %struct.macb_tx_skb** %8, align 8
  %78 = getelementptr inbounds %struct.macb_tx_skb, %struct.macb_tx_skb* %77, i32 0, i32 0
  %79 = load %struct.sk_buff*, %struct.sk_buff** %78, align 8
  store %struct.sk_buff* %79, %struct.sk_buff** %9, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %81 = icmp ne %struct.sk_buff* %80, null
  br i1 %81, label %82, label %146

82:                                               ; preds = %73
  %83 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %84 = call %struct.TYPE_9__* @skb_shinfo(%struct.sk_buff* %83)
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @SKBTX_HW_TSTAMP, align 4
  %88 = and i32 %86, %87
  %89 = call i64 @unlikely(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %82
  %92 = load %struct.macb_queue*, %struct.macb_queue** %2, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %94 = load %struct.macb_dma_desc*, %struct.macb_dma_desc** %10, align 8
  %95 = call i64 @gem_ptp_do_txstamp(%struct.macb_queue* %92, %struct.sk_buff* %93, %struct.macb_dma_desc* %94)
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %91
  %98 = load %struct.macb_tx_skb*, %struct.macb_tx_skb** %8, align 8
  %99 = getelementptr inbounds %struct.macb_tx_skb, %struct.macb_tx_skb* %98, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %99, align 8
  br label %100

100:                                              ; preds = %97, %91, %82
  %101 = load %struct.macb*, %struct.macb** %6, align 8
  %102 = getelementptr inbounds %struct.macb, %struct.macb* %101, i32 0, i32 2
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = load %struct.macb*, %struct.macb** %6, align 8
  %105 = load i32, i32* %3, align 4
  %106 = call i32 @macb_tx_ring_wrap(%struct.macb* %104, i32 %105)
  %107 = sext i32 %106 to i64
  %108 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %109 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i32 (%struct.TYPE_10__*, i8*, i64, ...) @netdev_vdbg(%struct.TYPE_10__* %103, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %107, i32 %110)
  %112 = load %struct.macb*, %struct.macb** %6, align 8
  %113 = getelementptr inbounds %struct.macb, %struct.macb* %112, i32 0, i32 2
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 4
  %119 = load %struct.macb_queue*, %struct.macb_queue** %2, align 8
  %120 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 4
  %124 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %125 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.macb*, %struct.macb** %6, align 8
  %128 = getelementptr inbounds %struct.macb, %struct.macb* %127, i32 0, i32 2
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = sext i32 %132 to i64
  %134 = add nsw i64 %133, %126
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %131, align 4
  %136 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %137 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.macb_queue*, %struct.macb_queue** %2, align 8
  %140 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = sext i32 %142 to i64
  %144 = add nsw i64 %143, %138
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* %141, align 8
  br label %146

146:                                              ; preds = %100, %73
  %147 = load %struct.macb*, %struct.macb** %6, align 8
  %148 = load %struct.macb_tx_skb*, %struct.macb_tx_skb** %8, align 8
  %149 = call i32 @macb_tx_unmap(%struct.macb* %147, %struct.macb_tx_skb* %148)
  %150 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %151 = icmp ne %struct.sk_buff* %150, null
  br i1 %151, label %152, label %153

152:                                              ; preds = %146
  br label %157

153:                                              ; preds = %146
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %3, align 4
  %156 = add i32 %155, 1
  store i32 %156, i32* %3, align 4
  br label %73

157:                                              ; preds = %152
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %3, align 4
  %160 = add i32 %159, 1
  store i32 %160, i32* %3, align 4
  br label %54

161:                                              ; preds = %71, %54
  %162 = load i32, i32* %3, align 4
  %163 = load %struct.macb_queue*, %struct.macb_queue** %2, align 8
  %164 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %163, i32 0, i32 1
  store i32 %162, i32* %164, align 4
  %165 = load %struct.macb*, %struct.macb** %6, align 8
  %166 = getelementptr inbounds %struct.macb, %struct.macb* %165, i32 0, i32 2
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %166, align 8
  %168 = load %struct.macb_queue*, %struct.macb_queue** %7, align 8
  %169 = call i64 @__netif_subqueue_stopped(%struct.TYPE_10__* %167, %struct.macb_queue* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %191

171:                                              ; preds = %161
  %172 = load %struct.macb_queue*, %struct.macb_queue** %2, align 8
  %173 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.macb_queue*, %struct.macb_queue** %2, align 8
  %176 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.macb*, %struct.macb** %6, align 8
  %179 = getelementptr inbounds %struct.macb, %struct.macb* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 8
  %181 = call i64 @CIRC_CNT(i32 %174, i32 %177, i32 %180)
  %182 = load %struct.macb*, %struct.macb** %6, align 8
  %183 = call i64 @MACB_TX_WAKEUP_THRESH(%struct.macb* %182)
  %184 = icmp sle i64 %181, %183
  br i1 %184, label %185, label %191

185:                                              ; preds = %171
  %186 = load %struct.macb*, %struct.macb** %6, align 8
  %187 = getelementptr inbounds %struct.macb, %struct.macb* %186, i32 0, i32 2
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %187, align 8
  %189 = load %struct.macb_queue*, %struct.macb_queue** %7, align 8
  %190 = call i32 @netif_wake_subqueue(%struct.TYPE_10__* %188, %struct.macb_queue* %189)
  br label %191

191:                                              ; preds = %185, %171, %161
  ret void
}

declare dso_local i32 @macb_readl(%struct.macb*, i32) #1

declare dso_local i32 @macb_writel(%struct.macb*, i32, i32) #1

declare dso_local i32 @queue_writel(%struct.macb_queue*, i32, i32) #1

declare dso_local i32 @MACB_BIT(i32) #1

declare dso_local i32 @netdev_vdbg(%struct.TYPE_10__*, i8*, i64, ...) #1

declare dso_local %struct.macb_dma_desc* @macb_tx_desc(%struct.macb_queue*, i32) #1

declare dso_local i32 @rmb(...) #1

declare dso_local %struct.macb_tx_skb* @macb_tx_skb(%struct.macb_queue*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_9__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @gem_ptp_do_txstamp(%struct.macb_queue*, %struct.sk_buff*, %struct.macb_dma_desc*) #1

declare dso_local i32 @macb_tx_ring_wrap(%struct.macb*, i32) #1

declare dso_local i32 @macb_tx_unmap(%struct.macb*, %struct.macb_tx_skb*) #1

declare dso_local i64 @__netif_subqueue_stopped(%struct.TYPE_10__*, %struct.macb_queue*) #1

declare dso_local i64 @CIRC_CNT(i32, i32, i32) #1

declare dso_local i64 @MACB_TX_WAKEUP_THRESH(%struct.macb*) #1

declare dso_local i32 @netif_wake_subqueue(%struct.TYPE_10__*, %struct.macb_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
