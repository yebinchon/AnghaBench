; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.macb = type { i32, i32, i32, i32, %struct.macb_queue* }
%struct.macb_queue = type { i32, i32 }
%struct.TYPE_3__ = type { i64, i32, i32* }
%struct.TYPE_4__ = type { i64 }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Error - LSO headers fragmented!!!\0A\00", align 1
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"tx_head = %u, tx_tail = %u\0A\00", align 1
@NCR = common dso_local global i32 0, align 4
@TSTART = common dso_local global i32 0, align 4
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @macb_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macb_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.macb*, align 8
  %8 = alloca %struct.macb_queue*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = call i64 @skb_get_queue_mapping(%struct.sk_buff* %18)
  store i64 %19, i64* %6, align 8
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = call %struct.macb* @netdev_priv(%struct.net_device* %20)
  store %struct.macb* %21, %struct.macb** %7, align 8
  %22 = load %struct.macb*, %struct.macb** %7, align 8
  %23 = getelementptr inbounds %struct.macb, %struct.macb* %22, i32 0, i32 4
  %24 = load %struct.macb_queue*, %struct.macb_queue** %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %24, i64 %25
  store %struct.macb_queue* %26, %struct.macb_queue** %8, align 8
  store i32 0, i32* %16, align 4
  %27 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %27, i32* %17, align 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = call i64 @macb_clear_csum(%struct.sk_buff* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %2
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %32)
  %34 = load i32, i32* %17, align 4
  store i32 %34, i32* %3, align 4
  br label %226

35:                                               ; preds = %2
  %36 = load %struct.net_device*, %struct.net_device** %5, align 8
  %37 = call i64 @macb_pad_and_fcs(%struct.sk_buff** %4, %struct.net_device* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %40)
  %42 = load i32, i32* %17, align 4
  store i32 %42, i32* %3, align 4
  br label %226

43:                                               ; preds = %35
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = call %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff* %44)
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %15, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %85

52:                                               ; preds = %43
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = call %struct.TYPE_4__* @ip_hdr(%struct.sk_buff* %53)
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @IPPROTO_UDP, align 8
  %58 = icmp eq i64 %56, %57
  %59 = xor i1 %58, true
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %16, align 4
  %62 = load i32, i32* %16, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %52
  %65 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %66 = call i32 @skb_transport_offset(%struct.sk_buff* %65)
  store i32 %66, i32* %14, align 4
  br label %73

67:                                               ; preds = %52
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = call i32 @skb_transport_offset(%struct.sk_buff* %68)
  %70 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %71 = call i32 @tcp_hdrlen(%struct.sk_buff* %70)
  %72 = add i32 %69, %71
  store i32 %72, i32* %14, align 4
  br label %73

73:                                               ; preds = %67, %64
  %74 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %75 = call i32 @skb_headlen(%struct.sk_buff* %74)
  %76 = load i32, i32* %14, align 4
  %77 = icmp ult i32 %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load %struct.macb*, %struct.macb** %7, align 8
  %80 = getelementptr inbounds %struct.macb, %struct.macb* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @netdev_err(i32 %81, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %83 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %83, i32* %3, align 4
  br label %226

84:                                               ; preds = %73
  br label %92

85:                                               ; preds = %43
  %86 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %87 = call i32 @skb_headlen(%struct.sk_buff* %86)
  %88 = load %struct.macb*, %struct.macb** %7, align 8
  %89 = getelementptr inbounds %struct.macb, %struct.macb* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @min(i32 %87, i32 %90)
  store i32 %91, i32* %14, align 4
  br label %92

92:                                               ; preds = %85, %84
  %93 = load i32, i32* %15, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %110

95:                                               ; preds = %92
  %96 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %97 = call i32 @skb_headlen(%struct.sk_buff* %96)
  %98 = load i32, i32* %14, align 4
  %99 = icmp ugt i32 %97, %98
  br i1 %99, label %100, label %110

100:                                              ; preds = %95
  %101 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %102 = call i32 @skb_headlen(%struct.sk_buff* %101)
  %103 = load i32, i32* %14, align 4
  %104 = sub i32 %102, %103
  %105 = load %struct.macb*, %struct.macb** %7, align 8
  %106 = getelementptr inbounds %struct.macb, %struct.macb* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @DIV_ROUND_UP(i32 %104, i32 %107)
  %109 = add i32 %108, 1
  store i32 %109, i32* %10, align 4
  br label %117

110:                                              ; preds = %95, %92
  %111 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %112 = call i32 @skb_headlen(%struct.sk_buff* %111)
  %113 = load %struct.macb*, %struct.macb** %7, align 8
  %114 = getelementptr inbounds %struct.macb, %struct.macb* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @DIV_ROUND_UP(i32 %112, i32 %115)
  store i32 %116, i32* %10, align 4
  br label %117

117:                                              ; preds = %110, %100
  %118 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %119 = call %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff* %118)
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  store i32 %121, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %122

122:                                              ; preds = %142, %117
  %123 = load i32, i32* %13, align 4
  %124 = load i32, i32* %11, align 4
  %125 = icmp ult i32 %123, %124
  br i1 %125, label %126, label %145

126:                                              ; preds = %122
  %127 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %128 = call %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff* %127)
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %13, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = call i32 @skb_frag_size(i32* %133)
  store i32 %134, i32* %12, align 4
  %135 = load i32, i32* %12, align 4
  %136 = load %struct.macb*, %struct.macb** %7, align 8
  %137 = getelementptr inbounds %struct.macb, %struct.macb* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @DIV_ROUND_UP(i32 %135, i32 %138)
  %140 = load i32, i32* %10, align 4
  %141 = add i32 %140, %139
  store i32 %141, i32* %10, align 4
  br label %142

