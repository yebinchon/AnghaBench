; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc.c_enetc_clean_rx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc.c_enetc_clean_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enetc_bdr = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.napi_struct = type { i32 }
%union.enetc_rx_bd = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.sk_buff = type { i64 }

@ENETC_RXBD_BUNDLE = common dso_local global i32 0, align 4
@ENETC_RXBD_ERR_MASK = common dso_local global i32 0, align 4
@ENETC_RXBD_LSTATUS_F = common dso_local global i32 0, align 4
@ENETC_RXB_DMA_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.enetc_bdr*, %struct.napi_struct*, i32)* @enetc_clean_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enetc_clean_rx_ring(%struct.enetc_bdr* %0, %struct.napi_struct* %1, i32 %2) #0 {
  %4 = alloca %struct.enetc_bdr*, align 8
  %5 = alloca %struct.napi_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %union.enetc_rx_bd*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.enetc_bdr* %0, %struct.enetc_bdr** %4, align 8
  store %struct.napi_struct* %1, %struct.napi_struct** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %16 = load %struct.enetc_bdr*, %struct.enetc_bdr** %4, align 8
  %17 = call i32 @enetc_bd_unused(%struct.enetc_bdr* %16)
  store i32 %17, i32* %9, align 4
  %18 = load %struct.enetc_bdr*, %struct.enetc_bdr** %4, align 8
  %19 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %10, align 4
  br label %21

21:                                               ; preds = %198, %3
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i64 @likely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %214

28:                                               ; preds = %21
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @ENETC_RXBD_BUNDLE, align 4
  %31 = icmp sge i32 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load %struct.enetc_bdr*, %struct.enetc_bdr** %4, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @enetc_refill_rx_ring(%struct.enetc_bdr* %33, i32 %34)
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* %9, align 4
  %38 = sub nsw i32 %37, %36
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %32, %28
  %40 = load %struct.enetc_bdr*, %struct.enetc_bdr** %4, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call %union.enetc_rx_bd* @ENETC_RXBD(%struct.enetc_bdr* byval(%struct.enetc_bdr) align 8 %40, i32 %41)
  store %union.enetc_rx_bd* %42, %union.enetc_rx_bd** %11, align 8
  %43 = load %union.enetc_rx_bd*, %union.enetc_rx_bd** %11, align 8
  %44 = bitcast %union.enetc_rx_bd* %43 to %struct.TYPE_7__*
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @le32_to_cpu(i32 %46)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %39
  br label %214

51:                                               ; preds = %39
  %52 = load %struct.enetc_bdr*, %struct.enetc_bdr** %4, align 8
  %53 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.enetc_bdr*, %struct.enetc_bdr** %4, align 8
  %56 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @BIT(i32 %57)
  %59 = call i32 @enetc_wr_reg(i32 %54, i32 %58)
  %60 = call i32 (...) @dma_rmb()
  %61 = load %union.enetc_rx_bd*, %union.enetc_rx_bd** %11, align 8
  %62 = bitcast %union.enetc_rx_bd* %61 to %struct.TYPE_7__*
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @le16_to_cpu(i32 %64)
  store i32 %65, i32* %14, align 4
  %66 = load %struct.enetc_bdr*, %struct.enetc_bdr** %4, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %14, align 4
  %69 = call %struct.sk_buff* @enetc_map_rx_buff_to_skb(%struct.enetc_bdr* %66, i32 %67, i32 %68)
  store %struct.sk_buff* %69, %struct.sk_buff** %12, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %71 = icmp ne %struct.sk_buff* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %51
  br label %214

