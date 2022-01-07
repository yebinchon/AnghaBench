; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_p54pci.c_p54p_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_p54pci.c_p54p_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.p54p_priv* }
%struct.p54p_priv = type { i32, %struct.sk_buff**, %struct.TYPE_3__*, %struct.p54p_ring_control* }
%struct.TYPE_3__ = type { i32 }
%struct.p54p_ring_control = type { i8**, %struct.p54p_desc* }
%struct.p54p_desc = type { i32, i32, i32, i8* }
%struct.sk_buff = type { i32, i64 }
%struct.p54_hdr = type { i32 }

@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"TX DMA mapping error\0A\00", align 1
@dev_int = common dso_local global i32 0, align 4
@ISL38XX_DEV_INT_UPDATE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.sk_buff*)* @p54p_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p54p_tx(%struct.ieee80211_hw* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.p54p_priv*, align 8
  %7 = alloca %struct.p54p_ring_control*, align 8
  %8 = alloca %struct.p54p_desc*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %13 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %12, i32 0, i32 0
  %14 = load %struct.p54p_priv*, %struct.p54p_priv** %13, align 8
  store %struct.p54p_priv* %14, %struct.p54p_priv** %6, align 8
  %15 = load %struct.p54p_priv*, %struct.p54p_priv** %6, align 8
  %16 = getelementptr inbounds %struct.p54p_priv, %struct.p54p_priv* %15, i32 0, i32 3
  %17 = load %struct.p54p_ring_control*, %struct.p54p_ring_control** %16, align 8
  store %struct.p54p_ring_control* %17, %struct.p54p_ring_control** %7, align 8
  %18 = load %struct.p54p_priv*, %struct.p54p_priv** %6, align 8
  %19 = getelementptr inbounds %struct.p54p_priv, %struct.p54p_priv* %18, i32 0, i32 0
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.p54p_ring_control*, %struct.p54p_ring_control** %7, align 8
  %23 = getelementptr inbounds %struct.p54p_ring_control, %struct.p54p_ring_control* %22, i32 0, i32 0
  %24 = load i8**, i8*** %23, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 1
  %26 = load i8*, i8** %25, align 8
  %27 = call i64 @le32_to_cpu(i8* %26)
  store i64 %27, i64* %10, align 8
  %28 = load i64, i64* %10, align 8
  %29 = load %struct.p54p_ring_control*, %struct.p54p_ring_control** %7, align 8
  %30 = getelementptr inbounds %struct.p54p_ring_control, %struct.p54p_ring_control* %29, i32 0, i32 1
  %31 = load %struct.p54p_desc*, %struct.p54p_desc** %30, align 8
  %32 = call i64 @ARRAY_SIZE(%struct.p54p_desc* %31)
  %33 = urem i64 %28, %32
  store i64 %33, i64* %11, align 8
  %34 = load %struct.p54p_priv*, %struct.p54p_priv** %6, align 8
  %35 = getelementptr inbounds %struct.p54p_priv, %struct.p54p_priv* %34, i32 0, i32 2
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %44 = call i64 @pci_map_single(%struct.TYPE_3__* %36, i64 %39, i32 %42, i32 %43)
  store i64 %44, i64* %9, align 8
  %45 = load %struct.p54p_priv*, %struct.p54p_priv** %6, align 8
  %46 = getelementptr inbounds %struct.p54p_priv, %struct.p54p_priv* %45, i32 0, i32 2
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = load i64, i64* %9, align 8
  %49 = call i64 @pci_dma_mapping_error(%struct.TYPE_3__* %47, i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %2
  %52 = load %struct.p54p_priv*, %struct.p54p_priv** %6, align 8
  %53 = getelementptr inbounds %struct.p54p_priv, %struct.p54p_priv* %52, i32 0, i32 0
  %54 = load i64, i64* %5, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  %56 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = call i32 @p54_free_skb(%struct.ieee80211_hw* %56, %struct.sk_buff* %57)
  %59 = load %struct.p54p_priv*, %struct.p54p_priv** %6, align 8
  %60 = getelementptr inbounds %struct.p54p_priv, %struct.p54p_priv* %59, i32 0, i32 2
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = call i32 @dev_err(i32* %62, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %114

64:                                               ; preds = %2
  %65 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %66 = load %struct.p54p_priv*, %struct.p54p_priv** %6, align 8
  %67 = getelementptr inbounds %struct.p54p_priv, %struct.p54p_priv* %66, i32 0, i32 1
  %68 = load %struct.sk_buff**, %struct.sk_buff*** %67, align 8
  %69 = load i64, i64* %11, align 8
  %70 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %68, i64 %69
  store %struct.sk_buff* %65, %struct.sk_buff** %70, align 8
  %71 = load %struct.p54p_ring_control*, %struct.p54p_ring_control** %7, align 8
  %72 = getelementptr inbounds %struct.p54p_ring_control, %struct.p54p_ring_control* %71, i32 0, i32 1
  %73 = load %struct.p54p_desc*, %struct.p54p_desc** %72, align 8
  %74 = load i64, i64* %11, align 8
  %75 = getelementptr inbounds %struct.p54p_desc, %struct.p54p_desc* %73, i64 %74
  store %struct.p54p_desc* %75, %struct.p54p_desc** %8, align 8
  %76 = load i64, i64* %9, align 8
  %77 = call i8* @cpu_to_le32(i64 %76)
  %78 = load %struct.p54p_desc*, %struct.p54p_desc** %8, align 8
  %79 = getelementptr inbounds %struct.p54p_desc, %struct.p54p_desc* %78, i32 0, i32 3
  store i8* %77, i8** %79, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %81 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to %struct.p54_hdr*
  %84 = getelementptr inbounds %struct.p54_hdr, %struct.p54_hdr* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.p54p_desc*, %struct.p54p_desc** %8, align 8
  %87 = getelementptr inbounds %struct.p54p_desc, %struct.p54p_desc* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %89 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @cpu_to_le16(i32 %90)
  %92 = load %struct.p54p_desc*, %struct.p54p_desc** %8, align 8
  %93 = getelementptr inbounds %struct.p54p_desc, %struct.p54p_desc* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load %struct.p54p_desc*, %struct.p54p_desc** %8, align 8
  %95 = getelementptr inbounds %struct.p54p_desc, %struct.p54p_desc* %94, i32 0, i32 0
  store i32 0, i32* %95, align 8
  %96 = call i32 (...) @wmb()
  %97 = load i64, i64* %10, align 8
  %98 = add i64 %97, 1
  %99 = call i8* @cpu_to_le32(i64 %98)
  %100 = load %struct.p54p_ring_control*, %struct.p54p_ring_control** %7, align 8
  %101 = getelementptr inbounds %struct.p54p_ring_control, %struct.p54p_ring_control* %100, i32 0, i32 0
  %102 = load i8**, i8*** %101, align 8
  %103 = getelementptr inbounds i8*, i8** %102, i64 1
  store i8* %99, i8** %103, align 8
  %104 = load %struct.p54p_priv*, %struct.p54p_priv** %6, align 8
  %105 = getelementptr inbounds %struct.p54p_priv, %struct.p54p_priv* %104, i32 0, i32 0
  %106 = load i64, i64* %5, align 8
  %107 = call i32 @spin_unlock_irqrestore(i32* %105, i64 %106)
  %108 = load i32, i32* @dev_int, align 4
  %109 = load i64, i64* @ISL38XX_DEV_INT_UPDATE, align 8
  %110 = call i8* @cpu_to_le32(i64 %109)
  %111 = call i32 @P54P_WRITE(i32 %108, i8* %110)
  %112 = load i32, i32* @dev_int, align 4
  %113 = call i32 @P54P_READ(i32 %112)
  br label %114

114:                                              ; preds = %64, %51
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @le32_to_cpu(i8*) #1

declare dso_local i64 @ARRAY_SIZE(%struct.p54p_desc*) #1

declare dso_local i64 @pci_map_single(%struct.TYPE_3__*, i64, i32, i32) #1

declare dso_local i64 @pci_dma_mapping_error(%struct.TYPE_3__*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @p54_free_skb(%struct.ieee80211_hw*, %struct.sk_buff*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @P54P_WRITE(i32, i8*) #1

declare dso_local i32 @P54P_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