142:                                              ; preds = %126
  %143 = load i32, i32* %13, align 4
  %144 = add i32 %143, 1
  store i32 %144, i32* %13, align 4
  br label %122

145:                                              ; preds = %122
  %146 = load %struct.macb*, %struct.macb** %7, align 8
  %147 = getelementptr inbounds %struct.macb, %struct.macb* %146, i32 0, i32 0
  %148 = load i64, i64* %9, align 8
  %149 = call i32 @spin_lock_irqsave(i32* %147, i64 %148)
  %150 = load %struct.macb_queue*, %struct.macb_queue** %8, align 8
  %151 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.macb_queue*, %struct.macb_queue** %8, align 8
  %154 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.macb*, %struct.macb** %7, align 8
  %157 = getelementptr inbounds %struct.macb, %struct.macb* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @CIRC_SPACE(i32 %152, i32 %155, i32 %158)
  %160 = load i32, i32* %10, align 4
  %161 = icmp ult i32 %159, %160
  br i1 %161, label %162, label %181

162:                                              ; preds = %145
  %163 = load %struct.net_device*, %struct.net_device** %5, align 8
  %164 = load i64, i64* %6, align 8
  %165 = call i32 @netif_stop_subqueue(%struct.net_device* %163, i64 %164)
  %166 = load %struct.macb*, %struct.macb** %7, align 8
  %167 = getelementptr inbounds %struct.macb, %struct.macb* %166, i32 0, i32 0
  %168 = load i64, i64* %9, align 8
  %169 = call i32 @spin_unlock_irqrestore(i32* %167, i64 %168)
  %170 = load %struct.macb*, %struct.macb** %7, align 8
  %171 = getelementptr inbounds %struct.macb, %struct.macb* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.macb_queue*, %struct.macb_queue** %8, align 8
  %174 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.macb_queue*, %struct.macb_queue** %8, align 8
  %177 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @netdev_dbg(i32 %172, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %175, i32 %178)
  %180 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %180, i32* %3, align 4
  br label %226

181:                                              ; preds = %145
  %182 = load %struct.macb*, %struct.macb** %7, align 8
  %183 = load %struct.macb_queue*, %struct.macb_queue** %8, align 8
  %184 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %185 = load i32, i32* %14, align 4
  %186 = call i32 @macb_tx_map(%struct.macb* %182, %struct.macb_queue* %183, %struct.sk_buff* %184, i32 %185)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %191, label %188

188:                                              ; preds = %181
  %189 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %190 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %189)
  br label %220

191:                                              ; preds = %181
  %192 = call i32 (...) @wmb()
  %193 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %194 = call i32 @skb_tx_timestamp(%struct.sk_buff* %193)
  %195 = load %struct.macb*, %struct.macb** %7, align 8
  %196 = load i32, i32* @NCR, align 4
  %197 = load %struct.macb*, %struct.macb** %7, align 8
  %198 = load i32, i32* @NCR, align 4
  %199 = call i32 @macb_readl(%struct.macb* %197, i32 %198)
  %200 = load i32, i32* @TSTART, align 4
  %201 = call i32 @MACB_BIT(i32 %200)
  %202 = or i32 %199, %201
  %203 = call i32 @macb_writel(%struct.macb* %195, i32 %196, i32 %202)
  %204 = load %struct.macb_queue*, %struct.macb_queue** %8, align 8
  %205 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.macb_queue*, %struct.macb_queue** %8, align 8
  %208 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.macb*, %struct.macb** %7, align 8
  %211 = getelementptr inbounds %struct.macb, %struct.macb* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @CIRC_SPACE(i32 %206, i32 %209, i32 %212)
  %214 = icmp slt i32 %213, 1
  br i1 %214, label %215, label %219

215:                                              ; preds = %191
  %216 = load %struct.net_device*, %struct.net_device** %5, align 8
  %217 = load i64, i64* %6, align 8
  %218 = call i32 @netif_stop_subqueue(%struct.net_device* %216, i64 %217)
  br label %219

219:                                              ; preds = %215, %191
  br label %220

220:                                              ; preds = %219, %188
  %221 = load %struct.macb*, %struct.macb** %7, align 8
  %222 = getelementptr inbounds %struct.macb, %struct.macb* %221, i32 0, i32 0
  %223 = load i64, i64* %9, align 8
  %224 = call i32 @spin_unlock_irqrestore(i32* %222, i64 %223)
  %225 = load i32, i32* %17, align 4
  store i32 %225, i32* %3, align 4
  br label %226

226:                                              ; preds = %220, %162, %78, %39, %31
  %227 = load i32, i32* %3, align 4
  ret i32 %227
}

declare dso_local i64 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local %struct.macb* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @macb_clear_csum(%struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i64 @macb_pad_and_fcs(%struct.sk_buff**, %struct.net_device*) #1

declare dso_local %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_4__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i32 @tcp_hdrlen(%struct.sk_buff*) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @CIRC_SPACE(i32, i32, i32) #1

declare dso_local i32 @netif_stop_subqueue(%struct.net_device*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @macb_tx_map(%struct.macb*, %struct.macb_queue*, %struct.sk_buff*, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @skb_tx_timestamp(%struct.sk_buff*) #1

declare dso_local i32 @macb_writel(%struct.macb*, i32, i32) #1

declare dso_local i32 @macb_readl(%struct.macb*, i32) #1

declare dso_local i32 @MACB_BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
