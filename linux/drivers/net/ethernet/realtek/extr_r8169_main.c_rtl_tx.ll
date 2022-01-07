; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rtl8169_private = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_5__*, %struct.ring_info* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ring_info = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@NUM_TX_DESC = common dso_local global i32 0, align 4
@DescOwn = common dso_local global i32 0, align 4
@MAX_SKB_FRAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.rtl8169_private*, i32)* @rtl_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_tx(%struct.net_device* %0, %struct.rtl8169_private* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.rtl8169_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ring_info*, align 8
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.rtl8169_private* %1, %struct.rtl8169_private** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %15 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  %17 = call i32 (...) @smp_rmb()
  %18 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %19 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %7, align 4
  %22 = sub i32 %20, %21
  store i32 %22, i32* %8, align 4
  br label %23

23:                                               ; preds = %85, %3
  %24 = load i32, i32* %8, align 4
  %25 = icmp ugt i32 %24, 0
  br i1 %25, label %26, label %90

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @NUM_TX_DESC, align 4
  %29 = urem i32 %27, %28
  store i32 %29, i32* %11, align 4
  %30 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %31 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %30, i32 0, i32 4
  %32 = load %struct.ring_info*, %struct.ring_info** %31, align 8
  %33 = load i32, i32* %11, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %32, i64 %34
  store %struct.ring_info* %35, %struct.ring_info** %12, align 8
  %36 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %37 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %36, i32 0, i32 3
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = load i32, i32* %11, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @le32_to_cpu(i32 %43)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* @DescOwn, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %26
  br label %90

50:                                               ; preds = %26
  %51 = call i32 (...) @dma_rmb()
  %52 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %53 = call i32 @tp_to_dev(%struct.rtl8169_private* %52)
  %54 = load %struct.ring_info*, %struct.ring_info** %12, align 8
  %55 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %56 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %55, i32 0, i32 3
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = load i32, i32* %11, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i64 %59
  %61 = call i32 @rtl8169_unmap_tx_skb(i32 %53, %struct.ring_info* %54, %struct.TYPE_5__* %60)
  %62 = load %struct.ring_info*, %struct.ring_info** %12, align 8
  %63 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %62, i32 0, i32 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = icmp ne %struct.TYPE_6__* %64, null
  br i1 %65, label %66, label %85

66:                                               ; preds = %50
  %67 = load i32, i32* %10, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %10, align 4
  %69 = load %struct.ring_info*, %struct.ring_info** %12, align 8
  %70 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %69, i32 0, i32 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = zext i32 %74 to i64
  %76 = add nsw i64 %75, %73
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %9, align 4
  %78 = load %struct.ring_info*, %struct.ring_info** %12, align 8
  %79 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %78, i32 0, i32 0
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @napi_consume_skb(%struct.TYPE_6__* %80, i32 %81)
  %83 = load %struct.ring_info*, %struct.ring_info** %12, align 8
  %84 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %83, i32 0, i32 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %84, align 8
  br label %85

85:                                               ; preds = %66, %50
  %86 = load i32, i32* %7, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %8, align 4
  %89 = add i32 %88, -1
  store i32 %89, i32* %8, align 4
  br label %23

90:                                               ; preds = %49, %23
  %91 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %92 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %146

96:                                               ; preds = %90
  %97 = load %struct.net_device*, %struct.net_device** %4, align 8
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @netdev_completed_queue(%struct.net_device* %97, i32 %98, i32 %99)
  %101 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %102 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 2
  %104 = call i32 @u64_stats_update_begin(i32* %103)
  %105 = load i32, i32* %10, align 4
  %106 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %107 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = add i32 %109, %105
  store i32 %110, i32* %108, align 8
  %111 = load i32, i32* %9, align 4
  %112 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %113 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = add i32 %115, %111
  store i32 %116, i32* %114, align 4
  %117 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %118 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 2
  %120 = call i32 @u64_stats_update_end(i32* %119)
  %121 = load i32, i32* %7, align 4
  %122 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %123 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  %124 = call i32 (...) @smp_mb()
  %125 = load %struct.net_device*, %struct.net_device** %4, align 8
  %126 = call i64 @netif_queue_stopped(%struct.net_device* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %96
  %129 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %130 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %131 = call i64 @rtl_tx_slots_avail(%struct.rtl8169_private* %129, i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = load %struct.net_device*, %struct.net_device** %4, align 8
  %135 = call i32 @netif_wake_queue(%struct.net_device* %134)
  br label %136

136:                                              ; preds = %133, %128, %96
  %137 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %138 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %7, align 4
  %141 = icmp ne i32 %139, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %136
  %143 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %144 = call i32 @rtl8169_doorbell(%struct.rtl8169_private* %143)
  br label %145

145:                                              ; preds = %142, %136
  br label %146

146:                                              ; preds = %145, %90
  ret void
}

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dma_rmb(...) #1

declare dso_local i32 @rtl8169_unmap_tx_skb(i32, %struct.ring_info*, %struct.TYPE_5__*) #1

declare dso_local i32 @tp_to_dev(%struct.rtl8169_private*) #1

declare dso_local i32 @napi_consume_skb(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @netdev_completed_queue(%struct.net_device*, i32, i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i64 @rtl_tx_slots_avail(%struct.rtl8169_private*, i32) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @rtl8169_doorbell(%struct.rtl8169_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
