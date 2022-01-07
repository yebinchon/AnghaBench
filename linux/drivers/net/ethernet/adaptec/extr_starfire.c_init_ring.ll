; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/adaptec/extr_starfire.c_init_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/adaptec/extr_starfire.c_init_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netdev_private = type { i32, i32, i32, i32, i32, i32*, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__*, i64, i32, i64, i64, i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, %struct.sk_buff* }
%struct.sk_buff = type { i32 }

@PKT_BUF_SZ = common dso_local global i32 0, align 4
@RX_RING_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@RxDescValid = common dso_local global i32 0, align 4
@RxDescQIdx = common dso_local global i64 0, align 8
@RxDescEndRing = common dso_local global i32 0, align 4
@DONE_Q_SIZE = common dso_local global i32 0, align 4
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
  %9 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %8, i32 0, i32 12
  store i64 0, i64* %9, align 8
  %10 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %11 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %10, i32 0, i32 13
  store i64 0, i64* %11, align 8
  %12 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %13 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %12, i32 0, i32 14
  store i64 0, i64* %13, align 8
  %14 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %15 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %14, i32 0, i32 3
  store i32 0, i32* %15, align 4
  %16 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %17 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %16, i32 0, i32 2
  store i32 0, i32* %17, align 8
  %18 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %19 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %18, i32 0, i32 1
  store i32 0, i32* %19, align 4
  %20 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %21 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %20, i32 0, i32 0
  store i32 0, i32* %21, align 8
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sle i32 %24, 1500
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load i32, i32* @PKT_BUF_SZ, align 4
  br label %33

28:                                               ; preds = %1
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 32
  br label %33

33:                                               ; preds = %28, %26
  %34 = phi i32 [ %27, %26 ], [ %32, %28 ]
  %35 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %36 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 8
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %119, %33
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @RX_RING_SIZE, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %122

41:                                               ; preds = %37
  %42 = load %struct.net_device*, %struct.net_device** %2, align 8
  %43 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %44 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %42, i32 %45)
  store %struct.sk_buff* %46, %struct.sk_buff** %5, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %49 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %48, i32 0, i32 9
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  store %struct.sk_buff* %47, %struct.sk_buff** %54, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %56 = icmp eq %struct.sk_buff* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %41
  br label %122

58:                                               ; preds = %41
  %59 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %60 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %59, i32 0, i32 11
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %66 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %69 = call i32 @pci_map_single(i32 %61, i32 %64, i32 %67, i32 %68)
  %70 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %71 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %70, i32 0, i32 9
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  store i32 %69, i32* %76, align 8
  %77 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %78 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %77, i32 0, i32 11
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %81 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %80, i32 0, i32 9
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i64 @pci_dma_mapping_error(i32 %79, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %58
  %91 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %92 = call i32 @dev_kfree_skb(%struct.sk_buff* %91)
  %93 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %94 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %93, i32 0, i32 9
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = load i32, i32* %4, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %99, align 8
  br label %122

100:                                              ; preds = %58
  %101 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %102 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %101, i32 0, i32 9
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = load i32, i32* %4, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @RxDescValid, align 4
  %110 = or i32 %108, %109
  %111 = call i64 @cpu_to_dma(i32 %110)
  %112 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %113 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %112, i32 0, i32 8
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = load i32, i32* %4, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  store i64 %111, i64* %118, align 8
  br label %119

119:                                              ; preds = %100
  %120 = load i32, i32* %4, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %4, align 4
  br label %37

122:                                              ; preds = %90, %57, %37
  %123 = load i32, i32* %4, align 4
  %124 = sub nsw i32 %123, 1
  %125 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %126 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %125, i32 0, i32 10
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @RxDescQIdx, align 8
  %129 = add nsw i64 %127, %128
  %130 = call i32 @writew(i32 %124, i64 %129)
  %131 = load i32, i32* %4, align 4
  %132 = load i32, i32* @RX_RING_SIZE, align 4
  %133 = sub nsw i32 %131, %132
  %134 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %135 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 8
  br label %136

136:                                              ; preds = %162, %122
  %137 = load i32, i32* %4, align 4
  %138 = load i32, i32* @RX_RING_SIZE, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %165

140:                                              ; preds = %136
  %141 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %142 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %141, i32 0, i32 8
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %142, align 8
  %144 = load i32, i32* %4, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  store i64 0, i64* %147, align 8
  %148 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %149 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %148, i32 0, i32 9
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %149, align 8
  %151 = load i32, i32* %4, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %154, align 8
  %155 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %156 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %155, i32 0, i32 9
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %156, align 8
  %158 = load i32, i32* %4, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  store i32 0, i32* %161, align 8
  br label %162

162:                                              ; preds = %140
  %163 = load i32, i32* %4, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %4, align 4
  br label %136

165:                                              ; preds = %136
  %166 = load i32, i32* @RxDescEndRing, align 4
  %167 = call i64 @cpu_to_dma(i32 %166)
  %168 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %169 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %168, i32 0, i32 8
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %169, align 8
  %171 = load i32, i32* @RX_RING_SIZE, align 4
  %172 = sub nsw i32 %171, 1
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = or i64 %176, %167
  store i64 %177, i64* %175, align 8
  store i32 0, i32* %4, align 4
  br label %178

178:                                              ; preds = %197, %165
  %179 = load i32, i32* %4, align 4
  %180 = load i32, i32* @DONE_Q_SIZE, align 4
  %181 = icmp slt i32 %179, %180
  br i1 %181, label %182, label %200

182:                                              ; preds = %178
  %183 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %184 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %183, i32 0, i32 7
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %184, align 8
  %186 = load i32, i32* %4, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 0
  store i64 0, i64* %189, align 8
  %190 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %191 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %190, i32 0, i32 6
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %191, align 8
  %193 = load i32, i32* %4, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 0
  store i64 0, i64* %196, align 8
  br label %197

197:                                              ; preds = %182
  %198 = load i32, i32* %4, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %4, align 4
  br label %178

200:                                              ; preds = %178
  store i32 0, i32* %4, align 4
  br label %201

201:                                              ; preds = %213, %200
  %202 = load i32, i32* %4, align 4
  %203 = load i32, i32* @TX_RING_SIZE, align 4
  %204 = icmp slt i32 %202, %203
  br i1 %204, label %205, label %216

205:                                              ; preds = %201
  %206 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %207 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %206, i32 0, i32 5
  %208 = load i32*, i32** %207, align 8
  %209 = load i32, i32* %4, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  %212 = call i32 @memset(i32* %211, i32 0, i32 4)
  br label %213

213:                                              ; preds = %205
  %214 = load i32, i32* %4, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %4, align 4
  br label %201

216:                                              ; preds = %201
  ret void
}

declare dso_local %struct.netdev_private* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i32) #1

declare dso_local i32 @pci_map_single(i32, i32, i32, i32) #1

declare dso_local i64 @pci_dma_mapping_error(i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @cpu_to_dma(i32) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
