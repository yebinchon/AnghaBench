; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_p54pci.c_p54p_refill_rx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_p54pci.c_p54p_refill_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.p54p_priv* }
%struct.p54p_priv = type { %struct.TYPE_4__, %struct.TYPE_5__*, %struct.p54p_ring_control* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.p54p_ring_control = type { i8** }
%struct.p54p_desc = type { i64, i32, i64, i8* }
%struct.sk_buff = type { i32 }

@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"RX DMA Mapping error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, %struct.p54p_desc*, i64, %struct.sk_buff**, i64)* @p54p_refill_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p54p_refill_rx_ring(%struct.ieee80211_hw* %0, i32 %1, %struct.p54p_desc* %2, i64 %3, %struct.sk_buff** %4, i64 %5) #0 {
  %7 = alloca %struct.ieee80211_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.p54p_desc*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.sk_buff**, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.p54p_priv*, align 8
  %14 = alloca %struct.p54p_ring_control*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.p54p_desc*, align 8
  %19 = alloca %struct.sk_buff*, align 8
  %20 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.p54p_desc* %2, %struct.p54p_desc** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.sk_buff** %4, %struct.sk_buff*** %11, align 8
  store i64 %5, i64* %12, align 8
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %22 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %21, i32 0, i32 0
  %23 = load %struct.p54p_priv*, %struct.p54p_priv** %22, align 8
  store %struct.p54p_priv* %23, %struct.p54p_priv** %13, align 8
  %24 = load %struct.p54p_priv*, %struct.p54p_priv** %13, align 8
  %25 = getelementptr inbounds %struct.p54p_priv, %struct.p54p_priv* %24, i32 0, i32 2
  %26 = load %struct.p54p_ring_control*, %struct.p54p_ring_control** %25, align 8
  store %struct.p54p_ring_control* %26, %struct.p54p_ring_control** %14, align 8
  %27 = load %struct.p54p_ring_control*, %struct.p54p_ring_control** %14, align 8
  %28 = getelementptr inbounds %struct.p54p_ring_control, %struct.p54p_ring_control* %27, i32 0, i32 0
  %29 = load i8**, i8*** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @le32_to_cpu(i8* %33)
  store i64 %34, i64* %16, align 8
  %35 = load i64, i64* %16, align 8
  store i64 %35, i64* %15, align 8
  %36 = load i64, i64* %12, align 8
  %37 = load i64, i64* %15, align 8
  %38 = sub i64 %37, %36
  store i64 %38, i64* %15, align 8
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* %15, align 8
  %41 = sub i64 %39, %40
  store i64 %41, i64* %15, align 8
  %42 = load i64, i64* %16, align 8
  %43 = load i64, i64* %10, align 8
  %44 = urem i64 %42, %43
  store i64 %44, i64* %17, align 8
  br label %45

45:                                               ; preds = %115, %6
  %46 = load i64, i64* %15, align 8
  %47 = add i64 %46, -1
  store i64 %47, i64* %15, align 8
  %48 = icmp ugt i64 %46, 1
  br i1 %48, label %49, label %123

49:                                               ; preds = %45
  %50 = load %struct.p54p_desc*, %struct.p54p_desc** %9, align 8
  %51 = load i64, i64* %17, align 8
  %52 = getelementptr inbounds %struct.p54p_desc, %struct.p54p_desc* %50, i64 %51
  store %struct.p54p_desc* %52, %struct.p54p_desc** %18, align 8
  %53 = load %struct.p54p_desc*, %struct.p54p_desc** %18, align 8
  %54 = getelementptr inbounds %struct.p54p_desc, %struct.p54p_desc* %53, i32 0, i32 3
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %115, label %57

57:                                               ; preds = %49
  %58 = load %struct.p54p_priv*, %struct.p54p_priv** %13, align 8
  %59 = getelementptr inbounds %struct.p54p_priv, %struct.p54p_priv* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, 32
  %63 = call %struct.sk_buff* @dev_alloc_skb(i64 %62)
  store %struct.sk_buff* %63, %struct.sk_buff** %19, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %65 = icmp ne %struct.sk_buff* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %57
  br label %123

67:                                               ; preds = %57
  %68 = load %struct.p54p_priv*, %struct.p54p_priv** %13, align 8
  %69 = getelementptr inbounds %struct.p54p_priv, %struct.p54p_priv* %68, i32 0, i32 1
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %72 = call i32 @skb_tail_pointer(%struct.sk_buff* %71)
  %73 = load %struct.p54p_priv*, %struct.p54p_priv** %13, align 8
  %74 = getelementptr inbounds %struct.p54p_priv, %struct.p54p_priv* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, 32
  %78 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %79 = call i64 @pci_map_single(%struct.TYPE_5__* %70, i32 %72, i64 %77, i32 %78)
  store i64 %79, i64* %20, align 8
  %80 = load %struct.p54p_priv*, %struct.p54p_priv** %13, align 8
  %81 = getelementptr inbounds %struct.p54p_priv, %struct.p54p_priv* %80, i32 0, i32 1
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = load i64, i64* %20, align 8
  %84 = call i64 @pci_dma_mapping_error(%struct.TYPE_5__* %82, i64 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %67
  %87 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %88 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %87)
  %89 = load %struct.p54p_priv*, %struct.p54p_priv** %13, align 8
  %90 = getelementptr inbounds %struct.p54p_priv, %struct.p54p_priv* %89, i32 0, i32 1
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = call i32 @dev_err(i32* %92, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %123

94:                                               ; preds = %67
  %95 = load i64, i64* %20, align 8
  %96 = call i8* @cpu_to_le32(i64 %95)
  %97 = load %struct.p54p_desc*, %struct.p54p_desc** %18, align 8
  %98 = getelementptr inbounds %struct.p54p_desc, %struct.p54p_desc* %97, i32 0, i32 3
  store i8* %96, i8** %98, align 8
  %99 = load %struct.p54p_desc*, %struct.p54p_desc** %18, align 8
  %100 = getelementptr inbounds %struct.p54p_desc, %struct.p54p_desc* %99, i32 0, i32 2
  store i64 0, i64* %100, align 8
  %101 = load %struct.p54p_priv*, %struct.p54p_priv** %13, align 8
  %102 = getelementptr inbounds %struct.p54p_priv, %struct.p54p_priv* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %104, 32
  %106 = call i32 @cpu_to_le16(i64 %105)
  %107 = load %struct.p54p_desc*, %struct.p54p_desc** %18, align 8
  %108 = getelementptr inbounds %struct.p54p_desc, %struct.p54p_desc* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 8
  %109 = load %struct.p54p_desc*, %struct.p54p_desc** %18, align 8
  %110 = getelementptr inbounds %struct.p54p_desc, %struct.p54p_desc* %109, i32 0, i32 0
  store i64 0, i64* %110, align 8
  %111 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %112 = load %struct.sk_buff**, %struct.sk_buff*** %11, align 8
  %113 = load i64, i64* %17, align 8
  %114 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %112, i64 %113
  store %struct.sk_buff* %111, %struct.sk_buff** %114, align 8
  br label %115

115:                                              ; preds = %94, %49
  %116 = load i64, i64* %17, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %17, align 8
  %118 = load i64, i64* %16, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %16, align 8
  %120 = load i64, i64* %10, align 8
  %121 = load i64, i64* %17, align 8
  %122 = urem i64 %121, %120
  store i64 %122, i64* %17, align 8
  br label %45

123:                                              ; preds = %86, %66, %45
  %124 = call i32 (...) @wmb()
  %125 = load i64, i64* %16, align 8
  %126 = call i8* @cpu_to_le32(i64 %125)
  %127 = load %struct.p54p_ring_control*, %struct.p54p_ring_control** %14, align 8
  %128 = getelementptr inbounds %struct.p54p_ring_control, %struct.p54p_ring_control* %127, i32 0, i32 0
  %129 = load i8**, i8*** %128, align 8
  %130 = load i32, i32* %8, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8*, i8** %129, i64 %131
  store i8* %126, i8** %132, align 8
  ret void
}

declare dso_local i64 @le32_to_cpu(i8*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i64 @pci_map_single(%struct.TYPE_5__*, i32, i64, i32) #1

declare dso_local i32 @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i64 @pci_dma_mapping_error(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i32 @cpu_to_le16(i64) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
