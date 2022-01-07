; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunhme.c_happy_meal_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunhme.c_happy_meal_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.happy_meal = type { i32, i32, i32, %struct.sk_buff**, %struct.net_device*, %struct.TYPE_4__* }
%struct.sk_buff = type { i64 }
%struct.net_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.happy_meal_txd* }
%struct.happy_meal_txd = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"TX<\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"[%d]\00", align 1
@TXFLAG_OWN = common dso_local global i32 0, align 4
@TX_RING_SIZE = common dso_local global i32 0, align 4
@TXFLAG_SIZE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c">\00", align 1
@MAX_SKB_FRAGS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.happy_meal*)* @happy_meal_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @happy_meal_tx(%struct.happy_meal* %0) #0 {
  %2 = alloca %struct.happy_meal*, align 8
  %3 = alloca %struct.happy_meal_txd*, align 8
  %4 = alloca %struct.happy_meal_txd*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.happy_meal* %0, %struct.happy_meal** %2, align 8
  %13 = load %struct.happy_meal*, %struct.happy_meal** %2, align 8
  %14 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %13, i32 0, i32 5
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.happy_meal_txd*, %struct.happy_meal_txd** %16, align 8
  %18 = getelementptr inbounds %struct.happy_meal_txd, %struct.happy_meal_txd* %17, i64 0
  store %struct.happy_meal_txd* %18, %struct.happy_meal_txd** %3, align 8
  %19 = load %struct.happy_meal*, %struct.happy_meal** %2, align 8
  %20 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %19, i32 0, i32 4
  %21 = load %struct.net_device*, %struct.net_device** %20, align 8
  store %struct.net_device* %21, %struct.net_device** %5, align 8
  %22 = load %struct.happy_meal*, %struct.happy_meal** %2, align 8
  %23 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %6, align 4
  %25 = call i32 @TXD(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %151, %1
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.happy_meal*, %struct.happy_meal** %2, align 8
  %29 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %27, %30
  br i1 %31, label %32, label %159

32:                                               ; preds = %26
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i8*
  %36 = call i32 @TXD(i8* %35)
  %37 = load %struct.happy_meal_txd*, %struct.happy_meal_txd** %3, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.happy_meal_txd, %struct.happy_meal_txd* %37, i64 %39
  store %struct.happy_meal_txd* %40, %struct.happy_meal_txd** %4, align 8
  %41 = load %struct.happy_meal*, %struct.happy_meal** %2, align 8
  %42 = load %struct.happy_meal_txd*, %struct.happy_meal_txd** %4, align 8
  %43 = getelementptr inbounds %struct.happy_meal_txd, %struct.happy_meal_txd* %42, i32 0, i32 0
  %44 = call i32 @hme_read_desc32(%struct.happy_meal* %41, i32* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @TXFLAG_OWN, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %32
  br label %159

50:                                               ; preds = %32
  %51 = load %struct.happy_meal*, %struct.happy_meal** %2, align 8
  %52 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %51, i32 0, i32 3
  %53 = load %struct.sk_buff**, %struct.sk_buff*** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %53, i64 %55
  %57 = load %struct.sk_buff*, %struct.sk_buff** %56, align 8
  store %struct.sk_buff* %57, %struct.sk_buff** %7, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %59 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %58)
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %87

63:                                               ; preds = %50
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %66 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %65)
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %64, %68
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* @TX_RING_SIZE, align 4
  %71 = sub nsw i32 %70, 1
  %72 = load i32, i32* %12, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %12, align 4
  %74 = load %struct.happy_meal*, %struct.happy_meal** %2, align 8
  %75 = load %struct.happy_meal_txd*, %struct.happy_meal_txd** %3, align 8
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.happy_meal_txd, %struct.happy_meal_txd* %75, i64 %77
  %79 = getelementptr inbounds %struct.happy_meal_txd, %struct.happy_meal_txd* %78, i32 0, i32 0
  %80 = call i32 @hme_read_desc32(%struct.happy_meal* %74, i32* %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @TXFLAG_OWN, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %63
  br label %159

86:                                               ; preds = %63
  br label %87

87:                                               ; preds = %86, %50
  %88 = load %struct.happy_meal*, %struct.happy_meal** %2, align 8
  %89 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %88, i32 0, i32 3
  %90 = load %struct.sk_buff**, %struct.sk_buff*** %89, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %90, i64 %92
  store %struct.sk_buff* null, %struct.sk_buff** %93, align 8
  %94 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %95 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.net_device*, %struct.net_device** %5, align 8
  %98 = getelementptr inbounds %struct.net_device, %struct.net_device* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = add nsw i64 %101, %96
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %99, align 4
  store i32 0, i32* %11, align 4
  br label %104

104:                                              ; preds = %148, %87
  %105 = load i32, i32* %11, align 4
  %106 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %107 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %106)
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp sle i32 %105, %109
  br i1 %110, label %111, label %151

