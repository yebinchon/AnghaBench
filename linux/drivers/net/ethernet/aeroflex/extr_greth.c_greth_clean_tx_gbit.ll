; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aeroflex/extr_greth.c_greth_clean_tx_gbit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aeroflex/extr_greth.c_greth_clean_tx_gbit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.greth_private = type { i64, i64, i32, %struct.greth_bd*, %struct.sk_buff**, %struct.TYPE_4__* }
%struct.greth_bd = type { i32, i32 }
%struct.sk_buff = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32* }

@GRETH_INT_TE = common dso_local global i32 0, align 4
@GRETH_INT_TX = common dso_local global i32 0, align 4
@GRETH_BD_EN = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@MAX_SKB_FRAGS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @greth_clean_tx_gbit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @greth_clean_tx_gbit(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.greth_private*, align 8
  %4 = alloca %struct.greth_bd*, align 8
  %5 = alloca %struct.greth_bd*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call %struct.greth_private* @netdev_priv(%struct.net_device* %12)
  store %struct.greth_private* %13, %struct.greth_private** %3, align 8
  %14 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %15 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %10, align 8
  br label %17

17:                                               ; preds = %128, %1
  %18 = load i64, i64* %10, align 8
  %19 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %20 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %18, %21
  br i1 %22, label %23, label %131

23:                                               ; preds = %17
  %24 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %25 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %24, i32 0, i32 4
  %26 = load %struct.sk_buff**, %struct.sk_buff*** %25, align 8
  %27 = load i64, i64* %10, align 8
  %28 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %26, i64 %27
  %29 = load %struct.sk_buff*, %struct.sk_buff** %28, align 8
  store %struct.sk_buff* %29, %struct.sk_buff** %6, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %30)
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %8, align 4
  %34 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %35 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %34, i32 0, i32 3
  %36 = load %struct.greth_bd*, %struct.greth_bd** %35, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @SKIP_TX(i64 %37, i32 %38)
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.greth_bd, %struct.greth_bd* %36, i64 %40
  store %struct.greth_bd* %41, %struct.greth_bd** %5, align 8
  %42 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %43 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %42, i32 0, i32 5
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @GRETH_INT_TE, align 4
  %48 = load i32, i32* @GRETH_INT_TX, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @GRETH_REGSAVE(i32 %46, i32 %49)
  %51 = call i32 (...) @mb()
  %52 = load %struct.greth_bd*, %struct.greth_bd** %5, align 8
  %53 = getelementptr inbounds %struct.greth_bd, %struct.greth_bd* %52, i32 0, i32 1
  %54 = call i32 @greth_read_bd(i32* %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @GRETH_BD_EN, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %23
  br label %131

60:                                               ; preds = %23
  %61 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %62 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %61, i32 0, i32 4
  %63 = load %struct.sk_buff**, %struct.sk_buff*** %62, align 8
  %64 = load i64, i64* %10, align 8
  %65 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %63, i64 %64
  store %struct.sk_buff* null, %struct.sk_buff** %65, align 8
  %66 = load %struct.net_device*, %struct.net_device** %2, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @greth_update_tx_stats(%struct.net_device* %66, i32 %67)
  %69 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.net_device*, %struct.net_device** %2, align 8
  %73 = getelementptr inbounds %struct.net_device, %struct.net_device* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %76, %71
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %74, align 4
  %79 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %80 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %79, i32 0, i32 3
  %81 = load %struct.greth_bd*, %struct.greth_bd** %80, align 8
  %82 = load i64, i64* %10, align 8
  %83 = getelementptr inbounds %struct.greth_bd, %struct.greth_bd* %81, i64 %82
  store %struct.greth_bd* %83, %struct.greth_bd** %4, align 8
  %84 = load i64, i64* %10, align 8
  %85 = call i64 @NEXT_TX(i64 %84)
  store i64 %85, i64* %10, align 8
  %86 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %87 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.greth_bd*, %struct.greth_bd** %4, align 8
  %90 = getelementptr inbounds %struct.greth_bd, %struct.greth_bd* %89, i32 0, i32 0
  %91 = call i32 @greth_read_bd(i32* %90)
  %92 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %93 = call i32 @skb_headlen(%struct.sk_buff* %92)
  %94 = load i32, i32* @DMA_TO_DEVICE, align 4
  %95 = call i32 @dma_unmap_single(i32 %88, i32 %91, i32 %93, i32 %94)
  store i32 0, i32* %9, align 4
  br label %96

96:                                               ; preds = %125, %60
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %128

100:                                              ; preds = %96
  %101 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %102 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %101)
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  store i32* %107, i32** %11, align 8
  %108 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %109 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %108, i32 0, i32 3
  %110 = load %struct.greth_bd*, %struct.greth_bd** %109, align 8
  %111 = load i64, i64* %10, align 8
  %112 = getelementptr inbounds %struct.greth_bd, %struct.greth_bd* %110, i64 %111
  store %struct.greth_bd* %112, %struct.greth_bd** %4, align 8
  %113 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %114 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.greth_bd*, %struct.greth_bd** %4, align 8
  %117 = getelementptr inbounds %struct.greth_bd, %struct.greth_bd* %116, i32 0, i32 0
  %118 = call i32 @greth_read_bd(i32* %117)
  %119 = load i32*, i32** %11, align 8
  %120 = call i32 @skb_frag_size(i32* %119)
  %121 = load i32, i32* @DMA_TO_DEVICE, align 4
  %122 = call i32 @dma_unmap_page(i32 %115, i32 %118, i32 %120, i32 %121)
  %123 = load i64, i64* %10, align 8
  %124 = call i64 @NEXT_TX(i64 %123)
  store i64 %124, i64* %10, align 8
  br label %125

125:                                              ; preds = %100
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %9, align 4
  br label %96

128:                                              ; preds = %96
  %129 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %130 = call i32 @dev_kfree_skb(%struct.sk_buff* %129)
  br label %17

131:                                              ; preds = %59, %17
  %132 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %133 = icmp ne %struct.sk_buff* %132, null
  br i1 %133, label %134, label %155

134:                                              ; preds = %131
  %135 = call i32 (...) @wmb()
  %136 = load i64, i64* %10, align 8
  %137 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %138 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %137, i32 0, i32 0
  store i64 %136, i64* %138, align 8
  %139 = load %struct.net_device*, %struct.net_device** %2, align 8
  %140 = call i64 @netif_queue_stopped(%struct.net_device* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %154

142:                                              ; preds = %134
  %143 = load i64, i64* %10, align 8
  %144 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %145 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = call i64 @greth_num_free_bds(i64 %143, i64 %146)
  %148 = load i64, i64* @MAX_SKB_FRAGS, align 8
  %149 = add nsw i64 %148, 1
  %150 = icmp sgt i64 %147, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %142
  %152 = load %struct.net_device*, %struct.net_device** %2, align 8
  %153 = call i32 @netif_wake_queue(%struct.net_device* %152)
  br label %154

154:                                              ; preds = %151, %142, %134
  br label %155

155:                                              ; preds = %154, %131
  ret void
}

declare dso_local %struct.greth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @SKIP_TX(i64, i32) #1

declare dso_local i32 @GRETH_REGSAVE(i32, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @greth_read_bd(i32*) #1

declare dso_local i32 @greth_update_tx_stats(%struct.net_device*, i32) #1

declare dso_local i64 @NEXT_TX(i64) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i64 @greth_num_free_bds(i64, i64) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
