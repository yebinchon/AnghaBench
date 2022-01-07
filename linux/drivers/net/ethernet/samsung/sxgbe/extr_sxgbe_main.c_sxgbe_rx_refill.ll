; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/samsung/sxgbe/extr_sxgbe_main.c_sxgbe_rx_refill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/samsung/sxgbe/extr_sxgbe_main.c_sxgbe_rx_refill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sxgbe_priv_data = type { i32, i32, i64, %struct.TYPE_10__*, %struct.TYPE_8__**, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.sxgbe_rx_norm_desc*)*, i32 (%struct.sxgbe_rx_norm_desc*)* }
%struct.sxgbe_rx_norm_desc = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32, i32*, %struct.sk_buff**, %struct.sxgbe_rx_norm_desc* }
%struct.sk_buff = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sxgbe_priv_data*)* @sxgbe_rx_refill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sxgbe_rx_refill(%struct.sxgbe_priv_data* %0) #0 {
  %2 = alloca %struct.sxgbe_priv_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sxgbe_rx_norm_desc*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.sxgbe_priv_data* %0, %struct.sxgbe_priv_data** %2, align 8
  %9 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %2, align 8
  %10 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %3, align 4
  %12 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %2, align 8
  %13 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %4, align 4
  %15 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %2, align 8
  %16 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %5, align 8
  br label %18

18:                                               ; preds = %158, %1
  %19 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %2, align 8
  %20 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %19, i32 0, i32 4
  %21 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %21, i64 %22
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %2, align 8
  %28 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %27, i32 0, i32 4
  %29 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %29, i64 %30
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = zext i32 %34 to i64
  %36 = sub nsw i64 %26, %35
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %168

38:                                               ; preds = %18
  %39 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %2, align 8
  %40 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %39, i32 0, i32 4
  %41 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %40, align 8
  %42 = load i64, i64* %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %41, i64 %42
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = urem i32 %46, %47
  store i32 %48, i32* %6, align 4
  %49 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %2, align 8
  %50 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %49, i32 0, i32 4
  %51 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %50, align 8
  %52 = load i64, i64* %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %51, i64 %52
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 4
  %56 = load %struct.sxgbe_rx_norm_desc*, %struct.sxgbe_rx_norm_desc** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.sxgbe_rx_norm_desc, %struct.sxgbe_rx_norm_desc* %56, i64 %58
  store %struct.sxgbe_rx_norm_desc* %59, %struct.sxgbe_rx_norm_desc** %7, align 8
  %60 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %2, align 8
  %61 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %60, i32 0, i32 4
  %62 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %61, align 8
  %63 = load i64, i64* %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %62, i64 %63
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 3
  %67 = load %struct.sk_buff**, %struct.sk_buff*** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %67, i64 %69
  %71 = load %struct.sk_buff*, %struct.sk_buff** %70, align 8
  %72 = icmp eq %struct.sk_buff* %71, null
  %73 = zext i1 %72 to i32
  %74 = call i64 @likely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %137

76:                                               ; preds = %38
  %77 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %2, align 8
  %78 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %4, align 4
  %81 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(i32 %79, i32 %80)
  store %struct.sk_buff* %81, %struct.sk_buff** %8, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %83 = icmp eq %struct.sk_buff* %82, null
  %84 = zext i1 %83 to i32
  %85 = call i64 @unlikely(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %76
  br label %168

88:                                               ; preds = %76
  %89 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %90 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %2, align 8
  %91 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %90, i32 0, i32 4
  %92 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %91, align 8
  %93 = load i64, i64* %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %92, i64 %93
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 3
  %97 = load %struct.sk_buff**, %struct.sk_buff*** %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %97, i64 %99
  store %struct.sk_buff* %89, %struct.sk_buff** %100, align 8
  %101 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %2, align 8
  %102 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %105 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %109 = call i32 @dma_map_single(i32 %103, i32 %106, i32 %107, i32 %108)
  %110 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %2, align 8
  %111 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %110, i32 0, i32 4
  %112 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %111, align 8
  %113 = load i64, i64* %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %112, i64 %113
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %6, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  store i32 %109, i32* %120, align 4
  %121 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %2, align 8
  %122 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %121, i32 0, i32 4
  %123 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %122, align 8
  %124 = load i64, i64* %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %123, i64 %124
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %6, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.sxgbe_rx_norm_desc*, %struct.sxgbe_rx_norm_desc** %7, align 8
  %134 = getelementptr inbounds %struct.sxgbe_rx_norm_desc, %struct.sxgbe_rx_norm_desc* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  store i32 %132, i32* %136, align 4
  br label %137

137:                                              ; preds = %88, %38
  %138 = call i32 (...) @wmb()
  %139 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %2, align 8
  %140 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %139, i32 0, i32 3
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 1
  %145 = load i32 (%struct.sxgbe_rx_norm_desc*)*, i32 (%struct.sxgbe_rx_norm_desc*)** %144, align 8
  %146 = load %struct.sxgbe_rx_norm_desc*, %struct.sxgbe_rx_norm_desc** %7, align 8
  %147 = call i32 %145(%struct.sxgbe_rx_norm_desc* %146)
  %148 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %2, align 8
  %149 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %148, i32 0, i32 3
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 0
  %154 = load i32 (%struct.sxgbe_rx_norm_desc*)*, i32 (%struct.sxgbe_rx_norm_desc*)** %153, align 8
  %155 = load %struct.sxgbe_rx_norm_desc*, %struct.sxgbe_rx_norm_desc** %7, align 8
  %156 = call i32 %154(%struct.sxgbe_rx_norm_desc* %155)
  %157 = call i32 (...) @wmb()
  br label %158

158:                                              ; preds = %137
  %159 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %2, align 8
  %160 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %159, i32 0, i32 4
  %161 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %160, align 8
  %162 = load i64, i64* %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %161, i64 %162
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = add i32 %166, 1
  store i32 %167, i32* %165, align 8
  br label %18

168:                                              ; preds = %87, %18
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb_ip_align(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
