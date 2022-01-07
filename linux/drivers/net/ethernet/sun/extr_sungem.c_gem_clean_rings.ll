; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sungem.c_gem_clean_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sungem.c_gem_clean_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gem = type { i32, %struct.sk_buff**, %struct.sk_buff**, %struct.gem_init_block* }
%struct.sk_buff = type { i32 }
%struct.gem_init_block = type { %struct.gem_txd*, %struct.gem_rxd* }
%struct.gem_txd = type { i64, i64 }
%struct.gem_rxd = type { i64, i64 }
%struct.TYPE_2__ = type { i32 }

@RX_RING_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@TX_RING_SIZE = common dso_local global i32 0, align 4
@TXDCTRL_BUFSZ = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gem*)* @gem_clean_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gem_clean_rings(%struct.gem* %0) #0 {
  %2 = alloca %struct.gem*, align 8
  %3 = alloca %struct.gem_init_block*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.gem_rxd*, align 8
  %8 = alloca %struct.gem_txd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gem* %0, %struct.gem** %2, align 8
  %11 = load %struct.gem*, %struct.gem** %2, align 8
  %12 = getelementptr inbounds %struct.gem, %struct.gem* %11, i32 0, i32 3
  %13 = load %struct.gem_init_block*, %struct.gem_init_block** %12, align 8
  store %struct.gem_init_block* %13, %struct.gem_init_block** %3, align 8
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %67, %1
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @RX_RING_SIZE, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %70

18:                                               ; preds = %14
  %19 = load %struct.gem_init_block*, %struct.gem_init_block** %3, align 8
  %20 = getelementptr inbounds %struct.gem_init_block, %struct.gem_init_block* %19, i32 0, i32 1
  %21 = load %struct.gem_rxd*, %struct.gem_rxd** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.gem_rxd, %struct.gem_rxd* %21, i64 %23
  store %struct.gem_rxd* %24, %struct.gem_rxd** %7, align 8
  %25 = load %struct.gem*, %struct.gem** %2, align 8
  %26 = getelementptr inbounds %struct.gem, %struct.gem* %25, i32 0, i32 2
  %27 = load %struct.sk_buff**, %struct.sk_buff*** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %27, i64 %29
  %31 = load %struct.sk_buff*, %struct.sk_buff** %30, align 8
  %32 = icmp ne %struct.sk_buff* %31, null
  br i1 %32, label %33, label %61

33:                                               ; preds = %18
  %34 = load %struct.gem*, %struct.gem** %2, align 8
  %35 = getelementptr inbounds %struct.gem, %struct.gem* %34, i32 0, i32 2
  %36 = load %struct.sk_buff**, %struct.sk_buff*** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %36, i64 %38
  %40 = load %struct.sk_buff*, %struct.sk_buff** %39, align 8
  store %struct.sk_buff* %40, %struct.sk_buff** %4, align 8
  %41 = load %struct.gem_rxd*, %struct.gem_rxd** %7, align 8
  %42 = getelementptr inbounds %struct.gem_rxd, %struct.gem_rxd* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @le64_to_cpu(i64 %43)
  store i32 %44, i32* %6, align 4
  %45 = load %struct.gem*, %struct.gem** %2, align 8
  %46 = getelementptr inbounds %struct.gem, %struct.gem* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.gem*, %struct.gem** %2, align 8
  %50 = call i32 @RX_BUF_ALLOC_SIZE(%struct.gem* %49)
  %51 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %52 = call i32 @pci_unmap_page(i32 %47, i32 %48, i32 %50, i32 %51)
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %53)
  %55 = load %struct.gem*, %struct.gem** %2, align 8
  %56 = getelementptr inbounds %struct.gem, %struct.gem* %55, i32 0, i32 2
  %57 = load %struct.sk_buff**, %struct.sk_buff*** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %57, i64 %59
  store %struct.sk_buff* null, %struct.sk_buff** %60, align 8
  br label %61

