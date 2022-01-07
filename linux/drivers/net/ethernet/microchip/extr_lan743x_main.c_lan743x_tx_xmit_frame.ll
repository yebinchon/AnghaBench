; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_tx_xmit_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_tx_xmit_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan743x_tx = type { i32, i32, i32, %struct.TYPE_4__*, %struct.sk_buff* }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i64, i32 }
%struct.TYPE_3__ = type { i32, i32, i32*, i32 }

@SKBTX_HW_TSTAMP = common dso_local global i32 0, align 4
@TX_TS_FLAG_TIMESTAMPING_ENABLED = common dso_local global i32 0, align 4
@SKBTX_IN_PROGRESS = common dso_local global i32 0, align 4
@TX_TS_FLAG_ONE_STEP_SYNC = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lan743x_tx*, %struct.sk_buff*)* @lan743x_tx_xmit_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan743x_tx_xmit_frame(%struct.lan743x_tx* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.lan743x_tx*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.lan743x_tx* %0, %struct.lan743x_tx** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %16 = load %struct.lan743x_tx*, %struct.lan743x_tx** %3, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = call i32 @lan743x_tx_get_desc_cnt(%struct.lan743x_tx* %16, %struct.sk_buff* %17)
  store i32 %18, i32* %5, align 4
  %19 = load %struct.lan743x_tx*, %struct.lan743x_tx** %3, align 8
  %20 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %19, i32 0, i32 2
  %21 = load i64, i64* %9, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.lan743x_tx*, %struct.lan743x_tx** %3, align 8
  %25 = call i32 @lan743x_tx_get_avail_desc(%struct.lan743x_tx* %24)
  %26 = icmp sgt i32 %23, %25
  br i1 %26, label %27, label %48

27:                                               ; preds = %2
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.lan743x_tx*, %struct.lan743x_tx** %3, align 8
  %30 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 %31, 1
  %33 = icmp sgt i32 %28, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = call i32 @dev_kfree_skb(%struct.sk_buff* %35)
  br label %47

37:                                               ; preds = %27
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = load %struct.lan743x_tx*, %struct.lan743x_tx** %3, align 8
  %40 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %39, i32 0, i32 4
  store %struct.sk_buff* %38, %struct.sk_buff** %40, align 8
  %41 = load %struct.lan743x_tx*, %struct.lan743x_tx** %3, align 8
  %42 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %41, i32 0, i32 3
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @netif_stop_queue(i32 %45)
  br label %47

47:                                               ; preds = %37, %34
  br label %167

48:                                               ; preds = %2
  %49 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %50 = call %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff* %49)
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @SKBTX_HW_TSTAMP, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %84

56:                                               ; preds = %48
  %57 = load %struct.lan743x_tx*, %struct.lan743x_tx** %3, align 8
  %58 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @TX_TS_FLAG_TIMESTAMPING_ENABLED, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %84

63:                                               ; preds = %56
  %64 = load %struct.lan743x_tx*, %struct.lan743x_tx** %3, align 8
  %65 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %64, i32 0, i32 3
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = call i64 @lan743x_ptp_request_tx_timestamp(%struct.TYPE_4__* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %84

69:                                               ; preds = %63
  %70 = load i32, i32* @SKBTX_IN_PROGRESS, align 4
  %71 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %72 = call %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff* %71)
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %70
  store i32 %75, i32* %73, align 8
  store i32 1, i32* %10, align 4
  %76 = load %struct.lan743x_tx*, %struct.lan743x_tx** %3, align 8
  %77 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @TX_TS_FLAG_ONE_STEP_SYNC, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %69
  store i32 1, i32* %11, align 4
  br label %83

83:                                               ; preds = %82, %69
  br label %84

84:                                               ; preds = %83, %63, %56, %48
  %85 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %86 = call i32 @skb_headlen(%struct.sk_buff* %85)
  store i32 %86, i32* %8, align 4
  %87 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %88 = call i32 @skb_pagelen(%struct.sk_buff* %87)
  store i32 %88, i32* %7, align 4
  %89 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %90 = call %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff* %89)
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %7, align 4
  store i32 %93, i32* %6, align 4
  %94 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %95 = call i32 @skb_is_gso(%struct.sk_buff* %94)
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* %13, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %84
  %99 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %100 = call %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff* %99)
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @max(i32 %102, i16 zeroext 8)
  store i32 %103, i32* %6, align 4
  br label %104