73:                                               ; preds = %51
  %74 = load %struct.enetc_bdr*, %struct.enetc_bdr** %4, align 8
  %75 = load %union.enetc_rx_bd*, %union.enetc_rx_bd** %11, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %77 = call i32 @enetc_get_offloads(%struct.enetc_bdr* %74, %union.enetc_rx_bd* %75, %struct.sk_buff* %76)
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  %80 = load %union.enetc_rx_bd*, %union.enetc_rx_bd** %11, align 8
  %81 = getelementptr inbounds %union.enetc_rx_bd, %union.enetc_rx_bd* %80, i32 1
  store %union.enetc_rx_bd* %81, %union.enetc_rx_bd** %11, align 8
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load %struct.enetc_bdr*, %struct.enetc_bdr** %4, align 8
  %86 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %84, %87
  %89 = zext i1 %88 to i32
  %90 = call i64 @unlikely(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %73
  store i32 0, i32* %10, align 4
  %93 = load %struct.enetc_bdr*, %struct.enetc_bdr** %4, align 8
  %94 = call %union.enetc_rx_bd* @ENETC_RXBD(%struct.enetc_bdr* byval(%struct.enetc_bdr) align 8 %93, i32 0)
  store %union.enetc_rx_bd* %94, %union.enetc_rx_bd** %11, align 8
  br label %95

95:                                               ; preds = %92, %73
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* @ENETC_RXBD_ERR_MASK, align 4
  %98 = call i32 @ENETC_RXBD_LSTATUS(i32 %97)
  %99 = and i32 %96, %98
  %100 = call i64 @unlikely(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %149

102:                                              ; preds = %95
  %103 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %104 = call i32 @dev_kfree_skb(%struct.sk_buff* %103)
  br label %105

105:                                              ; preds = %133, %102
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* @ENETC_RXBD_LSTATUS_F, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  %110 = xor i1 %109, true
  br i1 %110, label %111, label %134

111:                                              ; preds = %105
  %112 = call i32 (...) @dma_rmb()
  %113 = load %union.enetc_rx_bd*, %union.enetc_rx_bd** %11, align 8
  %114 = bitcast %union.enetc_rx_bd* %113 to %struct.TYPE_7__*
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @le32_to_cpu(i32 %116)
  store i32 %117, i32* %13, align 4
  %118 = load %union.enetc_rx_bd*, %union.enetc_rx_bd** %11, align 8
  %119 = getelementptr inbounds %union.enetc_rx_bd, %union.enetc_rx_bd* %118, i32 1
  store %union.enetc_rx_bd* %119, %union.enetc_rx_bd** %11, align 8
  %120 = load i32, i32* %10, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %10, align 4
  %122 = load i32, i32* %10, align 4
  %123 = load %struct.enetc_bdr*, %struct.enetc_bdr** %4, align 8
  %124 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = icmp eq i32 %122, %125
  %127 = zext i1 %126 to i32
  %128 = call i64 @unlikely(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %111
  store i32 0, i32* %10, align 4
  %131 = load %struct.enetc_bdr*, %struct.enetc_bdr** %4, align 8
  %132 = call %union.enetc_rx_bd* @ENETC_RXBD(%struct.enetc_bdr* byval(%struct.enetc_bdr) align 8 %131, i32 0)
  store %union.enetc_rx_bd* %132, %union.enetc_rx_bd** %11, align 8
  br label %133

133:                                              ; preds = %130, %111
  br label %105

134:                                              ; preds = %105
  %135 = load %struct.enetc_bdr*, %struct.enetc_bdr** %4, align 8
  %136 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %135, i32 0, i32 3
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %139, align 4
  %142 = load %struct.enetc_bdr*, %struct.enetc_bdr** %4, align 8
  %143 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %142, i32 0, i32 3
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %146, align 4
  br label %214

149:                                              ; preds = %95
  br label %150

150:                                              ; preds = %197, %149
  %151 = load i32, i32* %13, align 4
  %152 = load i32, i32* @ENETC_RXBD_LSTATUS_F, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  %155 = xor i1 %154, true
  br i1 %155, label %156, label %198

156:                                              ; preds = %150
  %157 = load %union.enetc_rx_bd*, %union.enetc_rx_bd** %11, align 8
  %158 = bitcast %union.enetc_rx_bd* %157 to %struct.TYPE_7__*
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @le32_to_cpu(i32 %160)
  store i32 %161, i32* %13, align 4
  %162 = load i32, i32* @ENETC_RXB_DMA_SIZE, align 4
  store i32 %162, i32* %14, align 4
  %163 = load i32, i32* %13, align 4
  %164 = load i32, i32* @ENETC_RXBD_LSTATUS_F, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %174

167:                                              ; preds = %156
  %168 = call i32 (...) @dma_rmb()
  %169 = load %union.enetc_rx_bd*, %union.enetc_rx_bd** %11, align 8
  %170 = bitcast %union.enetc_rx_bd* %169 to %struct.TYPE_7__*
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @le16_to_cpu(i32 %172)
  store i32 %173, i32* %14, align 4
  br label %174

174:                                              ; preds = %167, %156
  %175 = load %struct.enetc_bdr*, %struct.enetc_bdr** %4, align 8
  %176 = load i32, i32* %10, align 4
  %177 = load i32, i32* %14, align 4
  %178 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %179 = call i32 @enetc_add_rx_buff_to_skb(%struct.enetc_bdr* %175, i32 %176, i32 %177, %struct.sk_buff* %178)
  %180 = load i32, i32* %9, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %9, align 4
  %182 = load %union.enetc_rx_bd*, %union.enetc_rx_bd** %11, align 8
  %183 = getelementptr inbounds %union.enetc_rx_bd, %union.enetc_rx_bd* %182, i32 1
  store %union.enetc_rx_bd* %183, %union.enetc_rx_bd** %11, align 8
  %184 = load i32, i32* %10, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %10, align 4
  %186 = load i32, i32* %10, align 4
  %187 = load %struct.enetc_bdr*, %struct.enetc_bdr** %4, align 8
  %188 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = icmp eq i32 %186, %189
  %191 = zext i1 %190 to i32
  %192 = call i64 @unlikely(i32 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %174
  store i32 0, i32* %10, align 4
  %195 = load %struct.enetc_bdr*, %struct.enetc_bdr** %4, align 8
  %196 = call %union.enetc_rx_bd* @ENETC_RXBD(%struct.enetc_bdr* byval(%struct.enetc_bdr) align 8 %195, i32 0)
  store %union.enetc_rx_bd* %196, %union.enetc_rx_bd** %11, align 8
  br label %197

197:                                              ; preds = %194, %174
  br label %150

198:                                              ; preds = %150
  %199 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %200 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load i32, i32* %8, align 4
  %203 = sext i32 %202 to i64
  %204 = add nsw i64 %203, %201
  %205 = trunc i64 %204 to i32
  store i32 %205, i32* %8, align 4
  %206 = load %struct.enetc_bdr*, %struct.enetc_bdr** %4, align 8
  %207 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %208 = call i32 @enetc_process_skb(%struct.enetc_bdr* %206, %struct.sk_buff* %207)
  %209 = load %struct.napi_struct*, %struct.napi_struct** %5, align 8
  %210 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %211 = call i32 @napi_gro_receive(%struct.napi_struct* %209, %struct.sk_buff* %210)
  %212 = load i32, i32* %7, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %7, align 4
  br label %21

214:                                              ; preds = %134, %72, %50, %21
  %215 = load i32, i32* %10, align 4
  %216 = load %struct.enetc_bdr*, %struct.enetc_bdr** %4, align 8
  %217 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %216, i32 0, i32 0
  store i32 %215, i32* %217, align 8
  %218 = load i32, i32* %7, align 4
  %219 = load %struct.enetc_bdr*, %struct.enetc_bdr** %4, align 8
  %220 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %219, i32 0, i32 2
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = add nsw i32 %222, %218
  store i32 %223, i32* %221, align 8
  %224 = load i32, i32* %8, align 4
  %225 = load %struct.enetc_bdr*, %struct.enetc_bdr** %4, align 8
  %226 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %225, i32 0, i32 2
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = add nsw i32 %228, %224
  store i32 %229, i32* %227, align 4
  %230 = load i32, i32* %7, align 4
  ret i32 %230
}

declare dso_local i32 @enetc_bd_unused(%struct.enetc_bdr*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @enetc_refill_rx_ring(%struct.enetc_bdr*, i32) #1

declare dso_local %union.enetc_rx_bd* @ENETC_RXBD(%struct.enetc_bdr* byval(%struct.enetc_bdr) align 8, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @enetc_wr_reg(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dma_rmb(...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.sk_buff* @enetc_map_rx_buff_to_skb(%struct.enetc_bdr*, i32, i32) #1

declare dso_local i32 @enetc_get_offloads(%struct.enetc_bdr*, %union.enetc_rx_bd*, %struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ENETC_RXBD_LSTATUS(i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @enetc_add_rx_buff_to_skb(%struct.enetc_bdr*, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @enetc_process_skb(%struct.enetc_bdr*, %struct.sk_buff*) #1

declare dso_local i32 @napi_gro_receive(%struct.napi_struct*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
