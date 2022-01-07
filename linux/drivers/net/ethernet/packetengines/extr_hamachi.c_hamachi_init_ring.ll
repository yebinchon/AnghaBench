; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/packetengines/extr_hamachi.c_hamachi_init_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/packetengines/extr_hamachi.c_hamachi_init_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.hamachi_private = type { i32, i32, i32, %struct.TYPE_4__*, i32**, %struct.TYPE_3__*, i32, %struct.sk_buff**, i64, i64, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.sk_buff = type { i32 }

@PKT_BUF_SZ = common dso_local global i32 0, align 4
@RX_RING_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@DescOwn = common dso_local global i32 0, align 4
@DescEndPacket = common dso_local global i32 0, align 4
@DescIntr = common dso_local global i32 0, align 4
@DescEndRing = common dso_local global i32 0, align 4
@TX_RING_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @hamachi_init_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hamachi_init_ring(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.hamachi_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.hamachi_private* @netdev_priv(%struct.net_device* %6)
  store %struct.hamachi_private* %7, %struct.hamachi_private** %3, align 8
  %8 = load %struct.hamachi_private*, %struct.hamachi_private** %3, align 8
  %9 = getelementptr inbounds %struct.hamachi_private, %struct.hamachi_private* %8, i32 0, i32 10
  store i64 0, i64* %9, align 8
  %10 = load %struct.hamachi_private*, %struct.hamachi_private** %3, align 8
  %11 = getelementptr inbounds %struct.hamachi_private, %struct.hamachi_private* %10, i32 0, i32 8
  store i64 0, i64* %11, align 8
  %12 = load %struct.hamachi_private*, %struct.hamachi_private** %3, align 8
  %13 = getelementptr inbounds %struct.hamachi_private, %struct.hamachi_private* %12, i32 0, i32 9
  store i64 0, i64* %13, align 8
  %14 = load %struct.hamachi_private*, %struct.hamachi_private** %3, align 8
  %15 = getelementptr inbounds %struct.hamachi_private, %struct.hamachi_private* %14, i32 0, i32 1
  store i32 0, i32* %15, align 4
  %16 = load %struct.hamachi_private*, %struct.hamachi_private** %3, align 8
  %17 = getelementptr inbounds %struct.hamachi_private, %struct.hamachi_private* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sle i32 %20, 1492
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @PKT_BUF_SZ, align 4
  br label %32

24:                                               ; preds = %1
  %25 = load %struct.net_device*, %struct.net_device** %2, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 26
  %29 = add nsw i32 %28, 7
  %30 = and i32 %29, -8
  %31 = add nsw i32 %30, 16
  br label %32

32:                                               ; preds = %24, %22
  %33 = phi i32 [ %23, %22 ], [ %31, %24 ]
  %34 = load %struct.hamachi_private*, %struct.hamachi_private** %3, align 8
  %35 = getelementptr inbounds %struct.hamachi_private, %struct.hamachi_private* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %54, %32
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @RX_RING_SIZE, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %57

40:                                               ; preds = %36
  %41 = load %struct.hamachi_private*, %struct.hamachi_private** %3, align 8
  %42 = getelementptr inbounds %struct.hamachi_private, %struct.hamachi_private* %41, i32 0, i32 5
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  %48 = load %struct.hamachi_private*, %struct.hamachi_private** %3, align 8
  %49 = getelementptr inbounds %struct.hamachi_private, %struct.hamachi_private* %48, i32 0, i32 7
  %50 = load %struct.sk_buff**, %struct.sk_buff*** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %50, i64 %52
  store %struct.sk_buff* null, %struct.sk_buff** %53, align 8
  br label %54

54:                                               ; preds = %40
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %4, align 4
  br label %36

57:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %119, %57
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @RX_RING_SIZE, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %122

62:                                               ; preds = %58
  %63 = load %struct.net_device*, %struct.net_device** %2, align 8
  %64 = load %struct.hamachi_private*, %struct.hamachi_private** %3, align 8
  %65 = getelementptr inbounds %struct.hamachi_private, %struct.hamachi_private* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, 2
  %68 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %63, i32 %67)
  store %struct.sk_buff* %68, %struct.sk_buff** %5, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %70 = load %struct.hamachi_private*, %struct.hamachi_private** %3, align 8
  %71 = getelementptr inbounds %struct.hamachi_private, %struct.hamachi_private* %70, i32 0, i32 7
  %72 = load %struct.sk_buff**, %struct.sk_buff*** %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %72, i64 %74
  store %struct.sk_buff* %69, %struct.sk_buff** %75, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %77 = icmp eq %struct.sk_buff* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %62
  br label %122

79:                                               ; preds = %62
  %80 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %81 = call i32 @skb_reserve(%struct.sk_buff* %80, i32 2)
  %82 = load %struct.hamachi_private*, %struct.hamachi_private** %3, align 8
  %83 = getelementptr inbounds %struct.hamachi_private, %struct.hamachi_private* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.hamachi_private*, %struct.hamachi_private** %3, align 8
  %89 = getelementptr inbounds %struct.hamachi_private, %struct.hamachi_private* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %92 = call i32 @pci_map_single(i32 %84, i32 %87, i32 %90, i32 %91)
  %93 = call i32 @cpu_to_leXX(i32 %92)
  %94 = load %struct.hamachi_private*, %struct.hamachi_private** %3, align 8
  %95 = getelementptr inbounds %struct.hamachi_private, %struct.hamachi_private* %94, i32 0, i32 5
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = load i32, i32* %4, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  store i32 %93, i32* %100, align 8
  %101 = load i32, i32* @DescOwn, align 4
  %102 = load i32, i32* @DescEndPacket, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @DescIntr, align 4
  %105 = or i32 %103, %104
  %106 = load %struct.hamachi_private*, %struct.hamachi_private** %3, align 8
  %107 = getelementptr inbounds %struct.hamachi_private, %struct.hamachi_private* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = sub nsw i32 %108, 2
  %110 = or i32 %105, %109
  %111 = call i64 @cpu_to_le32(i32 %110)
  %112 = load %struct.hamachi_private*, %struct.hamachi_private** %3, align 8
  %113 = getelementptr inbounds %struct.hamachi_private, %struct.hamachi_private* %112, i32 0, i32 5
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = load i32, i32* %4, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  store i64 %111, i64* %118, align 8
  br label %119

119:                                              ; preds = %79
  %120 = load i32, i32* %4, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %4, align 4
  br label %58

122:                                              ; preds = %78, %58
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* @RX_RING_SIZE, align 4
  %125 = sub nsw i32 %123, %124
  %126 = load %struct.hamachi_private*, %struct.hamachi_private** %3, align 8
  %127 = getelementptr inbounds %struct.hamachi_private, %struct.hamachi_private* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  %128 = load i32, i32* @DescEndRing, align 4
  %129 = call i64 @cpu_to_le32(i32 %128)
  %130 = load %struct.hamachi_private*, %struct.hamachi_private** %3, align 8
  %131 = getelementptr inbounds %struct.hamachi_private, %struct.hamachi_private* %130, i32 0, i32 5
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %131, align 8
  %133 = load i32, i32* @RX_RING_SIZE, align 4
  %134 = sub nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = or i64 %138, %129
  store i64 %139, i64* %137, align 8
  store i32 0, i32* %4, align 4
  br label %140

140:                                              ; preds = %158, %122
  %141 = load i32, i32* %4, align 4
  %142 = load i32, i32* @TX_RING_SIZE, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %161

144:                                              ; preds = %140
  %145 = load %struct.hamachi_private*, %struct.hamachi_private** %3, align 8
  %146 = getelementptr inbounds %struct.hamachi_private, %struct.hamachi_private* %145, i32 0, i32 4
  %147 = load i32**, i32*** %146, align 8
  %148 = load i32, i32* %4, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32*, i32** %147, i64 %149
  store i32* null, i32** %150, align 8
  %151 = load %struct.hamachi_private*, %struct.hamachi_private** %3, align 8
  %152 = getelementptr inbounds %struct.hamachi_private, %struct.hamachi_private* %151, i32 0, i32 3
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  %154 = load i32, i32* %4, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  store i64 0, i64* %157, align 8
  br label %158

158:                                              ; preds = %144
  %159 = load i32, i32* %4, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %4, align 4
  br label %140

161:                                              ; preds = %140
  %162 = load i32, i32* @DescEndRing, align 4
  %163 = call i64 @cpu_to_le32(i32 %162)
  %164 = load %struct.hamachi_private*, %struct.hamachi_private** %3, align 8
  %165 = getelementptr inbounds %struct.hamachi_private, %struct.hamachi_private* %164, i32 0, i32 3
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %165, align 8
  %167 = load i32, i32* @TX_RING_SIZE, align 4
  %168 = sub nsw i32 %167, 1
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = or i64 %172, %163
  store i64 %173, i64* %171, align 8
  ret void
}

declare dso_local %struct.hamachi_private* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @cpu_to_leXX(i32) #1

declare dso_local i32 @pci_map_single(i32, i32, i32, i32) #1

declare dso_local i64 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
