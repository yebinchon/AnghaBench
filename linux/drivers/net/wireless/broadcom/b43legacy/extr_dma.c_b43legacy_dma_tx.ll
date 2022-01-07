; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_dma.c_b43legacy_dma_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_dma.c_b43legacy_dma_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32*, i32 }
%struct.sk_buff = type { i32 }
%struct.b43legacy_dmaring = type { i32, i32, i32 }

@B43legacy_DBG_DMAVERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Packet after queue stopped\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@SLOTS_PER_PACKET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"DMA queue overflow\0A\00", align 1
@ENOKEY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"DMA tx mapping failure\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Stopped TX ring %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @b43legacy_dma_tx(%struct.b43legacy_wldev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.b43legacy_wldev*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.b43legacy_dmaring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %10)
  %12 = call %struct.b43legacy_dmaring* @priority_to_txring(%struct.b43legacy_wldev* %9, i32 %11)
  store %struct.b43legacy_dmaring* %12, %struct.b43legacy_dmaring** %6, align 8
  %13 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %6, align 8
  %14 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @B43legacy_WARN_ON(i32 %18)
  %20 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %6, align 8
  %21 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %2
  %26 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %27 = load i32, i32* @B43legacy_DBG_DMAVERBOSE, align 4
  %28 = call i64 @b43legacy_debug(%struct.b43legacy_wldev* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %32 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = call i32 @b43legacyerr(%struct.TYPE_3__* %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %30, %25
  %36 = load i32, i32* @ENOSPC, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %120

38:                                               ; preds = %2
  %39 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %6, align 8
  %40 = call i64 @free_slots(%struct.b43legacy_dmaring* %39)
  %41 = load i64, i64* @SLOTS_PER_PACKET, align 8
  %42 = icmp slt i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i64 @WARN_ON(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %38
  %47 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %48 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = call i32 @b43legacyerr(%struct.TYPE_3__* %49, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @ENOSPC, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %120

53:                                               ; preds = %38
  %54 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %6, align 8
  %55 = call i32 @dma_tx_fragment(%struct.b43legacy_dmaring* %54, %struct.sk_buff** %5)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @ENOKEY, align 4
  %58 = sub nsw i32 0, %57
  %59 = icmp eq i32 %56, %58
  %60 = zext i1 %59 to i32
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %53
  %64 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %65 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %64)
  store i32 0, i32* %3, align 4
  br label %120

66:                                               ; preds = %53
  %67 = load i32, i32* %7, align 4
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %72 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %71, i32 0, i32 0
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = call i32 @b43legacyerr(%struct.TYPE_3__* %73, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %3, align 4
  br label %120

76:                                               ; preds = %66
  %77 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %6, align 8
  %78 = call i64 @free_slots(%struct.b43legacy_dmaring* %77)
  %79 = load i64, i64* @SLOTS_PER_PACKET, align 8
  %80 = icmp slt i64 %78, %79
  br i1 %80, label %85, label %81

81:                                               ; preds = %76
  %82 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %6, align 8
  %83 = call i64 @should_inject_overflow(%struct.b43legacy_dmaring* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %118

85:                                               ; preds = %81, %76
  %86 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %87 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %86)
  store i32 %87, i32* %8, align 4
  %88 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %89 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %88, i32 0, i32 0
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @ieee80211_stop_queue(i32 %92, i32 %93)
  %95 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %96 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %95, i32 0, i32 0
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  store i32 1, i32* %102, align 4
  %103 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %6, align 8
  %104 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %103, i32 0, i32 0
  store i32 1, i32* %104, align 4
  %105 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %106 = load i32, i32* @B43legacy_DBG_DMAVERBOSE, align 4
  %107 = call i64 @b43legacy_debug(%struct.b43legacy_wldev* %105, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %85
  %110 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %111 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %110, i32 0, i32 0
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %6, align 8
  %114 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @b43legacydbg(%struct.TYPE_3__* %112, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %115)
  br label %117

117:                                              ; preds = %109, %85
  br label %118

118:                                              ; preds = %117, %81
  %119 = load i32, i32* %7, align 4
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %118, %70, %63, %46, %35
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local %struct.b43legacy_dmaring* @priority_to_txring(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i32 @B43legacy_WARN_ON(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @b43legacy_debug(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacyerr(%struct.TYPE_3__*, i8*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @free_slots(%struct.b43legacy_dmaring*) #1

declare dso_local i32 @dma_tx_fragment(%struct.b43legacy_dmaring*, %struct.sk_buff**) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i64 @should_inject_overflow(%struct.b43legacy_dmaring*) #1

declare dso_local i32 @ieee80211_stop_queue(i32, i32) #1

declare dso_local i32 @b43legacydbg(%struct.TYPE_3__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
