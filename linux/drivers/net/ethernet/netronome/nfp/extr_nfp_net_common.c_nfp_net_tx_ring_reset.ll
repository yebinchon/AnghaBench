; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_tx_ring_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_tx_ring_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net_dp = type { i32, i32 }
%struct.nfp_net_tx_ring = type { i64, i64, i32, i64, i64, i64, i32, i32, %struct.nfp_net_tx_buf* }
%struct.nfp_net_tx_buf = type { i32, %struct.sk_buff*, i64 }
%struct.sk_buff = type { i32 }
%struct.netdev_queue = type { i32 }
%struct.TYPE_2__ = type { i32, i32* }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_net_dp*, %struct.nfp_net_tx_ring*)* @nfp_net_tx_ring_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_net_tx_ring_reset(%struct.nfp_net_dp* %0, %struct.nfp_net_tx_ring* %1) #0 {
  %3 = alloca %struct.nfp_net_dp*, align 8
  %4 = alloca %struct.nfp_net_tx_ring*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.netdev_queue*, align 8
  %7 = alloca %struct.nfp_net_tx_buf*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nfp_net_dp* %0, %struct.nfp_net_dp** %3, align 8
  store %struct.nfp_net_tx_ring* %1, %struct.nfp_net_tx_ring** %4, align 8
  br label %11

11:                                               ; preds = %95, %2
  %12 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %4, align 8
  %13 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %11
  %17 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %4, align 8
  %18 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %4, align 8
  %21 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %19, %22
  br label %24

24:                                               ; preds = %16, %11
  %25 = phi i1 [ false, %11 ], [ %23, %16 ]
  br i1 %25, label %26, label %110

26:                                               ; preds = %24
  %27 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %4, align 8
  %28 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %4, align 8
  %29 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @D_IDX(%struct.nfp_net_tx_ring* %27, i64 %30)
  store i32 %31, i32* %9, align 4
  %32 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %4, align 8
  %33 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %32, i32 0, i32 8
  %34 = load %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_buf** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %34, i64 %36
  store %struct.nfp_net_tx_buf* %37, %struct.nfp_net_tx_buf** %7, align 8
  %38 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %4, align 8
  %39 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %38, i32 0, i32 8
  %40 = load %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_buf** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %40, i64 %42
  %44 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %43, i32 0, i32 1
  %45 = load %struct.sk_buff*, %struct.sk_buff** %44, align 8
  store %struct.sk_buff* %45, %struct.sk_buff** %8, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %47 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %46)
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %10, align 4
  %50 = load %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_buf** %7, align 8
  %51 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %65

54:                                               ; preds = %26
  %55 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %3, align 8
  %56 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_buf** %7, align 8
  %59 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %62 = call i32 @skb_headlen(%struct.sk_buff* %61)
  %63 = load i32, i32* @DMA_TO_DEVICE, align 4
  %64 = call i32 @dma_unmap_single(i32 %57, i64 %60, i32 %62, i32 %63)
  br label %85

65:                                               ; preds = %26
  %66 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %67 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %66)
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_buf** %7, align 8
  %71 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %69, i64 %73
  store i32* %74, i32** %5, align 8
  %75 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %3, align 8
  %76 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_buf** %7, align 8
  %79 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load i32*, i32** %5, align 8
  %82 = call i32 @skb_frag_size(i32* %81)
  %83 = load i32, i32* @DMA_TO_DEVICE, align 4
  %84 = call i32 @dma_unmap_page(i32 %77, i64 %80, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %65, %54
  %86 = load %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_buf** %7, align 8
  %87 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sub nsw i32 %89, 1
  %91 = icmp eq i32 %88, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %85
  %93 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %94 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %93)
  br label %95

95:                                               ; preds = %92, %85
  %96 = load %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_buf** %7, align 8
  %97 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %96, i32 0, i32 2
  store i64 0, i64* %97, align 8
  %98 = load %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_buf** %7, align 8
  %99 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %98, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %99, align 8
  %100 = load %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_buf** %7, align 8
  %101 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %100, i32 0, i32 0
  store i32 -2, i32* %101, align 8
  %102 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %4, align 8
  %103 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %102, i32 0, i32 5
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %104, 1
  store i64 %105, i64* %103, align 8
  %106 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %4, align 8
  %107 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %108, 1
  store i64 %109, i64* %107, align 8
  br label %11

110:                                              ; preds = %24
  %111 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %4, align 8
  %112 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %111, i32 0, i32 7
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %4, align 8
  %115 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %114, i32 0, i32 6
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @memset(i32 %113, i32 0, i32 %116)
  %118 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %4, align 8
  %119 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %118, i32 0, i32 1
  store i64 0, i64* %119, align 8
  %120 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %4, align 8
  %121 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %120, i32 0, i32 0
  store i64 0, i64* %121, align 8
  %122 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %4, align 8
  %123 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %122, i32 0, i32 5
  store i64 0, i64* %123, align 8
  %124 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %4, align 8
  %125 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %124, i32 0, i32 4
  store i64 0, i64* %125, align 8
  %126 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %4, align 8
  %127 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %135, label %130

130:                                              ; preds = %110
  %131 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %3, align 8
  %132 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %130, %110
  br label %146

136:                                              ; preds = %130
  %137 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %3, align 8
  %138 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %4, align 8
  %141 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = call %struct.netdev_queue* @netdev_get_tx_queue(i32 %139, i32 %142)
  store %struct.netdev_queue* %143, %struct.netdev_queue** %6, align 8
  %144 = load %struct.netdev_queue*, %struct.netdev_queue** %6, align 8
  %145 = call i32 @netdev_tx_reset_queue(%struct.netdev_queue* %144)
  br label %146

146:                                              ; preds = %136, %135
  ret void
}

declare dso_local i32 @D_IDX(%struct.nfp_net_tx_ring*, i64) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @dma_unmap_single(i32, i64, i32, i32) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @dma_unmap_page(i32, i64, i32, i32) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(i32, i32) #1

declare dso_local i32 @netdev_tx_reset_queue(%struct.netdev_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
