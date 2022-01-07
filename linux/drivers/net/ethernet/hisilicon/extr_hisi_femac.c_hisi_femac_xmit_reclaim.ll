; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hisi_femac.c_hisi_femac_xmit_reclaim.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hisi_femac.c_hisi_femac_xmit_reclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sk_buff = type { i64 }
%struct.hisi_femac_priv = type { i32, i64, %struct.hisi_femac_queue }
%struct.hisi_femac_queue = type { i64, i32, %struct.sk_buff** }

@ADDRQ_STAT = common dso_local global i64 0, align 8
@TX_CNT_INUSE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"xmitq_cnt_inuse=%d, tx_fifo_used=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @hisi_femac_xmit_reclaim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hisi_femac_xmit_reclaim(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.hisi_femac_priv*, align 8
  %5 = alloca %struct.hisi_femac_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.hisi_femac_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.hisi_femac_priv* %10, %struct.hisi_femac_priv** %4, align 8
  %11 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %4, align 8
  %12 = getelementptr inbounds %struct.hisi_femac_priv, %struct.hisi_femac_priv* %11, i32 0, i32 2
  store %struct.hisi_femac_queue* %12, %struct.hisi_femac_queue** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = call i32 @netif_tx_lock(%struct.net_device* %13)
  %15 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %4, align 8
  %16 = getelementptr inbounds %struct.hisi_femac_priv, %struct.hisi_femac_priv* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ADDRQ_STAT, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readl(i64 %19)
  %21 = load i32, i32* @TX_CNT_INUSE_MASK, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %8, align 4
  br label %23

23:                                               ; preds = %51, %1
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %4, align 8
  %26 = getelementptr inbounds %struct.hisi_femac_priv, %struct.hisi_femac_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %99

29:                                               ; preds = %23
  %30 = load %struct.hisi_femac_queue*, %struct.hisi_femac_queue** %5, align 8
  %31 = getelementptr inbounds %struct.hisi_femac_queue, %struct.hisi_femac_queue* %30, i32 0, i32 2
  %32 = load %struct.sk_buff**, %struct.sk_buff*** %31, align 8
  %33 = load %struct.hisi_femac_queue*, %struct.hisi_femac_queue** %5, align 8
  %34 = getelementptr inbounds %struct.hisi_femac_queue, %struct.hisi_femac_queue* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %32, i64 %35
  %37 = load %struct.sk_buff*, %struct.sk_buff** %36, align 8
  store %struct.sk_buff* %37, %struct.sk_buff** %3, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %39 = icmp ne %struct.sk_buff* %38, null
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %29
  %45 = load %struct.net_device*, %struct.net_device** %2, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %4, align 8
  %48 = getelementptr inbounds %struct.hisi_femac_priv, %struct.hisi_femac_priv* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @netdev_err(%struct.net_device* %45, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %49)
  br label %99

51:                                               ; preds = %29
  %52 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %4, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %54 = load %struct.hisi_femac_queue*, %struct.hisi_femac_queue** %5, align 8
  %55 = getelementptr inbounds %struct.hisi_femac_queue, %struct.hisi_femac_queue* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @hisi_femac_tx_dma_unmap(%struct.hisi_femac_priv* %52, %struct.sk_buff* %53, i64 %56)
  %58 = load i32, i32* %7, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %7, align 4
  %60 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = zext i32 %63 to i64
  %65 = add nsw i64 %64, %62
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %6, align 4
  %67 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %68 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %67)
  %69 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %4, align 8
  %70 = getelementptr inbounds %struct.hisi_femac_priv, %struct.hisi_femac_priv* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %70, align 8
  %73 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %4, align 8
  %74 = getelementptr inbounds %struct.hisi_femac_priv, %struct.hisi_femac_priv* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @ADDRQ_STAT, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @readl(i64 %77)
  %79 = load i32, i32* @TX_CNT_INUSE_MASK, align 4
  %80 = and i32 %78, %79
  store i32 %80, i32* %8, align 4
  %81 = load %struct.hisi_femac_queue*, %struct.hisi_femac_queue** %5, align 8
  %82 = getelementptr inbounds %struct.hisi_femac_queue, %struct.hisi_femac_queue* %81, i32 0, i32 2
  %83 = load %struct.sk_buff**, %struct.sk_buff*** %82, align 8
  %84 = load %struct.hisi_femac_queue*, %struct.hisi_femac_queue** %5, align 8
  %85 = getelementptr inbounds %struct.hisi_femac_queue, %struct.hisi_femac_queue* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %83, i64 %86
  store %struct.sk_buff* null, %struct.sk_buff** %87, align 8
  %88 = load %struct.hisi_femac_queue*, %struct.hisi_femac_queue** %5, align 8
  %89 = getelementptr inbounds %struct.hisi_femac_queue, %struct.hisi_femac_queue* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = add i64 %90, 1
  %92 = load %struct.hisi_femac_queue*, %struct.hisi_femac_queue** %5, align 8
  %93 = getelementptr inbounds %struct.hisi_femac_queue, %struct.hisi_femac_queue* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = urem i64 %91, %95
  %97 = load %struct.hisi_femac_queue*, %struct.hisi_femac_queue** %5, align 8
  %98 = getelementptr inbounds %struct.hisi_femac_queue, %struct.hisi_femac_queue* %97, i32 0, i32 0
  store i64 %96, i64* %98, align 8
  br label %23

99:                                               ; preds = %44, %23
  %100 = load %struct.net_device*, %struct.net_device** %2, align 8
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @netdev_completed_queue(%struct.net_device* %100, i32 %101, i32 %102)
  %104 = load %struct.net_device*, %struct.net_device** %2, align 8
  %105 = call i32 @netif_queue_stopped(%struct.net_device* %104)
  %106 = call i64 @unlikely(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %99
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load %struct.net_device*, %struct.net_device** %2, align 8
  %113 = call i32 @netif_wake_queue(%struct.net_device* %112)
  br label %114

114:                                              ; preds = %111, %108, %99
  %115 = load %struct.net_device*, %struct.net_device** %2, align 8
  %116 = call i32 @netif_tx_unlock(%struct.net_device* %115)
  ret void
}

declare dso_local %struct.hisi_femac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_tx_lock(%struct.net_device*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32, i32) #1

declare dso_local i32 @hisi_femac_tx_dma_unmap(%struct.hisi_femac_priv*, %struct.sk_buff*, i64) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @netdev_completed_queue(%struct.net_device*, i32, i32) #1

declare dso_local i32 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @netif_tx_unlock(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
