; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpmac.c_cpmac_end_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpmac.c_cpmac_end_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.cpmac_desc = type { %struct.TYPE_6__*, i32, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.cpmac_priv = type { i32, i32, %struct.cpmac_desc* }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"sent 0x%p, len=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"end_xmit: spurious interrupt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @cpmac_end_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpmac_end_xmit(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpmac_desc*, align 8
  %6 = alloca %struct.cpmac_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.cpmac_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.cpmac_priv* %8, %struct.cpmac_priv** %6, align 8
  %9 = load %struct.cpmac_priv*, %struct.cpmac_priv** %6, align 8
  %10 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %9, i32 0, i32 2
  %11 = load %struct.cpmac_desc*, %struct.cpmac_desc** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.cpmac_desc, %struct.cpmac_desc* %11, i64 %13
  store %struct.cpmac_desc* %14, %struct.cpmac_desc** %5, align 8
  %15 = load %struct.cpmac_priv*, %struct.cpmac_priv** %6, align 8
  %16 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @CPMAC_TX_ACK(i32 %18)
  %20 = load %struct.cpmac_desc*, %struct.cpmac_desc** %5, align 8
  %21 = getelementptr inbounds %struct.cpmac_desc, %struct.cpmac_desc* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = call i32 @cpmac_write(i32 %17, i32 %19, i32 %23)
  %25 = load %struct.cpmac_desc*, %struct.cpmac_desc** %5, align 8
  %26 = getelementptr inbounds %struct.cpmac_desc, %struct.cpmac_desc* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = call i64 @likely(%struct.TYPE_6__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %97

30:                                               ; preds = %2
  %31 = load %struct.cpmac_priv*, %struct.cpmac_priv** %6, align 8
  %32 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %31, i32 0, i32 0
  %33 = call i32 @spin_lock(i32* %32)
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  %39 = load %struct.cpmac_desc*, %struct.cpmac_desc** %5, align 8
  %40 = getelementptr inbounds %struct.cpmac_desc, %struct.cpmac_desc* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.net_device*, %struct.net_device** %3, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %43
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %46, align 4
  %51 = load %struct.cpmac_priv*, %struct.cpmac_priv** %6, align 8
  %52 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %51, i32 0, i32 0
  %53 = call i32 @spin_unlock(i32* %52)
  %54 = load %struct.net_device*, %struct.net_device** %3, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 0
  %56 = load %struct.cpmac_desc*, %struct.cpmac_desc** %5, align 8
  %57 = getelementptr inbounds %struct.cpmac_desc, %struct.cpmac_desc* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.cpmac_desc*, %struct.cpmac_desc** %5, align 8
  %60 = getelementptr inbounds %struct.cpmac_desc, %struct.cpmac_desc* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* @DMA_TO_DEVICE, align 4
  %65 = call i32 @dma_unmap_single(i32* %55, i32 %58, i64 %63, i32 %64)
  %66 = load %struct.cpmac_priv*, %struct.cpmac_priv** %6, align 8
  %67 = call i32 @netif_msg_tx_done(%struct.cpmac_priv* %66)
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %30
  %71 = load %struct.net_device*, %struct.net_device** %3, align 8
  %72 = load %struct.cpmac_desc*, %struct.cpmac_desc** %5, align 8
  %73 = getelementptr inbounds %struct.cpmac_desc, %struct.cpmac_desc* %72, i32 0, i32 0
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = load %struct.cpmac_desc*, %struct.cpmac_desc** %5, align 8
  %76 = getelementptr inbounds %struct.cpmac_desc, %struct.cpmac_desc* %75, i32 0, i32 0
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @netdev_dbg(%struct.net_device* %71, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %74, i64 %79)
  br label %81

81:                                               ; preds = %70, %30
  %82 = load %struct.cpmac_desc*, %struct.cpmac_desc** %5, align 8
  %83 = getelementptr inbounds %struct.cpmac_desc, %struct.cpmac_desc* %82, i32 0, i32 0
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = call i32 @dev_consume_skb_irq(%struct.TYPE_6__* %84)
  %86 = load %struct.cpmac_desc*, %struct.cpmac_desc** %5, align 8
  %87 = getelementptr inbounds %struct.cpmac_desc, %struct.cpmac_desc* %86, i32 0, i32 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %87, align 8
  %88 = load %struct.net_device*, %struct.net_device** %3, align 8
  %89 = load i32, i32* %4, align 4
  %90 = call i64 @__netif_subqueue_stopped(%struct.net_device* %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %81
  %93 = load %struct.net_device*, %struct.net_device** %3, align 8
  %94 = load i32, i32* %4, align 4
  %95 = call i32 @netif_wake_subqueue(%struct.net_device* %93, i32 %94)
  br label %96

96:                                               ; preds = %92, %81
  br label %117

97:                                               ; preds = %2
  %98 = load %struct.cpmac_priv*, %struct.cpmac_priv** %6, align 8
  %99 = call i64 @netif_msg_tx_err(%struct.cpmac_priv* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %97
  %102 = call i64 (...) @net_ratelimit()
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load %struct.net_device*, %struct.net_device** %3, align 8
  %106 = call i32 @netdev_warn(%struct.net_device* %105, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %107

107:                                              ; preds = %104, %101, %97
  %108 = load %struct.net_device*, %struct.net_device** %3, align 8
  %109 = load i32, i32* %4, align 4
  %110 = call i64 @__netif_subqueue_stopped(%struct.net_device* %108, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %107
  %113 = load %struct.net_device*, %struct.net_device** %3, align 8
  %114 = load i32, i32* %4, align 4
  %115 = call i32 @netif_wake_subqueue(%struct.net_device* %113, i32 %114)
  br label %116

116:                                              ; preds = %112, %107
  br label %117

117:                                              ; preds = %116, %96
  ret void
}

declare dso_local %struct.cpmac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @cpmac_write(i32, i32, i32) #1

declare dso_local i32 @CPMAC_TX_ACK(i32) #1

declare dso_local i64 @likely(%struct.TYPE_6__*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netif_msg_tx_done(%struct.cpmac_priv*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, %struct.TYPE_6__*, i64) #1

declare dso_local i32 @dev_consume_skb_irq(%struct.TYPE_6__*) #1

declare dso_local i64 @__netif_subqueue_stopped(%struct.net_device*, i32) #1

declare dso_local i32 @netif_wake_subqueue(%struct.net_device*, i32) #1

declare dso_local i64 @netif_msg_tx_err(%struct.cpmac_priv*) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