104:                                              ; preds = %98, %84
  %105 = load %struct.lan743x_tx*, %struct.lan743x_tx** %3, align 8
  %106 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %107 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* %10, align 4
  %112 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %113 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %116 = icmp eq i64 %114, %115
  %117 = zext i1 %116 to i32
  %118 = call i64 @lan743x_tx_frame_start(%struct.lan743x_tx* %105, i32 %108, i32 %109, i32 %110, i32 %111, i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %104
  %121 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %122 = call i32 @dev_kfree_skb(%struct.sk_buff* %121)
  br label %167

123:                                              ; preds = %104
  %124 = load i32, i32* %13, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %123
  %127 = load %struct.lan743x_tx*, %struct.lan743x_tx** %3, align 8
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* %12, align 4
  %130 = call i32 @lan743x_tx_frame_add_lso(%struct.lan743x_tx* %127, i32 %128, i32 %129)
  br label %131

131:                                              ; preds = %126, %123
  %132 = load i32, i32* %12, align 4
  %133 = icmp sle i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %131
  br label %161

135:                                              ; preds = %131
  store i32 0, i32* %14, align 4
  br label %136

136:                                              ; preds = %157, %135
  %137 = load i32, i32* %14, align 4
  %138 = load i32, i32* %12, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %160

140:                                              ; preds = %136
  %141 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %142 = call %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff* %141)
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 2
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %14, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  store i32* %147, i32** %15, align 8
  %148 = load %struct.lan743x_tx*, %struct.lan743x_tx** %3, align 8
  %149 = load i32*, i32** %15, align 8
  %150 = load i32, i32* %7, align 4
  %151 = call i64 @lan743x_tx_frame_add_fragment(%struct.lan743x_tx* %148, i32* %149, i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %140
  %154 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %155 = call i32 @dev_kfree_skb(%struct.sk_buff* %154)
  br label %167

156:                                              ; preds = %140
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %14, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %14, align 4
  br label %136

160:                                              ; preds = %136
  br label %161

161:                                              ; preds = %160, %134
  %162 = load %struct.lan743x_tx*, %struct.lan743x_tx** %3, align 8
  %163 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %164 = load i32, i32* %10, align 4
  %165 = load i32, i32* %11, align 4
  %166 = call i32 @lan743x_tx_frame_end(%struct.lan743x_tx* %162, %struct.sk_buff* %163, i32 %164, i32 %165)
  br label %167

167:                                              ; preds = %161, %153, %120, %47
  %168 = load %struct.lan743x_tx*, %struct.lan743x_tx** %3, align 8
  %169 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %168, i32 0, i32 2
  %170 = load i64, i64* %9, align 8
  %171 = call i32 @spin_unlock_irqrestore(i32* %169, i64 %170)
  %172 = load i32, i32* @NETDEV_TX_OK, align 4
  ret i32 %172
}

declare dso_local i32 @lan743x_tx_get_desc_cnt(%struct.lan743x_tx*, %struct.sk_buff*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @lan743x_tx_get_avail_desc(%struct.lan743x_tx*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @netif_stop_queue(i32) #1

declare dso_local %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @lan743x_ptp_request_tx_timestamp(%struct.TYPE_4__*) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @skb_pagelen(%struct.sk_buff*) #1

declare dso_local i32 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i32 @max(i32, i16 zeroext) #1

declare dso_local i64 @lan743x_tx_frame_start(%struct.lan743x_tx*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @lan743x_tx_frame_add_lso(%struct.lan743x_tx*, i32, i32) #1

declare dso_local i64 @lan743x_tx_frame_add_fragment(%struct.lan743x_tx*, i32*, i32) #1

declare dso_local i32 @lan743x_tx_frame_end(%struct.lan743x_tx*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
