; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aeroflex/extr_greth.c_greth_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aeroflex/extr_greth.c_greth_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.greth_private = type { i32, i32, i32, %struct.TYPE_3__*, %struct.greth_bd* }
%struct.TYPE_3__ = type { i32 }
%struct.greth_bd = type { i32, i32 }
%struct.sk_buff = type { i32 }

@GRETH_INT_RE = common dso_local global i32 0, align 4
@GRETH_INT_RX = common dso_local global i32 0, align 4
@GRETH_BD_EN = common dso_local global i32 0, align 4
@GRETH_RXBD_STATUS = common dso_local global i32 0, align 4
@GRETH_RXBD_ERR_FT = common dso_local global i32 0, align 4
@GRETH_RXBD_ERR_AE = common dso_local global i32 0, align 4
@GRETH_RXBD_ERR_OE = common dso_local global i32 0, align 4
@GRETH_RXBD_ERR_CRC = common dso_local global i32 0, align 4
@GRETH_BD_LEN = common dso_local global i32 0, align 4
@NET_IP_ALIGN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"low on memory - packet dropped\0A\00", align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@GRETH_BD_IE = common dso_local global i32 0, align 4
@GRETH_RXBD_NUM_MASK = common dso_local global i64 0, align 8
@GRETH_BD_WR = common dso_local global i32 0, align 4
@MAX_FRAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @greth_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @greth_rx(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.greth_private*, align 8
  %6 = alloca %struct.greth_bd*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = call %struct.greth_private* @netdev_priv(%struct.net_device* %14)
  store %struct.greth_private* %15, %struct.greth_private** %5, align 8
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %220, %2
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %223

20:                                               ; preds = %16
  %21 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %22 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %21, i32 0, i32 4
  %23 = load %struct.greth_bd*, %struct.greth_bd** %22, align 8
  %24 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %25 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.greth_bd, %struct.greth_bd* %23, i64 %27
  store %struct.greth_bd* %28, %struct.greth_bd** %6, align 8
  %29 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %30 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %29, i32 0, i32 3
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @GRETH_INT_RE, align 4
  %35 = load i32, i32* @GRETH_INT_RX, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @GRETH_REGSAVE(i32 %33, i32 %36)
  %38 = call i32 (...) @mb()
  %39 = load %struct.greth_bd*, %struct.greth_bd** %6, align 8
  %40 = getelementptr inbounds %struct.greth_bd, %struct.greth_bd* %39, i32 0, i32 0
  %41 = call i32 @greth_read_bd(i32* %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @GRETH_BD_EN, align 4
  %44 = and i32 %42, %43
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %20
  br label %223

48:                                               ; preds = %20
  %49 = load %struct.greth_bd*, %struct.greth_bd** %6, align 8
  %50 = getelementptr inbounds %struct.greth_bd, %struct.greth_bd* %49, i32 0, i32 1
  %51 = call i32 @greth_read_bd(i32* %50)
  store i32 %51, i32* %12, align 4
  store i32 0, i32* %9, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @GRETH_RXBD_STATUS, align 4
  %54 = and i32 %52, %53
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %93

57:                                               ; preds = %48
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @GRETH_RXBD_ERR_FT, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load %struct.net_device*, %struct.net_device** %3, align 8
  %64 = getelementptr inbounds %struct.net_device, %struct.net_device* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  store i32 1, i32* %9, align 4
  br label %68

68:                                               ; preds = %62, %57
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @GRETH_RXBD_ERR_AE, align 4
  %71 = load i32, i32* @GRETH_RXBD_ERR_OE, align 4
  %72 = or i32 %70, %71
  %73 = and i32 %69, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %68
  %76 = load %struct.net_device*, %struct.net_device** %3, align 8
  %77 = getelementptr inbounds %struct.net_device, %struct.net_device* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  store i32 1, i32* %9, align 4
  br label %81

81:                                               ; preds = %75, %68
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* @GRETH_RXBD_ERR_CRC, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = load %struct.net_device*, %struct.net_device** %3, align 8
  %88 = getelementptr inbounds %struct.net_device, %struct.net_device* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 4
  store i32 1, i32* %9, align 4
  br label %92

92:                                               ; preds = %86, %81
  br label %93

93:                                               ; preds = %92, %48
  %94 = load i32, i32* %9, align 4
  %95 = call i64 @unlikely(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %93
  %98 = load %struct.net_device*, %struct.net_device** %3, align 8
  %99 = getelementptr inbounds %struct.net_device, %struct.net_device* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 4
  br label %175

103:                                              ; preds = %93
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* @GRETH_BD_LEN, align 4
  %106 = and i32 %104, %105
  store i32 %106, i32* %8, align 4
  %107 = load %struct.net_device*, %struct.net_device** %3, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = load i64, i64* @NET_IP_ALIGN, align 8
  %111 = add nsw i64 %109, %110
  %112 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %107, i64 %111)
  store %struct.sk_buff* %112, %struct.sk_buff** %7, align 8
  %113 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %114 = icmp eq %struct.sk_buff* %113, null
  %115 = zext i1 %114 to i32
  %116 = call i64 @unlikely(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %131

118:                                              ; preds = %103
  %119 = call i64 (...) @net_ratelimit()
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %118
  %122 = load %struct.net_device*, %struct.net_device** %3, align 8
  %123 = getelementptr inbounds %struct.net_device, %struct.net_device* %122, i32 0, i32 1
  %124 = call i32 @dev_warn(i32* %123, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %125

125:                                              ; preds = %121, %118
  %126 = load %struct.net_device*, %struct.net_device** %3, align 8
  %127 = getelementptr inbounds %struct.net_device, %struct.net_device* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %128, align 4
  br label %174

131:                                              ; preds = %103
  %132 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %133 = load i64, i64* @NET_IP_ALIGN, align 8
  %134 = call i32 @skb_reserve(%struct.sk_buff* %132, i64 %133)
  %135 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %136 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %12, align 4
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %141 = call i32 @dma_sync_single_for_cpu(i32 %137, i32 %138, i32 %139, i32 %140)
  %142 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %143 = call i64 @netif_msg_pktdata(%struct.greth_private* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %131
  %146 = load i32, i32* %12, align 4
  %147 = call i32 @phys_to_virt(i32 %146)
  %148 = load i32, i32* %8, align 4
  %149 = call i32 @greth_print_rx_packet(i32 %147, i32 %148)
  br label %150

150:                                              ; preds = %145, %131
  %151 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %152 = load i32, i32* %12, align 4
  %153 = call i32 @phys_to_virt(i32 %152)
  %154 = load i32, i32* %8, align 4
  %155 = call i32 @skb_put_data(%struct.sk_buff* %151, i32 %153, i32 %154)
  %156 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %157 = load %struct.net_device*, %struct.net_device** %3, align 8
  %158 = call i32 @eth_type_trans(%struct.sk_buff* %156, %struct.net_device* %157)
  %159 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %160 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %159, i32 0, i32 0
  store i32 %158, i32* %160, align 4
  %161 = load i32, i32* %8, align 4
  %162 = load %struct.net_device*, %struct.net_device** %3, align 8
  %163 = getelementptr inbounds %struct.net_device, %struct.net_device* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = add nsw i32 %165, %161
  store i32 %166, i32* %164, align 4
  %167 = load %struct.net_device*, %struct.net_device** %3, align 8
  %168 = getelementptr inbounds %struct.net_device, %struct.net_device* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %169, align 4
  %172 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %173 = call i32 @netif_receive_skb(%struct.sk_buff* %172)
  br label %174

174:                                              ; preds = %150, %125
  br label %175

175:                                              ; preds = %174, %97
  %176 = load i32, i32* @GRETH_BD_EN, align 4
  %177 = load i32, i32* @GRETH_BD_IE, align 4
  %178 = or i32 %176, %177
  store i32 %178, i32* %11, align 4
  %179 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %180 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = sext i32 %181 to i64
  %183 = load i64, i64* @GRETH_RXBD_NUM_MASK, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %189

185:                                              ; preds = %175
  %186 = load i32, i32* @GRETH_BD_WR, align 4
  %187 = load i32, i32* %11, align 4
  %188 = or i32 %187, %186
  store i32 %188, i32* %11, align 4
  br label %189

189:                                              ; preds = %185, %175
  %190 = call i32 (...) @wmb()
  %191 = load %struct.greth_bd*, %struct.greth_bd** %6, align 8
  %192 = getelementptr inbounds %struct.greth_bd, %struct.greth_bd* %191, i32 0, i32 0
  %193 = load i32, i32* %11, align 4
  %194 = call i32 @greth_write_bd(i32* %192, i32 %193)
  %195 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %196 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* %12, align 4
  %199 = load i32, i32* @MAX_FRAME_SIZE, align 4
  %200 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %201 = call i32 @dma_sync_single_for_device(i32 %197, i32 %198, i32 %199, i32 %200)
  %202 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %203 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %202, i32 0, i32 1
  %204 = load i64, i64* %13, align 8
  %205 = call i32 @spin_lock_irqsave(i32* %203, i64 %204)
  %206 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %207 = call i32 @greth_enable_rx(%struct.greth_private* %206)
  %208 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %209 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %208, i32 0, i32 1
  %210 = load i64, i64* %13, align 8
  %211 = call i32 @spin_unlock_irqrestore(i32* %209, i64 %210)
  %212 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %213 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = sext i32 %214 to i64
  %216 = call i64 @NEXT_RX(i64 %215)
  %217 = trunc i64 %216 to i32
  %218 = load %struct.greth_private*, %struct.greth_private** %5, align 8
  %219 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %218, i32 0, i32 0
  store i32 %217, i32* %219, align 8
  br label %220

220:                                              ; preds = %189
  %221 = load i32, i32* %10, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %10, align 4
  br label %16

223:                                              ; preds = %47, %16
  %224 = load i32, i32* %10, align 4
  ret i32 %224
}

declare dso_local %struct.greth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @GRETH_REGSAVE(i32, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @greth_read_bd(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i64) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i64 @netif_msg_pktdata(%struct.greth_private*) #1

declare dso_local i32 @greth_print_rx_packet(i32, i32) #1

declare dso_local i32 @phys_to_virt(i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @greth_write_bd(i32*, i32) #1

declare dso_local i32 @dma_sync_single_for_device(i32, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @greth_enable_rx(%struct.greth_private*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @NEXT_RX(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
