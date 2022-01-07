; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_rxq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_rxq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32, %struct.mwl8k_priv* }
%struct.mwl8k_priv = type { %struct.TYPE_2__*, i32, %struct.mwl8k_rx_queue* }
%struct.TYPE_2__ = type { i32, i32 (i8*, i64)* }
%struct.mwl8k_rx_queue = type { i64, i32*, i32*, i64, i64, i64 }

@MWL8K_RX_DESCS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to alloc RX descriptors\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32)* @mwl8k_rxq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl8k_rxq_init(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mwl8k_priv*, align 8
  %7 = alloca %struct.mwl8k_rx_queue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %15 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %14, i32 0, i32 1
  %16 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %15, align 8
  store %struct.mwl8k_priv* %16, %struct.mwl8k_priv** %6, align 8
  %17 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %6, align 8
  %18 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %17, i32 0, i32 2
  %19 = load %struct.mwl8k_rx_queue*, %struct.mwl8k_rx_queue** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.mwl8k_rx_queue, %struct.mwl8k_rx_queue* %19, i64 %21
  store %struct.mwl8k_rx_queue* %22, %struct.mwl8k_rx_queue** %7, align 8
  %23 = load %struct.mwl8k_rx_queue*, %struct.mwl8k_rx_queue** %7, align 8
  %24 = getelementptr inbounds %struct.mwl8k_rx_queue, %struct.mwl8k_rx_queue* %23, i32 0, i32 5
  store i64 0, i64* %24, align 8
  %25 = load %struct.mwl8k_rx_queue*, %struct.mwl8k_rx_queue** %7, align 8
  %26 = getelementptr inbounds %struct.mwl8k_rx_queue, %struct.mwl8k_rx_queue* %25, i32 0, i32 4
  store i64 0, i64* %26, align 8
  %27 = load %struct.mwl8k_rx_queue*, %struct.mwl8k_rx_queue** %7, align 8
  %28 = getelementptr inbounds %struct.mwl8k_rx_queue, %struct.mwl8k_rx_queue* %27, i32 0, i32 3
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* @MWL8K_RX_DESCS, align 4
  %30 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %6, align 8
  %31 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = mul nsw i32 %29, %34
  store i32 %35, i32* %8, align 4
  %36 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %6, align 8
  %37 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.mwl8k_rx_queue*, %struct.mwl8k_rx_queue** %7, align 8
  %41 = getelementptr inbounds %struct.mwl8k_rx_queue, %struct.mwl8k_rx_queue* %40, i32 0, i32 0
  %42 = call i32* @pci_zalloc_consistent(i32 %38, i32 %39, i64* %41)
  %43 = load %struct.mwl8k_rx_queue*, %struct.mwl8k_rx_queue** %7, align 8
  %44 = getelementptr inbounds %struct.mwl8k_rx_queue, %struct.mwl8k_rx_queue* %43, i32 0, i32 1
  store i32* %42, i32** %44, align 8
  %45 = load %struct.mwl8k_rx_queue*, %struct.mwl8k_rx_queue** %7, align 8
  %46 = getelementptr inbounds %struct.mwl8k_rx_queue, %struct.mwl8k_rx_queue* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %56

49:                                               ; preds = %2
  %50 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %51 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @wiphy_err(i32 %52, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %131

56:                                               ; preds = %2
  %57 = load i32, i32* @MWL8K_RX_DESCS, align 4
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call i32* @kcalloc(i32 %57, i32 4, i32 %58)
  %60 = load %struct.mwl8k_rx_queue*, %struct.mwl8k_rx_queue** %7, align 8
  %61 = getelementptr inbounds %struct.mwl8k_rx_queue, %struct.mwl8k_rx_queue* %60, i32 0, i32 2
  store i32* %59, i32** %61, align 8
  %62 = load %struct.mwl8k_rx_queue*, %struct.mwl8k_rx_queue** %7, align 8
  %63 = getelementptr inbounds %struct.mwl8k_rx_queue, %struct.mwl8k_rx_queue* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %80

66:                                               ; preds = %56
  %67 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %6, align 8
  %68 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.mwl8k_rx_queue*, %struct.mwl8k_rx_queue** %7, align 8
  %72 = getelementptr inbounds %struct.mwl8k_rx_queue, %struct.mwl8k_rx_queue* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.mwl8k_rx_queue*, %struct.mwl8k_rx_queue** %7, align 8
  %75 = getelementptr inbounds %struct.mwl8k_rx_queue, %struct.mwl8k_rx_queue* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @pci_free_consistent(i32 %69, i32 %70, i32* %73, i64 %76)
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %131

80:                                               ; preds = %56
  store i32 0, i32* %9, align 4
  br label %81

81:                                               ; preds = %127, %80
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @MWL8K_RX_DESCS, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %130

85:                                               ; preds = %81
  %86 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %6, align 8
  %87 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  store i32 %90, i32* %10, align 4
  %91 = load %struct.mwl8k_rx_queue*, %struct.mwl8k_rx_queue** %7, align 8
  %92 = getelementptr inbounds %struct.mwl8k_rx_queue, %struct.mwl8k_rx_queue* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %6, align 8
  %96 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = mul nsw i32 %94, %99
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %93, i64 %101
  %103 = bitcast i32* %102 to i8*
  store i8* %103, i8** %11, align 8
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* @MWL8K_RX_DESCS, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %85
  store i32 0, i32* %12, align 4
  br label %110

110:                                              ; preds = %109, %85
  %111 = load %struct.mwl8k_rx_queue*, %struct.mwl8k_rx_queue** %7, align 8
  %112 = getelementptr inbounds %struct.mwl8k_rx_queue, %struct.mwl8k_rx_queue* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* %10, align 4
  %116 = mul nsw i32 %114, %115
  %117 = sext i32 %116 to i64
  %118 = add nsw i64 %113, %117
  store i64 %118, i64* %13, align 8
  %119 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %6, align 8
  %120 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %119, i32 0, i32 0
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 1
  %123 = load i32 (i8*, i64)*, i32 (i8*, i64)** %122, align 8
  %124 = load i8*, i8** %11, align 8
  %125 = load i64, i64* %13, align 8
  %126 = call i32 %123(i8* %124, i64 %125)
  br label %127

127:                                              ; preds = %110
  %128 = load i32, i32* %9, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %9, align 4
  br label %81

130:                                              ; preds = %81
  store i32 0, i32* %3, align 4
  br label %131

131:                                              ; preds = %130, %66, %49
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i32* @pci_zalloc_consistent(i32, i32, i64*) #1

declare dso_local i32 @wiphy_err(i32, i8*) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
