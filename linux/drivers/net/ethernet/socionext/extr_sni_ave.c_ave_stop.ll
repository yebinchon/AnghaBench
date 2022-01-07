; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_sni_ave.c_ave_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_sni_ave.c_ave_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ave_private = type { %struct.TYPE_6__, %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_7__*, i64, i64 }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_7__*, i64, i64 }

@AVE_DESC_STOP = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ave_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ave_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ave_private*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.ave_private* @netdev_priv(%struct.net_device* %5)
  store %struct.ave_private* %6, %struct.ave_private** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call i32 @ave_irq_disable_all(%struct.net_device* %7)
  %9 = load %struct.ave_private*, %struct.ave_private** %3, align 8
  %10 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @disable_irq(i32 %11)
  %13 = load %struct.ave_private*, %struct.ave_private** %3, align 8
  %14 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = call i32 @free_irq(i32 %15, %struct.net_device* %16)
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = call i32 @netif_tx_disable(%struct.net_device* %18)
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @phy_stop(i32 %22)
  %24 = load %struct.ave_private*, %struct.ave_private** %3, align 8
  %25 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %24, i32 0, i32 3
  %26 = call i32 @napi_disable(i32* %25)
  %27 = load %struct.ave_private*, %struct.ave_private** %3, align 8
  %28 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %27, i32 0, i32 2
  %29 = call i32 @napi_disable(i32* %28)
  %30 = load %struct.net_device*, %struct.net_device** %2, align 8
  %31 = load i32, i32* @AVE_DESC_STOP, align 4
  %32 = call i32 @ave_desc_switch(%struct.net_device* %30, i32 %31)
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %81, %1
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.ave_private*, %struct.ave_private** %3, align 8
  %36 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %34, %38
  br i1 %39, label %40, label %84

40:                                               ; preds = %33
  %41 = load %struct.ave_private*, %struct.ave_private** %3, align 8
  %42 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %40
  br label %81

52:                                               ; preds = %40
  %53 = load %struct.net_device*, %struct.net_device** %2, align 8
  %54 = load %struct.ave_private*, %struct.ave_private** %3, align 8
  %55 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i64 %59
  %61 = load i32, i32* @DMA_TO_DEVICE, align 4
  %62 = call i32 @ave_dma_unmap(%struct.net_device* %53, %struct.TYPE_7__* %60, i32 %61)
  %63 = load %struct.ave_private*, %struct.ave_private** %3, align 8
  %64 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @dev_kfree_skb_any(i32* %71)
  %73 = load %struct.ave_private*, %struct.ave_private** %3, align 8
  %74 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  store i32* null, i32** %80, align 8
  br label %81

81:                                               ; preds = %52, %51
  %82 = load i32, i32* %4, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %4, align 4
  br label %33

84:                                               ; preds = %33
  %85 = load %struct.ave_private*, %struct.ave_private** %3, align 8
  %86 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 3
  store i64 0, i64* %87, align 8
  %88 = load %struct.ave_private*, %struct.ave_private** %3, align 8
  %89 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 2
  store i64 0, i64* %90, align 8
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %139, %84
  %92 = load i32, i32* %4, align 4
  %93 = load %struct.ave_private*, %struct.ave_private** %3, align 8
  %94 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp slt i32 %92, %96
  br i1 %97, label %98, label %142

98:                                               ; preds = %91
  %99 = load %struct.ave_private*, %struct.ave_private** %3, align 8
  %100 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = load i32, i32* %4, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %110, label %109

109:                                              ; preds = %98
  br label %139

110:                                              ; preds = %98
  %111 = load %struct.net_device*, %struct.net_device** %2, align 8
  %112 = load %struct.ave_private*, %struct.ave_private** %3, align 8
  %113 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = load i32, i32* %4, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i64 %117
  %119 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %120 = call i32 @ave_dma_unmap(%struct.net_device* %111, %struct.TYPE_7__* %118, i32 %119)
  %121 = load %struct.ave_private*, %struct.ave_private** %3, align 8
  %122 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  %125 = load i32, i32* %4, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = call i32 @dev_kfree_skb_any(i32* %129)
  %131 = load %struct.ave_private*, %struct.ave_private** %3, align 8
  %132 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  %135 = load i32, i32* %4, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  store i32* null, i32** %138, align 8
  br label %139

139:                                              ; preds = %110, %109
  %140 = load i32, i32* %4, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %4, align 4
  br label %91

142:                                              ; preds = %91
  %143 = load %struct.ave_private*, %struct.ave_private** %3, align 8
  %144 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 3
  store i64 0, i64* %145, align 8
  %146 = load %struct.ave_private*, %struct.ave_private** %3, align 8
  %147 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 2
  store i64 0, i64* %148, align 8
  %149 = load %struct.ave_private*, %struct.ave_private** %3, align 8
  %150 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %151, align 8
  %153 = call i32 @kfree(%struct.TYPE_7__* %152)
  %154 = load %struct.ave_private*, %struct.ave_private** %3, align 8
  %155 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 1
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %156, align 8
  %158 = call i32 @kfree(%struct.TYPE_7__* %157)
  ret i32 0
}

declare dso_local %struct.ave_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ave_irq_disable_all(%struct.net_device*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @netif_tx_disable(%struct.net_device*) #1

declare dso_local i32 @phy_stop(i32) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @ave_desc_switch(%struct.net_device*, i32) #1

declare dso_local i32 @ave_dma_unmap(%struct.net_device*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

declare dso_local i32 @kfree(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
