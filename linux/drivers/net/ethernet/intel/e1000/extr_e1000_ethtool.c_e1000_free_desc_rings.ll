; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_ethtool.c_e1000_free_desc_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_ethtool.c_e1000_free_desc_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { %struct.pci_dev*, %struct.e1000_rx_ring, %struct.e1000_tx_ring }
%struct.pci_dev = type { i32 }
%struct.e1000_rx_ring = type { i32, %struct.TYPE_4__*, i32*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i64, i32, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.e1000_tx_ring = type { i32, %struct.TYPE_4__*, i32*, i32, i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@E1000_RXBUFFER_2048 = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_adapter*)* @e1000_free_desc_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_free_desc_rings(%struct.e1000_adapter* %0) #0 {
  %2 = alloca %struct.e1000_adapter*, align 8
  %3 = alloca %struct.e1000_tx_ring*, align 8
  %4 = alloca %struct.e1000_rx_ring*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %2, align 8
  %7 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %7, i32 0, i32 2
  store %struct.e1000_tx_ring* %8, %struct.e1000_tx_ring** %3, align 8
  %9 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %9, i32 0, i32 1
  store %struct.e1000_rx_ring* %10, %struct.e1000_rx_ring** %4, align 8
  %11 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %11, i32 0, i32 0
  %13 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  store %struct.pci_dev* %13, %struct.pci_dev** %5, align 8
  %14 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %3, align 8
  %15 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %75

18:                                               ; preds = %1
  %19 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %3, align 8
  %20 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = icmp ne %struct.TYPE_4__* %21, null
  br i1 %22, label %23, label %75

23:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %71, %23
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %3, align 8
  %27 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %74

30:                                               ; preds = %24
  %31 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %3, align 8
  %32 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %61

40:                                               ; preds = %30
  %41 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %42 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %41, i32 0, i32 0
  %43 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %3, align 8
  %44 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %3, align 8
  %52 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @DMA_TO_DEVICE, align 4
  %60 = call i32 @dma_unmap_single(i32* %42, i64 %50, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %40, %30
  %62 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %3, align 8
  %63 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %62, i32 0, i32 1
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @dev_kfree_skb(i32 %69)
  br label %71

71:                                               ; preds = %61
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %24

74:                                               ; preds = %24
  br label %75

75:                                               ; preds = %74, %18, %1
  %76 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %4, align 8
  %77 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %131

80:                                               ; preds = %75
  %81 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %4, align 8
  %82 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %81, i32 0, i32 1
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = icmp ne %struct.TYPE_4__* %83, null
  br i1 %84, label %85, label %131

85:                                               ; preds = %80
  store i32 0, i32* %6, align 4
  br label %86

86:                                               ; preds = %127, %85
  %87 = load i32, i32* %6, align 4
  %88 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %4, align 8
  %89 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %130

92:                                               ; preds = %86
  %93 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %4, align 8
  %94 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %93, i32 0, i32 1
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %116

102:                                              ; preds = %92
  %103 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %104 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %103, i32 0, i32 0
  %105 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %4, align 8
  %106 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %105, i32 0, i32 1
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i32, i32* @E1000_RXBUFFER_2048, align 4
  %114 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %115 = call i32 @dma_unmap_single(i32* %104, i64 %112, i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %102, %92
  %117 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %4, align 8
  %118 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %117, i32 0, i32 1
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = call i32 @kfree(%struct.TYPE_4__* %125)
  br label %127

127:                                              ; preds = %116
  %128 = load i32, i32* %6, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %6, align 4
  br label %86

130:                                              ; preds = %86
  br label %131

131:                                              ; preds = %130, %80, %75
  %132 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %3, align 8
  %133 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %132, i32 0, i32 2
  %134 = load i32*, i32** %133, align 8
  %135 = icmp ne i32* %134, null
  br i1 %135, label %136, label %151

136:                                              ; preds = %131
  %137 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %138 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %137, i32 0, i32 0
  %139 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %3, align 8
  %140 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %3, align 8
  %143 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %142, i32 0, i32 2
  %144 = load i32*, i32** %143, align 8
  %145 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %3, align 8
  %146 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @dma_free_coherent(i32* %138, i32 %141, i32* %144, i32 %147)
  %149 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %3, align 8
  %150 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %149, i32 0, i32 2
  store i32* null, i32** %150, align 8
  br label %151

151:                                              ; preds = %136, %131
  %152 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %4, align 8
  %153 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = icmp ne i32* %154, null
  br i1 %155, label %156, label %171

156:                                              ; preds = %151
  %157 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %158 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %157, i32 0, i32 0
  %159 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %4, align 8
  %160 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %4, align 8
  %163 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %162, i32 0, i32 2
  %164 = load i32*, i32** %163, align 8
  %165 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %4, align 8
  %166 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @dma_free_coherent(i32* %158, i32 %161, i32* %164, i32 %167)
  %169 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %4, align 8
  %170 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %169, i32 0, i32 2
  store i32* null, i32** %170, align 8
  br label %171

171:                                              ; preds = %156, %151
  %172 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %3, align 8
  %173 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %172, i32 0, i32 1
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %173, align 8
  %175 = call i32 @kfree(%struct.TYPE_4__* %174)
  %176 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %3, align 8
  %177 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %176, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %177, align 8
  %178 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %4, align 8
  %179 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %178, i32 0, i32 1
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %179, align 8
  %181 = call i32 @kfree(%struct.TYPE_4__* %180)
  %182 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %4, align 8
  %183 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %182, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %183, align 8
  ret void
}

declare dso_local i32 @dma_unmap_single(i32*, i64, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(i32) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