61:                                               ; preds = %33, %18
  %62 = load %struct.gem_rxd*, %struct.gem_rxd** %7, align 8
  %63 = getelementptr inbounds %struct.gem_rxd, %struct.gem_rxd* %62, i32 0, i32 1
  store i64 0, i64* %63, align 8
  %64 = call i32 (...) @dma_wmb()
  %65 = load %struct.gem_rxd*, %struct.gem_rxd** %7, align 8
  %66 = getelementptr inbounds %struct.gem_rxd, %struct.gem_rxd* %65, i32 0, i32 0
  store i64 0, i64* %66, align 8
  br label %67

67:                                               ; preds = %61
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %14

70:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %149, %70
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @TX_RING_SIZE, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %152

75:                                               ; preds = %71
  %76 = load %struct.gem*, %struct.gem** %2, align 8
  %77 = getelementptr inbounds %struct.gem, %struct.gem* %76, i32 0, i32 1
  %78 = load %struct.sk_buff**, %struct.sk_buff*** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %78, i64 %80
  %82 = load %struct.sk_buff*, %struct.sk_buff** %81, align 8
  %83 = icmp ne %struct.sk_buff* %82, null
  br i1 %83, label %84, label %148

84:                                               ; preds = %75
  %85 = load %struct.gem*, %struct.gem** %2, align 8
  %86 = getelementptr inbounds %struct.gem, %struct.gem* %85, i32 0, i32 1
  %87 = load %struct.sk_buff**, %struct.sk_buff*** %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %87, i64 %89
  %91 = load %struct.sk_buff*, %struct.sk_buff** %90, align 8
  store %struct.sk_buff* %91, %struct.sk_buff** %4, align 8
  %92 = load %struct.gem*, %struct.gem** %2, align 8
  %93 = getelementptr inbounds %struct.gem, %struct.gem* %92, i32 0, i32 1
  %94 = load %struct.sk_buff**, %struct.sk_buff*** %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %94, i64 %96
  store %struct.sk_buff* null, %struct.sk_buff** %97, align 8
  store i32 0, i32* %9, align 4
  br label %98

98:                                               ; preds = %142, %84
  %99 = load i32, i32* %9, align 4
  %100 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %101 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %100)
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp sle i32 %99, %103
  br i1 %104, label %105, label %145

105:                                              ; preds = %98
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* @TX_RING_SIZE, align 4
  %108 = sub nsw i32 %107, 1
  %109 = and i32 %106, %108
  store i32 %109, i32* %10, align 4
  %110 = load %struct.gem_init_block*, %struct.gem_init_block** %3, align 8
  %111 = getelementptr inbounds %struct.gem_init_block, %struct.gem_init_block* %110, i32 0, i32 0
  %112 = load %struct.gem_txd*, %struct.gem_txd** %111, align 8
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.gem_txd, %struct.gem_txd* %112, i64 %114
  store %struct.gem_txd* %115, %struct.gem_txd** %8, align 8
  %116 = load %struct.gem_txd*, %struct.gem_txd** %8, align 8
  %117 = getelementptr inbounds %struct.gem_txd, %struct.gem_txd* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @le64_to_cpu(i64 %118)
  store i32 %119, i32* %6, align 4
  %120 = load %struct.gem*, %struct.gem** %2, align 8
  %121 = getelementptr inbounds %struct.gem, %struct.gem* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* %6, align 4
  %124 = load %struct.gem_txd*, %struct.gem_txd** %8, align 8
  %125 = getelementptr inbounds %struct.gem_txd, %struct.gem_txd* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @le64_to_cpu(i64 %126)
  %128 = load i32, i32* @TXDCTRL_BUFSZ, align 4
  %129 = and i32 %127, %128
  %130 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %131 = call i32 @pci_unmap_page(i32 %122, i32 %123, i32 %129, i32 %130)
  %132 = load i32, i32* %9, align 4
  %133 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %134 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %133)
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %132, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %105
  %139 = load i32, i32* %5, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %5, align 4
  br label %141

141:                                              ; preds = %138, %105
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %9, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %9, align 4
  br label %98

145:                                              ; preds = %98
  %146 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %147 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %146)
  br label %148

148:                                              ; preds = %145, %75
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %5, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %5, align 4
  br label %71

152:                                              ; preds = %71
  ret void
}

declare dso_local i32 @le64_to_cpu(i64) #1

declare dso_local i32 @pci_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @RX_BUF_ALLOC_SIZE(%struct.gem*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @dma_wmb(...) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
