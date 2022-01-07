; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_sh_eth.c_sh_eth_ring_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_sh_eth.c_sh_eth_ring_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sh_eth_private = type { i32, i32, i64*, %struct.sh_eth_rxdesc*, i32, %struct.TYPE_2__*, i64*, %struct.sh_eth_rxdesc*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sh_eth_rxdesc = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @sh_eth_ring_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_eth_ring_free(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.sh_eth_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sh_eth_rxdesc*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.sh_eth_private* @netdev_priv(%struct.net_device* %7)
  store %struct.sh_eth_private* %8, %struct.sh_eth_private** %3, align 8
  %9 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %10 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %9, i32 0, i32 7
  %11 = load %struct.sh_eth_rxdesc*, %struct.sh_eth_rxdesc** %10, align 8
  %12 = icmp ne %struct.sh_eth_rxdesc* %11, null
  br i1 %12, label %13, label %75

13:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %51, %13
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %17 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %54

20:                                               ; preds = %14
  %21 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %22 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %21, i32 0, i32 6
  %23 = load i64*, i64** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %50

29:                                               ; preds = %20
  %30 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %31 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %30, i32 0, i32 7
  %32 = load %struct.sh_eth_rxdesc*, %struct.sh_eth_rxdesc** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.sh_eth_rxdesc, %struct.sh_eth_rxdesc* %32, i64 %34
  store %struct.sh_eth_rxdesc* %35, %struct.sh_eth_rxdesc** %6, align 8
  %36 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %37 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %36, i32 0, i32 5
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load %struct.sh_eth_rxdesc*, %struct.sh_eth_rxdesc** %6, align 8
  %41 = getelementptr inbounds %struct.sh_eth_rxdesc, %struct.sh_eth_rxdesc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le32_to_cpu(i32 %42)
  %44 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %45 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %44, i32 0, i32 9
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ALIGN(i32 %46, i32 32)
  %48 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %49 = call i32 @dma_unmap_single(i32* %39, i32 %43, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %29, %20
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %14

54:                                               ; preds = %14
  %55 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %56 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = mul i64 4, %58
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %4, align 4
  %61 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %62 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %61, i32 0, i32 5
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %4, align 4
  %66 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %67 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %66, i32 0, i32 7
  %68 = load %struct.sh_eth_rxdesc*, %struct.sh_eth_rxdesc** %67, align 8
  %69 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %70 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %69, i32 0, i32 8
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @dma_free_coherent(i32* %64, i32 %65, %struct.sh_eth_rxdesc* %68, i32 %71)
  %73 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %74 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %73, i32 0, i32 7
  store %struct.sh_eth_rxdesc* null, %struct.sh_eth_rxdesc** %74, align 8
  br label %75

75:                                               ; preds = %54, %1
  %76 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %77 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %76, i32 0, i32 6
  %78 = load i64*, i64** %77, align 8
  %79 = icmp ne i64* %78, null
  br i1 %79, label %80, label %100

80:                                               ; preds = %75
  store i32 0, i32* %5, align 4
  br label %81

81:                                               ; preds = %96, %80
  %82 = load i32, i32* %5, align 4
  %83 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %84 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %99

87:                                               ; preds = %81
  %88 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %89 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %88, i32 0, i32 6
  %90 = load i64*, i64** %89, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @dev_kfree_skb(i64 %94)
  br label %96

96:                                               ; preds = %87
  %97 = load i32, i32* %5, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %5, align 4
  br label %81

99:                                               ; preds = %81
  br label %100

100:                                              ; preds = %99, %75
  %101 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %102 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %101, i32 0, i32 6
  %103 = load i64*, i64** %102, align 8
  %104 = call i32 @kfree(i64* %103)
  %105 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %106 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %105, i32 0, i32 6
  store i64* null, i64** %106, align 8
  %107 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %108 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %107, i32 0, i32 3
  %109 = load %struct.sh_eth_rxdesc*, %struct.sh_eth_rxdesc** %108, align 8
  %110 = icmp ne %struct.sh_eth_rxdesc* %109, null
  br i1 %110, label %111, label %134

111:                                              ; preds = %100
  %112 = load %struct.net_device*, %struct.net_device** %2, align 8
  %113 = call i32 @sh_eth_tx_free(%struct.net_device* %112, i32 0)
  %114 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %115 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = sext i32 %116 to i64
  %118 = mul i64 4, %117
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %4, align 4
  %120 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %121 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %120, i32 0, i32 5
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i32, i32* %4, align 4
  %125 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %126 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %125, i32 0, i32 3
  %127 = load %struct.sh_eth_rxdesc*, %struct.sh_eth_rxdesc** %126, align 8
  %128 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %129 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @dma_free_coherent(i32* %123, i32 %124, %struct.sh_eth_rxdesc* %127, i32 %130)
  %132 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %133 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %132, i32 0, i32 3
  store %struct.sh_eth_rxdesc* null, %struct.sh_eth_rxdesc** %133, align 8
  br label %134

134:                                              ; preds = %111, %100
  %135 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %136 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %135, i32 0, i32 2
  %137 = load i64*, i64** %136, align 8
  %138 = call i32 @kfree(i64* %137)
  %139 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %140 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %139, i32 0, i32 2
  store i64* null, i64** %140, align 8
  ret void
}

declare dso_local %struct.sh_eth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, %struct.sh_eth_rxdesc*, i32) #1

declare dso_local i32 @dev_kfree_skb(i64) #1

declare dso_local i32 @kfree(i64*) #1

declare dso_local i32 @sh_eth_tx_free(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
