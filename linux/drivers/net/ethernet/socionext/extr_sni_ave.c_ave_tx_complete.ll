; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_sni_ave.c_ave_tx_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_sni_ave.c_ave_tx_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ave_private = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32* }

@AVE_DESCID_TX = common dso_local global i32 0, align 4
@AVE_STS_OWN = common dso_local global i32 0, align 4
@AVE_STS_OK = common dso_local global i32 0, align 4
@AVE_STS_PKTLEN_TX_MASK = common dso_local global i32 0, align 4
@AVE_STS_LAST = common dso_local global i32 0, align 4
@AVE_STS_OWC = common dso_local global i32 0, align 4
@AVE_STS_EC = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ave_tx_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ave_tx_complete(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ave_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call %struct.ave_private* @netdev_priv(%struct.net_device* %11)
  store %struct.ave_private* %12, %struct.ave_private** %3, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.ave_private*, %struct.ave_private** %3, align 8
  %14 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %4, align 4
  %17 = load %struct.ave_private*, %struct.ave_private** %3, align 8
  %18 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %5, align 4
  %21 = load %struct.ave_private*, %struct.ave_private** %3, align 8
  %22 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %125, %1
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %130

29:                                               ; preds = %25
  %30 = load %struct.net_device*, %struct.net_device** %2, align 8
  %31 = load i32, i32* @AVE_DESCID_TX, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @ave_desc_read_cmdsts(%struct.net_device* %30, i32 %31, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @AVE_STS_OWN, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  br label %130

39:                                               ; preds = %29
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @AVE_STS_OK, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %39
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @AVE_STS_PKTLEN_TX_MASK, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* %10, align 4
  %49 = add i32 %48, %47
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @AVE_STS_LAST, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %44
  %55 = load i32, i32* %9, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %54, %44
  br label %83

58:                                               ; preds = %39
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @AVE_STS_LAST, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %82

63:                                               ; preds = %58
  %64 = load %struct.ave_private*, %struct.ave_private** %3, align 8
  %65 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @AVE_STS_OWC, align 4
  %71 = load i32, i32* @AVE_STS_EC, align 4
  %72 = or i32 %70, %71
  %73 = and i32 %69, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %63
  %76 = load %struct.ave_private*, %struct.ave_private** %3, align 8
  %77 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %75, %63
  br label %82

82:                                               ; preds = %81, %58
  br label %83

83:                                               ; preds = %82, %57
  %84 = load %struct.ave_private*, %struct.ave_private** %3, align 8
  %85 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 3
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %125

94:                                               ; preds = %83
  %95 = load %struct.net_device*, %struct.net_device** %2, align 8
  %96 = load %struct.ave_private*, %struct.ave_private** %3, align 8
  %97 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 3
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i64 %101
  %103 = load i32, i32* @DMA_TO_DEVICE, align 4
  %104 = call i32 @ave_dma_unmap(%struct.net_device* %95, %struct.TYPE_6__* %102, i32 %103)
  %105 = load %struct.ave_private*, %struct.ave_private** %3, align 8
  %106 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 3
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @dev_consume_skb_any(i32* %113)
  %115 = load %struct.ave_private*, %struct.ave_private** %3, align 8
  %116 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 3
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = load i32, i32* %5, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  store i32* null, i32** %122, align 8
  %123 = load i32, i32* %8, align 4
  %124 = add i32 %123, 1
  store i32 %124, i32* %8, align 4
  br label %125

125:                                              ; preds = %94, %83
  %126 = load i32, i32* %5, align 4
  %127 = add nsw i32 %126, 1
  %128 = load i32, i32* %6, align 4
  %129 = srem i32 %127, %128
  store i32 %129, i32* %5, align 4
  br label %25

130:                                              ; preds = %38, %25
  %131 = load i32, i32* %5, align 4
  %132 = load %struct.ave_private*, %struct.ave_private** %3, align 8
  %133 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  store i32 %131, i32* %134, align 4
  %135 = load %struct.ave_private*, %struct.ave_private** %3, align 8
  %136 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 2
  %138 = call i32 @u64_stats_update_begin(i32* %137)
  %139 = load i32, i32* %9, align 4
  %140 = load %struct.ave_private*, %struct.ave_private** %3, align 8
  %141 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = add i32 %143, %139
  store i32 %144, i32* %142, align 8
  %145 = load i32, i32* %10, align 4
  %146 = load %struct.ave_private*, %struct.ave_private** %3, align 8
  %147 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = add i32 %149, %145
  store i32 %150, i32* %148, align 4
  %151 = load %struct.ave_private*, %struct.ave_private** %3, align 8
  %152 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 2
  %154 = call i32 @u64_stats_update_end(i32* %153)
  %155 = load %struct.net_device*, %struct.net_device** %2, align 8
  %156 = call i32 @netif_queue_stopped(%struct.net_device* %155)
  %157 = call i64 @unlikely(i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %130
  %160 = load i32, i32* %8, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = load %struct.net_device*, %struct.net_device** %2, align 8
  %164 = call i32 @netif_wake_queue(%struct.net_device* %163)
  br label %165

165:                                              ; preds = %162, %159, %130
  %166 = load i32, i32* %8, align 4
  ret i32 %166
}

declare dso_local %struct.ave_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ave_desc_read_cmdsts(%struct.net_device*, i32, i32) #1

declare dso_local i32 @ave_dma_unmap(%struct.net_device*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @dev_consume_skb_any(i32*) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
