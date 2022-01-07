; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_vif_beacon_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_vif_beacon_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_vif = type { i64, %struct.TYPE_4__*, i32, %struct.ath10k* }
%struct.TYPE_4__ = type { i32 }
%struct.ath10k = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ATH10K_BEACON_SCHEDULED = common dso_local global i64 0, align 8
@ATH10K_BEACON_SENT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath10k_mac_vif_beacon_free(%struct.ath10k_vif* %0) #0 {
  %2 = alloca %struct.ath10k_vif*, align 8
  %3 = alloca %struct.ath10k*, align 8
  store %struct.ath10k_vif* %0, %struct.ath10k_vif** %2, align 8
  %4 = load %struct.ath10k_vif*, %struct.ath10k_vif** %2, align 8
  %5 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %4, i32 0, i32 3
  %6 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  store %struct.ath10k* %6, %struct.ath10k** %3, align 8
  %7 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %8 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %7, i32 0, i32 1
  %9 = call i32 @lockdep_assert_held(i32* %8)
  %10 = load %struct.ath10k_vif*, %struct.ath10k_vif** %2, align 8
  %11 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %65

15:                                               ; preds = %1
  %16 = load %struct.ath10k_vif*, %struct.ath10k_vif** %2, align 8
  %17 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %37, label %20

20:                                               ; preds = %15
  %21 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %22 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ath10k_vif*, %struct.ath10k_vif** %2, align 8
  %25 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = call %struct.TYPE_5__* @ATH10K_SKB_CB(%struct.TYPE_4__* %26)
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ath10k_vif*, %struct.ath10k_vif** %2, align 8
  %31 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @DMA_TO_DEVICE, align 4
  %36 = call i32 @dma_unmap_single(i32 %23, i32 %29, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %20, %15
  %38 = load %struct.ath10k_vif*, %struct.ath10k_vif** %2, align 8
  %39 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ATH10K_BEACON_SCHEDULED, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load %struct.ath10k_vif*, %struct.ath10k_vif** %2, align 8
  %45 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @ATH10K_BEACON_SENT, align 8
  %48 = icmp ne i64 %46, %47
  br label %49

49:                                               ; preds = %43, %37
  %50 = phi i1 [ false, %37 ], [ %48, %43 ]
  %51 = zext i1 %50 to i32
  %52 = call i64 @WARN_ON(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %65

55:                                               ; preds = %49
  %56 = load %struct.ath10k_vif*, %struct.ath10k_vif** %2, align 8
  %57 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = call i32 @dev_kfree_skb_any(%struct.TYPE_4__* %58)
  %60 = load %struct.ath10k_vif*, %struct.ath10k_vif** %2, align 8
  %61 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %60, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %61, align 8
  %62 = load i64, i64* @ATH10K_BEACON_SCHEDULED, align 8
  %63 = load %struct.ath10k_vif*, %struct.ath10k_vif** %2, align 8
  %64 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  br label %65

65:                                               ; preds = %55, %54, %14
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_5__* @ATH10K_SKB_CB(%struct.TYPE_4__*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
