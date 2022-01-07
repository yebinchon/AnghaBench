; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dlink/extr_sundance.c_init_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dlink/extr_sundance.c_init_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netdev_private = type { i32, i32, i32, i32, %struct.TYPE_8__*, i32**, %struct.TYPE_7__*, %struct.sk_buff**, %struct.TYPE_5__*, i64, i64, i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i64, i8* }
%struct.TYPE_6__ = type { i8*, i8* }
%struct.sk_buff = type { i32 }
%struct.TYPE_5__ = type { i32 }

@PKT_BUF_SZ = common dso_local global i32 0, align 4
@RX_RING_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@LastFrag = common dso_local global i32 0, align 4
@TX_RING_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @init_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_ring(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.netdev_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.netdev_private* @netdev_priv(%struct.net_device* %6)
  store %struct.netdev_private* %7, %struct.netdev_private** %3, align 8
  %8 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %9 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %8, i32 0, i32 10
  store i64 0, i64* %9, align 8
  %10 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %11 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %10, i32 0, i32 11
  store i64 0, i64* %11, align 8
  %12 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %13 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %12, i32 0, i32 1
  store i32 0, i32* %13, align 4
  %14 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %15 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %17 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %16, i32 0, i32 9
  store i64 0, i64* %17, align 8
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sle i32 %20, 1520
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @PKT_BUF_SZ, align 4
  br label %29

24:                                               ; preds = %1
  %25 = load %struct.net_device*, %struct.net_device** %2, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 16
  br label %29

29:                                               ; preds = %24, %22
  %30 = phi i32 [ %23, %22 ], [ %28, %24 ]
  %31 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %32 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %81, %29
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @RX_RING_SIZE, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %84

37:                                               ; preds = %33
  %38 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %39 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  %44 = load i32, i32* @RX_RING_SIZE, align 4
  %45 = srem i32 %43, %44
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 24
  %48 = add i64 %41, %47
  %49 = trunc i64 %48 to i32
  %50 = call i8* @cpu_to_le32(i32 %49)
  %51 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %52 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %51, i32 0, i32 6
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 2
  store i8* %50, i8** %57, align 8
  %58 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %59 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %58, i32 0, i32 6
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  store i64 0, i64* %64, align 8
  %65 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %66 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %65, i32 0, i32 6
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i64 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store i8* null, i8** %74, align 8
  %75 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %76 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %75, i32 0, i32 7
  %77 = load %struct.sk_buff**, %struct.sk_buff*** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %77, i64 %79
  store %struct.sk_buff* null, %struct.sk_buff** %80, align 8
  br label %81

81:                                               ; preds = %37
  %82 = load i32, i32* %4, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %4, align 4
  br label %33

84:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %175, %84
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @RX_RING_SIZE, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %178

89:                                               ; preds = %85
  %90 = load %struct.net_device*, %struct.net_device** %2, align 8
  %91 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %92 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, 2
  %95 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %90, i32 %94)
  store %struct.sk_buff* %95, %struct.sk_buff** %5, align 8
  %96 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %97 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %98 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %97, i32 0, i32 7
  %99 = load %struct.sk_buff**, %struct.sk_buff*** %98, align 8
  %100 = load i32, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %99, i64 %101
  store %struct.sk_buff* %96, %struct.sk_buff** %102, align 8
  %103 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %104 = icmp eq %struct.sk_buff* %103, null
  br i1 %104, label %105, label %106

105:                                              ; preds = %89
  br label %178

106:                                              ; preds = %89
  %107 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %108 = call i32 @skb_reserve(%struct.sk_buff* %107, i32 2)
  %109 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %110 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %109, i32 0, i32 8
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %114 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %117 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %120 = call i32 @dma_map_single(i32* %112, i32 %115, i32 %118, i32 %119)
  %121 = call i8* @cpu_to_le32(i32 %120)
  %122 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %123 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %122, i32 0, i32 6
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  %125 = load i32, i32* %4, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i64 0
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 1
  store i8* %121, i8** %131, align 8
  %132 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %133 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %132, i32 0, i32 8
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %137 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %136, i32 0, i32 6
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %137, align 8
  %139 = load i32, i32* %4, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i64 0
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 1
  %146 = load i8*, i8** %145, align 8
  %147 = call i64 @dma_mapping_error(i32* %135, i8* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %158

149:                                              ; preds = %106
  %150 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %151 = call i32 @dev_kfree_skb(%struct.sk_buff* %150)
  %152 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %153 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %152, i32 0, i32 7
  %154 = load %struct.sk_buff**, %struct.sk_buff*** %153, align 8
  %155 = load i32, i32* %4, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %154, i64 %156
  store %struct.sk_buff* null, %struct.sk_buff** %157, align 8
  br label %178

158:                                              ; preds = %106
  %159 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %160 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @LastFrag, align 4
  %163 = or i32 %161, %162
  %164 = call i8* @cpu_to_le32(i32 %163)
  %165 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %166 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %165, i32 0, i32 6
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %166, align 8
  %168 = load i32, i32* %4, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i64 0
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  store i8* %164, i8** %174, align 8
  br label %175

175:                                              ; preds = %158
  %176 = load i32, i32* %4, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %4, align 4
  br label %85

178:                                              ; preds = %149, %105, %85
  %179 = load i32, i32* %4, align 4
  %180 = load i32, i32* @RX_RING_SIZE, align 4
  %181 = sub nsw i32 %179, %180
  %182 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %183 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %182, i32 0, i32 0
  store i32 %181, i32* %183, align 8
  store i32 0, i32* %4, align 4
  br label %184

184:                                              ; preds = %202, %178
  %185 = load i32, i32* %4, align 4
  %186 = load i32, i32* @TX_RING_SIZE, align 4
  %187 = icmp slt i32 %185, %186
  br i1 %187, label %188, label %205

188:                                              ; preds = %184
  %189 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %190 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %189, i32 0, i32 5
  %191 = load i32**, i32*** %190, align 8
  %192 = load i32, i32* %4, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32*, i32** %191, i64 %193
  store i32* null, i32** %194, align 8
  %195 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %196 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %195, i32 0, i32 4
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %196, align 8
  %198 = load i32, i32* %4, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 0
  store i64 0, i64* %201, align 8
  br label %202

202:                                              ; preds = %188
  %203 = load i32, i32* %4, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %4, align 4
  br label %184

205:                                              ; preds = %184
  ret void
}

declare dso_local %struct.netdev_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @dma_map_single(i32*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i8*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
