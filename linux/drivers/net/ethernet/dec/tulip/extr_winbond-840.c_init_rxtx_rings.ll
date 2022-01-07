; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_winbond-840.c_init_rxtx_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_winbond-840.c_init_rxtx_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netdev_private = type { i32, i64, i64, i64, i64, i64, i64, %struct.w840_tx_desc*, i32**, i64, %struct.TYPE_2__*, i32*, i32, i32, %struct.sk_buff**, %struct.TYPE_2__* }
%struct.w840_tx_desc = type { i64 }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i64, i32, i32 }

@RX_RING_SIZE = common dso_local global i64 0, align 8
@DescEndRing = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@DescOwned = common dso_local global i64 0, align 8
@TX_RING_SIZE = common dso_local global i32 0, align 4
@RxRingPtr = common dso_local global i64 0, align 8
@TxRingPtr = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @init_rxtx_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_rxtx_rings(%struct.net_device* %0) #0 {
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
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 0
  %12 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %13 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %12, i32 0, i32 15
  store %struct.TYPE_2__* %11, %struct.TYPE_2__** %13, align 8
  %14 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %15 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %14, i32 0, i32 10
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i64, i64* @RX_RING_SIZE, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %17
  %19 = bitcast %struct.TYPE_2__* %18 to %struct.w840_tx_desc*
  %20 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %21 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %20, i32 0, i32 7
  store %struct.w840_tx_desc* %19, %struct.w840_tx_desc** %21, align 8
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %51, %1
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* @RX_RING_SIZE, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %54

27:                                               ; preds = %22
  %28 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %29 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %28, i32 0, i32 12
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %32 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %31, i32 0, i32 10
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  store i32 %30, i32* %37, align 4
  %38 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %39 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %38, i32 0, i32 10
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  %45 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %46 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %45, i32 0, i32 14
  %47 = load %struct.sk_buff**, %struct.sk_buff*** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %47, i64 %49
  store %struct.sk_buff* null, %struct.sk_buff** %50, align 8
  br label %51

51:                                               ; preds = %27
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %4, align 4
  br label %22

54:                                               ; preds = %22
  %55 = load i32, i32* @DescEndRing, align 4
  %56 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %57 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %56, i32 0, i32 10
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %55
  store i32 %65, i32* %63, align 4
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %127, %54
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* @RX_RING_SIZE, align 8
  %70 = icmp ult i64 %68, %69
  br i1 %70, label %71, label %130

71:                                               ; preds = %66
  %72 = load %struct.net_device*, %struct.net_device** %2, align 8
  %73 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %74 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %73, i32 0, i32 12
  %75 = load i32, i32* %74, align 8
  %76 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %72, i32 %75)
  store %struct.sk_buff* %76, %struct.sk_buff** %5, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %78 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %79 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %78, i32 0, i32 14
  %80 = load %struct.sk_buff**, %struct.sk_buff*** %79, align 8
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %80, i64 %82
  store %struct.sk_buff* %77, %struct.sk_buff** %83, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %85 = icmp eq %struct.sk_buff* %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %71
  br label %130

87:                                               ; preds = %71
  %88 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %89 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %88, i32 0, i32 13
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %92 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %95 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %94, i32 0, i32 12
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %98 = call i32 @pci_map_single(i32 %90, i32 %93, i32 %96, i32 %97)
  %99 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %100 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %99, i32 0, i32 11
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %4, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  store i32 %98, i32* %104, align 4
  %105 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %106 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %105, i32 0, i32 11
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %4, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %113 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %112, i32 0, i32 10
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = load i32, i32* %4, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 1
  store i32 %111, i32* %118, align 8
  %119 = load i64, i64* @DescOwned, align 8
  %120 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %121 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %120, i32 0, i32 10
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = load i32, i32* %4, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  store i64 %119, i64* %126, align 8
  br label %127

127:                                              ; preds = %87
  %128 = load i32, i32* %4, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %4, align 4
  br label %66

130:                                              ; preds = %86, %66
  %131 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %132 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %131, i32 0, i32 9
  store i64 0, i64* %132, align 8
  %133 = load i32, i32* %4, align 4
  %134 = sext i32 %133 to i64
  %135 = load i64, i64* @RX_RING_SIZE, align 8
  %136 = sub i64 %134, %135
  %137 = trunc i64 %136 to i32
  %138 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %139 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 8
  store i32 0, i32* %4, align 4
  br label %140

140:                                              ; preds = %158, %130
  %141 = load i32, i32* %4, align 4
  %142 = load i32, i32* @TX_RING_SIZE, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %161

144:                                              ; preds = %140
  %145 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %146 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %145, i32 0, i32 8
  %147 = load i32**, i32*** %146, align 8
  %148 = load i32, i32* %4, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32*, i32** %147, i64 %149
  store i32* null, i32** %150, align 8
  %151 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %152 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %151, i32 0, i32 7
  %153 = load %struct.w840_tx_desc*, %struct.w840_tx_desc** %152, align 8
  %154 = load i32, i32* %4, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.w840_tx_desc, %struct.w840_tx_desc* %153, i64 %155
  %157 = getelementptr inbounds %struct.w840_tx_desc, %struct.w840_tx_desc* %156, i32 0, i32 0
  store i64 0, i64* %157, align 8
  br label %158

158:                                              ; preds = %144
  %159 = load i32, i32* %4, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %4, align 4
  br label %140

161:                                              ; preds = %140
  %162 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %163 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %162, i32 0, i32 6
  store i64 0, i64* %163, align 8
  %164 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %165 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %164, i32 0, i32 3
  store i64 0, i64* %165, align 8
  %166 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %167 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %166, i32 0, i32 4
  store i64 0, i64* %167, align 8
  %168 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %169 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %168, i32 0, i32 5
  store i64 0, i64* %169, align 8
  %170 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %171 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %174 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @RxRingPtr, align 8
  %177 = add nsw i64 %175, %176
  %178 = call i32 @iowrite32(i64 %172, i64 %177)
  %179 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %180 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @RX_RING_SIZE, align 8
  %183 = mul i64 4, %182
  %184 = add i64 %181, %183
  %185 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %186 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @TxRingPtr, align 8
  %189 = add nsw i64 %187, %188
  %190 = call i32 @iowrite32(i64 %184, i64 %189)
  ret void
}

declare dso_local %struct.netdev_private* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i32) #1

declare dso_local i32 @pci_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @iowrite32(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