111:                                              ; preds = %104
  %112 = load %struct.happy_meal*, %struct.happy_meal** %2, align 8
  %113 = load %struct.happy_meal_txd*, %struct.happy_meal_txd** %4, align 8
  %114 = getelementptr inbounds %struct.happy_meal_txd, %struct.happy_meal_txd* %113, i32 0, i32 1
  %115 = call i32 @hme_read_desc32(%struct.happy_meal* %112, i32* %114)
  store i32 %115, i32* %9, align 4
  %116 = load %struct.happy_meal*, %struct.happy_meal** %2, align 8
  %117 = load %struct.happy_meal_txd*, %struct.happy_meal_txd** %4, align 8
  %118 = getelementptr inbounds %struct.happy_meal_txd, %struct.happy_meal_txd* %117, i32 0, i32 0
  %119 = call i32 @hme_read_desc32(%struct.happy_meal* %116, i32* %118)
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* @TXFLAG_SIZE, align 4
  %121 = load i32, i32* %10, align 4
  %122 = and i32 %121, %120
  store i32 %122, i32* %10, align 4
  %123 = load i32, i32* %11, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %133, label %125

125:                                              ; preds = %111
  %126 = load %struct.happy_meal*, %struct.happy_meal** %2, align 8
  %127 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* @DMA_TO_DEVICE, align 4
  %132 = call i32 @dma_unmap_single(i32 %128, i32 %129, i32 %130, i32 %131)
  br label %141

133:                                              ; preds = %111
  %134 = load %struct.happy_meal*, %struct.happy_meal** %2, align 8
  %135 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* %9, align 4
  %138 = load i32, i32* %10, align 4
  %139 = load i32, i32* @DMA_TO_DEVICE, align 4
  %140 = call i32 @dma_unmap_page(i32 %136, i32 %137, i32 %138, i32 %139)
  br label %141

141:                                              ; preds = %133, %125
  %142 = load i32, i32* %6, align 4
  %143 = call i32 @NEXT_TX(i32 %142)
  store i32 %143, i32* %6, align 4
  %144 = load %struct.happy_meal_txd*, %struct.happy_meal_txd** %3, align 8
  %145 = load i32, i32* %6, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.happy_meal_txd, %struct.happy_meal_txd* %144, i64 %146
  store %struct.happy_meal_txd* %147, %struct.happy_meal_txd** %4, align 8
  br label %148

148:                                              ; preds = %141
  %149 = load i32, i32* %11, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %11, align 4
  br label %104

151:                                              ; preds = %104
  %152 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %153 = call i32 @dev_consume_skb_irq(%struct.sk_buff* %152)
  %154 = load %struct.net_device*, %struct.net_device** %5, align 8
  %155 = getelementptr inbounds %struct.net_device, %struct.net_device* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %156, align 4
  br label %26

159:                                              ; preds = %85, %49, %26
  %160 = load i32, i32* %6, align 4
  %161 = load %struct.happy_meal*, %struct.happy_meal** %2, align 8
  %162 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 8
  %163 = call i32 @TXD(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %164 = load %struct.net_device*, %struct.net_device** %5, align 8
  %165 = call i64 @netif_queue_stopped(%struct.net_device* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %176

167:                                              ; preds = %159
  %168 = load %struct.happy_meal*, %struct.happy_meal** %2, align 8
  %169 = call i64 @TX_BUFFS_AVAIL(%struct.happy_meal* %168)
  %170 = load i64, i64* @MAX_SKB_FRAGS, align 8
  %171 = add nsw i64 %170, 1
  %172 = icmp sgt i64 %169, %171
  br i1 %172, label %173, label %176

173:                                              ; preds = %167
  %174 = load %struct.net_device*, %struct.net_device** %5, align 8
  %175 = call i32 @netif_wake_queue(%struct.net_device* %174)
  br label %176

176:                                              ; preds = %173, %167, %159
  ret void
}

declare dso_local i32 @TXD(i8*) #1

declare dso_local i32 @hme_read_desc32(%struct.happy_meal*, i32*) #1

declare dso_local %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @NEXT_TX(i32) #1

declare dso_local i32 @dev_consume_skb_irq(%struct.sk_buff*) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i64 @TX_BUFFS_AVAIL(%struct.happy_meal*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
