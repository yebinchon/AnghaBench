; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_release_tx_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_release_tx_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)* }
%struct.tx_ring_info = type { %struct.tx_buff_info*, i32, i32*, i32, i32 }
%struct.tx_buff_info = type { i32, %struct.sk_buff* }
%struct.sk_buff = type { i64 }
%struct.tx_pkt_hdr = type { i32 }
%struct.TYPE_4__ = type { i32, i32* }

@TXHDR_LEN = common dso_local global i32 0, align 4
@TXHDR_LEN_SHIFT = common dso_local global i32 0, align 4
@TXHDR_PAD = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@TX_DESC_MARK = common dso_local global i32 0, align 4
@MAX_TX_DESC_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*, %struct.tx_ring_info*, i32)* @release_tx_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @release_tx_packet(%struct.niu* %0, %struct.tx_ring_info* %1, i32 %2) #0 {
  %4 = alloca %struct.niu*, align 8
  %5 = alloca %struct.tx_ring_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tx_buff_info*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.tx_pkt_hdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %4, align 8
  store %struct.tx_ring_info* %1, %struct.tx_ring_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.tx_ring_info*, %struct.tx_ring_info** %5, align 8
  %14 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %13, i32 0, i32 0
  %15 = load %struct.tx_buff_info*, %struct.tx_buff_info** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.tx_buff_info, %struct.tx_buff_info* %15, i64 %17
  store %struct.tx_buff_info* %18, %struct.tx_buff_info** %7, align 8
  %19 = load %struct.tx_buff_info*, %struct.tx_buff_info** %7, align 8
  %20 = getelementptr inbounds %struct.tx_buff_info, %struct.tx_buff_info* %19, i32 0, i32 1
  %21 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  store %struct.sk_buff* %21, %struct.sk_buff** %8, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.tx_pkt_hdr*
  store %struct.tx_pkt_hdr* %25, %struct.tx_pkt_hdr** %9, align 8
  %26 = load %struct.tx_pkt_hdr*, %struct.tx_pkt_hdr** %9, align 8
  %27 = getelementptr inbounds %struct.tx_pkt_hdr, %struct.tx_pkt_hdr* %26, i32 0, i32 0
  %28 = call i32 @le64_to_cpup(i32* %27)
  store i32 %28, i32* %10, align 4
  %29 = load %struct.tx_ring_info*, %struct.tx_ring_info** %5, align 8
  %30 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @TXHDR_LEN, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @TXHDR_LEN_SHIFT, align 4
  %37 = ashr i32 %35, %36
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @TXHDR_PAD, align 4
  %40 = and i32 %38, %39
  %41 = sdiv i32 %40, 2
  %42 = sub nsw i32 %37, %41
  %43 = load %struct.tx_ring_info*, %struct.tx_ring_info** %5, align 8
  %44 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %48 = call i32 @skb_headlen(%struct.sk_buff* %47)
  store i32 %48, i32* %12, align 4
  %49 = load %struct.niu*, %struct.niu** %4, align 8
  %50 = getelementptr inbounds %struct.niu, %struct.niu* %49, i32 0, i32 1
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %52, align 8
  %54 = load %struct.niu*, %struct.niu** %4, align 8
  %55 = getelementptr inbounds %struct.niu, %struct.niu* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.tx_buff_info*, %struct.tx_buff_info** %7, align 8
  %58 = getelementptr inbounds %struct.tx_buff_info, %struct.tx_buff_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* @DMA_TO_DEVICE, align 4
  %62 = call i32 %53(i32 %56, i32 %59, i32 %60, i32 %61)
  %63 = load %struct.tx_ring_info*, %struct.tx_ring_info** %5, align 8
  %64 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @le64_to_cpu(i32 %69)
  %71 = load i32, i32* @TX_DESC_MARK, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %3
  %75 = load %struct.tx_ring_info*, %struct.tx_ring_info** %5, align 8
  %76 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %74, %3
  %80 = load %struct.tx_buff_info*, %struct.tx_buff_info** %7, align 8
  %81 = getelementptr inbounds %struct.tx_buff_info, %struct.tx_buff_info* %80, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %81, align 8
  br label %82

82:                                               ; preds = %91, %79
  %83 = load %struct.tx_ring_info*, %struct.tx_ring_info** %5, align 8
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @NEXT_TX(%struct.tx_ring_info* %83, i32 %84)
  store i32 %85, i32* %6, align 4
  %86 = load i64, i64* @MAX_TX_DESC_LEN, align 8
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = sub nsw i64 %88, %86
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %12, align 4
  br label %91

91:                                               ; preds = %82
  %92 = load i32, i32* %12, align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %82, label %94

94:                                               ; preds = %91
  store i32 0, i32* %11, align 4
  br label %95

95:                                               ; preds = %139, %94
  %96 = load i32, i32* %11, align 4
  %97 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %98 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %97)
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp slt i32 %96, %100
  br i1 %101, label %102, label %142

102:                                              ; preds = %95
  %103 = load %struct.tx_ring_info*, %struct.tx_ring_info** %5, align 8
  %104 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %103, i32 0, i32 0
  %105 = load %struct.tx_buff_info*, %struct.tx_buff_info** %104, align 8
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.tx_buff_info, %struct.tx_buff_info* %105, i64 %107
  store %struct.tx_buff_info* %108, %struct.tx_buff_info** %7, align 8
  %109 = load %struct.tx_buff_info*, %struct.tx_buff_info** %7, align 8
  %110 = getelementptr inbounds %struct.tx_buff_info, %struct.tx_buff_info* %109, i32 0, i32 1
  %111 = load %struct.sk_buff*, %struct.sk_buff** %110, align 8
  %112 = icmp ne %struct.sk_buff* %111, null
  %113 = zext i1 %112 to i32
  %114 = call i32 @BUG_ON(i32 %113)
  %115 = load %struct.niu*, %struct.niu** %4, align 8
  %116 = getelementptr inbounds %struct.niu, %struct.niu* %115, i32 0, i32 1
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %118, align 8
  %120 = load %struct.niu*, %struct.niu** %4, align 8
  %121 = getelementptr inbounds %struct.niu, %struct.niu* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.tx_buff_info*, %struct.tx_buff_info** %7, align 8
  %124 = getelementptr inbounds %struct.tx_buff_info, %struct.tx_buff_info* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %127 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %126)
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %11, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = call i32 @skb_frag_size(i32* %132)
  %134 = load i32, i32* @DMA_TO_DEVICE, align 4
  %135 = call i32 %119(i32 %122, i32 %125, i32 %133, i32 %134)
  %136 = load %struct.tx_ring_info*, %struct.tx_ring_info** %5, align 8
  %137 = load i32, i32* %6, align 4
  %138 = call i32 @NEXT_TX(%struct.tx_ring_info* %136, i32 %137)
  store i32 %138, i32* %6, align 4
  br label %139

139:                                              ; preds = %102
  %140 = load i32, i32* %11, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %11, align 4
  br label %95

142:                                              ; preds = %95
  %143 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %144 = call i32 @dev_kfree_skb(%struct.sk_buff* %143)
  %145 = load i32, i32* %6, align 4
  ret i32 %145
}

declare dso_local i32 @le64_to_cpup(i32*) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @NEXT_TX(%struct.tx_ring_info*, i32) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
