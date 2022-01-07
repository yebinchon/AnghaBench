; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunbmac.c_bigmac_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunbmac.c_bigmac_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bigmac = type { i32, i32, i32, %struct.net_device*, %struct.sk_buff**, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.net_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.sk_buff = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { %struct.be_txd* }
%struct.be_txd = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"bigmac_tx: tx_old[%d] \00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"this(%p) [flags(%08x)addr(%08x)]\00", align 1
@TXD_OWN = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"skb(%p) \00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c" DONE, tx_old=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bigmac*)* @bigmac_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bigmac_tx(%struct.bigmac* %0) #0 {
  %2 = alloca %struct.bigmac*, align 8
  %3 = alloca %struct.be_txd*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.be_txd*, align 8
  store %struct.bigmac* %0, %struct.bigmac** %2, align 8
  %8 = load %struct.bigmac*, %struct.bigmac** %2, align 8
  %9 = getelementptr inbounds %struct.bigmac, %struct.bigmac* %8, i32 0, i32 6
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.be_txd*, %struct.be_txd** %11, align 8
  %13 = getelementptr inbounds %struct.be_txd, %struct.be_txd* %12, i64 0
  store %struct.be_txd* %13, %struct.be_txd** %3, align 8
  %14 = load %struct.bigmac*, %struct.bigmac** %2, align 8
  %15 = getelementptr inbounds %struct.bigmac, %struct.bigmac* %14, i32 0, i32 3
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  store %struct.net_device* %16, %struct.net_device** %4, align 8
  %17 = load %struct.bigmac*, %struct.bigmac** %2, align 8
  %18 = getelementptr inbounds %struct.bigmac, %struct.bigmac* %17, i32 0, i32 2
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load %struct.bigmac*, %struct.bigmac** %2, align 8
  %21 = getelementptr inbounds %struct.bigmac, %struct.bigmac* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i8*
  %26 = call i32 @DTX(i8* %25)
  br label %27

27:                                               ; preds = %55, %1
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.bigmac*, %struct.bigmac** %2, align 8
  %30 = getelementptr inbounds %struct.bigmac, %struct.bigmac* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %28, %31
  br i1 %32, label %33, label %103

33:                                               ; preds = %27
  %34 = load %struct.be_txd*, %struct.be_txd** %3, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.be_txd, %struct.be_txd* %34, i64 %36
  store %struct.be_txd* %37, %struct.be_txd** %7, align 8
  %38 = load %struct.be_txd*, %struct.be_txd** %7, align 8
  %39 = load %struct.be_txd*, %struct.be_txd** %7, align 8
  %40 = getelementptr inbounds %struct.be_txd, %struct.be_txd* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.be_txd*, %struct.be_txd** %7, align 8
  %43 = getelementptr inbounds %struct.be_txd, %struct.be_txd* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i8*
  %47 = call i32 @DTX(i8* %46)
  %48 = load %struct.be_txd*, %struct.be_txd** %7, align 8
  %49 = getelementptr inbounds %struct.be_txd, %struct.be_txd* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @TXD_OWN, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %33
  br label %103

55:                                               ; preds = %33
  %56 = load %struct.bigmac*, %struct.bigmac** %2, align 8
  %57 = getelementptr inbounds %struct.bigmac, %struct.bigmac* %56, i32 0, i32 4
  %58 = load %struct.sk_buff**, %struct.sk_buff*** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %58, i64 %60
  %62 = load %struct.sk_buff*, %struct.sk_buff** %61, align 8
  store %struct.sk_buff* %62, %struct.sk_buff** %6, align 8
  %63 = load %struct.net_device*, %struct.net_device** %4, align 8
  %64 = getelementptr inbounds %struct.net_device, %struct.net_device* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  %68 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.net_device*, %struct.net_device** %4, align 8
  %72 = getelementptr inbounds %struct.net_device, %struct.net_device* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %75, %70
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %73, align 4
  %78 = load %struct.bigmac*, %struct.bigmac** %2, align 8
  %79 = getelementptr inbounds %struct.bigmac, %struct.bigmac* %78, i32 0, i32 5
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load %struct.be_txd*, %struct.be_txd** %7, align 8
  %83 = getelementptr inbounds %struct.be_txd, %struct.be_txd* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* @DMA_TO_DEVICE, align 4
  %89 = call i32 @dma_unmap_single(i32* %81, i32 %84, i64 %87, i32 %88)
  %90 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %91 = bitcast %struct.sk_buff* %90 to i8*
  %92 = call i32 @DTX(i8* %91)
  %93 = load %struct.bigmac*, %struct.bigmac** %2, align 8
  %94 = getelementptr inbounds %struct.bigmac, %struct.bigmac* %93, i32 0, i32 4
  %95 = load %struct.sk_buff**, %struct.sk_buff*** %94, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %95, i64 %97
  store %struct.sk_buff* null, %struct.sk_buff** %98, align 8
  %99 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %100 = call i32 @dev_consume_skb_irq(%struct.sk_buff* %99)
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @NEXT_TX(i32 %101)
  store i32 %102, i32* %5, align 4
  br label %27

103:                                              ; preds = %54, %27
  %104 = load i32, i32* %5, align 4
  %105 = sext i32 %104 to i64
  %106 = inttoptr i64 %105 to i8*
  %107 = call i32 @DTX(i8* %106)
  %108 = load i32, i32* %5, align 4
  %109 = load %struct.bigmac*, %struct.bigmac** %2, align 8
  %110 = getelementptr inbounds %struct.bigmac, %struct.bigmac* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  %111 = load %struct.net_device*, %struct.net_device** %4, align 8
  %112 = call i64 @netif_queue_stopped(%struct.net_device* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %103
  %115 = load %struct.bigmac*, %struct.bigmac** %2, align 8
  %116 = call i64 @TX_BUFFS_AVAIL(%struct.bigmac* %115)
  %117 = icmp sgt i64 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %114
  %119 = load %struct.bigmac*, %struct.bigmac** %2, align 8
  %120 = getelementptr inbounds %struct.bigmac, %struct.bigmac* %119, i32 0, i32 3
  %121 = load %struct.net_device*, %struct.net_device** %120, align 8
  %122 = call i32 @netif_wake_queue(%struct.net_device* %121)
  br label %123

123:                                              ; preds = %118, %114, %103
  %124 = load %struct.bigmac*, %struct.bigmac** %2, align 8
  %125 = getelementptr inbounds %struct.bigmac, %struct.bigmac* %124, i32 0, i32 2
  %126 = call i32 @spin_unlock(i32* %125)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @DTX(i8*) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i64, i32) #1

declare dso_local i32 @dev_consume_skb_irq(%struct.sk_buff*) #1

declare dso_local i32 @NEXT_TX(i32) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i64 @TX_BUFFS_AVAIL(%struct.bigmac*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
