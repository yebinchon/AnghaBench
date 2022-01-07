; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_cq_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_cq_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnad = type { %struct.sk_buff* }
%struct.sk_buff = type { i32, i32 }
%struct.bna_ccb = type { i64, %struct.bna_rcb**, i32, i32, i32, %struct.bna_cq_entry*, %struct.bnad_rx_ctrl*, %struct.bna_pkt_rate }
%struct.bna_rcb = type { i32, i32, i32, %struct.TYPE_2__*, %struct.bnad_rx_unmap_q* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.bnad_rx_unmap_q = type { i32, %struct.bnad_rx_unmap* }
%struct.bnad_rx_unmap = type { %struct.sk_buff* }
%struct.bna_cq_entry = type { i64, i32, i32, i32, i32 }
%struct.bnad_rx_ctrl = type { i32 }
%struct.bna_pkt_rate = type { i32 }

@BNA_CQ_EF_EOP = common dso_local global i32 0, align 4
@BNA_CQ_EF_MAC_ERROR = common dso_local global i32 0, align 4
@BNA_CQ_EF_FCS_ERROR = common dso_local global i32 0, align 4
@BNA_CQ_EF_TOO_LONG = common dso_local global i32 0, align 4
@flags_cksum_prot_mask = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@flags_tcp4 = common dso_local global i32 0, align 4
@flags_udp4 = common dso_local global i32 0, align 4
@flags_tcp6 = common dso_local global i32 0, align 4
@flags_udp6 = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@BNA_CQ_EF_VLAN = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@BNAD_RXQ_STARTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnad*, %struct.bna_ccb*, i32)* @bnad_cq_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnad_cq_process(%struct.bnad* %0, %struct.bna_ccb* %1, i32 %2) #0 {
  %4 = alloca %struct.bnad*, align 8
  %5 = alloca %struct.bna_ccb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bna_cq_entry*, align 8
  %8 = alloca %struct.bna_cq_entry*, align 8
  %9 = alloca %struct.bna_cq_entry*, align 8
  %10 = alloca %struct.bna_rcb*, align 8
  %11 = alloca %struct.bnad_rx_unmap_q*, align 8
  %12 = alloca %struct.bnad_rx_unmap*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca %struct.bna_pkt_rate*, align 8
  %15 = alloca %struct.bnad_rx_ctrl*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.bnad* %0, %struct.bnad** %4, align 8
  store %struct.bna_ccb* %1, %struct.bna_ccb** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.bna_rcb* null, %struct.bna_rcb** %10, align 8
  store %struct.bnad_rx_unmap* null, %struct.bnad_rx_unmap** %12, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %13, align 8
  %25 = load %struct.bna_ccb*, %struct.bna_ccb** %5, align 8
  %26 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %25, i32 0, i32 7
  store %struct.bna_pkt_rate* %26, %struct.bna_pkt_rate** %14, align 8
  %27 = load %struct.bna_ccb*, %struct.bna_ccb** %5, align 8
  %28 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %27, i32 0, i32 6
  %29 = load %struct.bnad_rx_ctrl*, %struct.bnad_rx_ctrl** %28, align 8
  store %struct.bnad_rx_ctrl* %29, %struct.bnad_rx_ctrl** %15, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %30 = load %struct.bnad*, %struct.bnad** %4, align 8
  %31 = getelementptr inbounds %struct.bnad, %struct.bnad* %30, i32 0, i32 0
  %32 = load %struct.sk_buff*, %struct.sk_buff** %31, align 8
  %33 = call i32 @prefetch(%struct.sk_buff* %32)
  %34 = load %struct.bna_ccb*, %struct.bna_ccb** %5, align 8
  %35 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %34, i32 0, i32 5
  %36 = load %struct.bna_cq_entry*, %struct.bna_cq_entry** %35, align 8
  store %struct.bna_cq_entry* %36, %struct.bna_cq_entry** %7, align 8
  br label %37

37:                                               ; preds = %350, %3
  %38 = load i32, i32* %16, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %351

41:                                               ; preds = %37
  %42 = load %struct.bna_cq_entry*, %struct.bna_cq_entry** %7, align 8
  %43 = load %struct.bna_ccb*, %struct.bna_ccb** %5, align 8
  %44 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.bna_cq_entry, %struct.bna_cq_entry* %42, i64 %45
  store %struct.bna_cq_entry* %46, %struct.bna_cq_entry** %8, align 8
  %47 = load %struct.bna_cq_entry*, %struct.bna_cq_entry** %8, align 8
  %48 = getelementptr inbounds %struct.bna_cq_entry, %struct.bna_cq_entry* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %41
  br label %351

52:                                               ; preds = %41
  %53 = call i32 (...) @rmb()
  %54 = load %struct.bna_pkt_rate*, %struct.bna_pkt_rate** %14, align 8
  %55 = load %struct.bna_cq_entry*, %struct.bna_cq_entry** %8, align 8
  %56 = getelementptr inbounds %struct.bna_cq_entry, %struct.bna_cq_entry* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @ntohs(i32 %57)
  %59 = call i32 @BNA_UPDATE_PKT_CNT(%struct.bna_pkt_rate* %54, i32 %58)
  %60 = load %struct.bna_cq_entry*, %struct.bna_cq_entry** %8, align 8
  %61 = getelementptr inbounds %struct.bna_cq_entry, %struct.bna_cq_entry* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @bna_is_small_rxq(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %52
  %66 = load %struct.bna_ccb*, %struct.bna_ccb** %5, align 8
  %67 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %66, i32 0, i32 1
  %68 = load %struct.bna_rcb**, %struct.bna_rcb*** %67, align 8
  %69 = getelementptr inbounds %struct.bna_rcb*, %struct.bna_rcb** %68, i64 1
  %70 = load %struct.bna_rcb*, %struct.bna_rcb** %69, align 8
  store %struct.bna_rcb* %70, %struct.bna_rcb** %10, align 8
  br label %77

71:                                               ; preds = %52
  %72 = load %struct.bna_ccb*, %struct.bna_ccb** %5, align 8
  %73 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %72, i32 0, i32 1
  %74 = load %struct.bna_rcb**, %struct.bna_rcb*** %73, align 8
  %75 = getelementptr inbounds %struct.bna_rcb*, %struct.bna_rcb** %74, i64 0
  %76 = load %struct.bna_rcb*, %struct.bna_rcb** %75, align 8
  store %struct.bna_rcb* %76, %struct.bna_rcb** %10, align 8
  br label %77

77:                                               ; preds = %71, %65
  %78 = load %struct.bna_rcb*, %struct.bna_rcb** %10, align 8
  %79 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %78, i32 0, i32 4
  %80 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %79, align 8
  store %struct.bnad_rx_unmap_q* %80, %struct.bnad_rx_unmap_q** %11, align 8
  %81 = load %struct.bna_rcb*, %struct.bna_rcb** %10, align 8
  %82 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %21, align 4
  %84 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %11, align 8
  %85 = getelementptr inbounds %struct.bnad_rx_unmap_q, %struct.bnad_rx_unmap_q* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i64 @BNAD_RXBUF_IS_SK_BUFF(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %77
  %90 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %11, align 8
  %91 = getelementptr inbounds %struct.bnad_rx_unmap_q, %struct.bnad_rx_unmap_q* %90, i32 0, i32 1
  %92 = load %struct.bnad_rx_unmap*, %struct.bnad_rx_unmap** %91, align 8
  %93 = load i32, i32* %21, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.bnad_rx_unmap, %struct.bnad_rx_unmap* %92, i64 %94
  store %struct.bnad_rx_unmap* %95, %struct.bnad_rx_unmap** %12, align 8
  %96 = load %struct.bnad_rx_unmap*, %struct.bnad_rx_unmap** %12, align 8
  %97 = getelementptr inbounds %struct.bnad_rx_unmap, %struct.bnad_rx_unmap* %96, i32 0, i32 0
  %98 = load %struct.sk_buff*, %struct.sk_buff** %97, align 8
  store %struct.sk_buff* %98, %struct.sk_buff** %13, align 8
  br label %111

99:                                               ; preds = %77
  %100 = load %struct.bnad_rx_ctrl*, %struct.bnad_rx_ctrl** %15, align 8
  %101 = getelementptr inbounds %struct.bnad_rx_ctrl, %struct.bnad_rx_ctrl* %100, i32 0, i32 0
  %102 = call %struct.sk_buff* @napi_get_frags(i32* %101)
  store %struct.sk_buff* %102, %struct.sk_buff** %13, align 8
  %103 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %104 = icmp ne %struct.sk_buff* %103, null
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  %107 = call i64 @unlikely(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %99
  br label %351

110:                                              ; preds = %99
  br label %111

111:                                              ; preds = %110, %89
  %112 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %113 = call i32 @prefetch(%struct.sk_buff* %112)
  %114 = load %struct.bna_cq_entry*, %struct.bna_cq_entry** %8, align 8
  %115 = getelementptr inbounds %struct.bna_cq_entry, %struct.bna_cq_entry* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @ntohl(i32 %116)
  store i32 %117, i32* %23, align 4
  %118 = load %struct.bna_cq_entry*, %struct.bna_cq_entry** %8, align 8
  %119 = getelementptr inbounds %struct.bna_cq_entry, %struct.bna_cq_entry* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @ntohs(i32 %120)
  store i32 %121, i32* %17, align 4
  %122 = load i32, i32* %17, align 4
  store i32 %122, i32* %18, align 4
  store i32 1, i32* %22, align 4
  %123 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %11, align 8
  %124 = getelementptr inbounds %struct.bnad_rx_unmap_q, %struct.bnad_rx_unmap_q* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i64 @BNAD_RXBUF_IS_MULTI_BUFF(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %180

128:                                              ; preds = %111
  %129 = load i32, i32* %23, align 4
  %130 = load i32, i32* @BNA_CQ_EF_EOP, align 4
  %131 = and i32 %129, %130
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %180

133:                                              ; preds = %128
  %134 = load %struct.bna_ccb*, %struct.bna_ccb** %5, align 8
  %135 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %19, align 4
  br label %138

138:                                              ; preds = %168, %133
  %139 = load i32, i32* %19, align 4
  %140 = load %struct.bna_ccb*, %struct.bna_ccb** %5, align 8
  %141 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @BNA_QE_INDX_INC(i32 %139, i32 %142)
  %144 = load %struct.bna_cq_entry*, %struct.bna_cq_entry** %7, align 8
  %145 = load i32, i32* %19, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.bna_cq_entry, %struct.bna_cq_entry* %144, i64 %146
  store %struct.bna_cq_entry* %147, %struct.bna_cq_entry** %9, align 8
  %148 = load %struct.bna_cq_entry*, %struct.bna_cq_entry** %9, align 8
  %149 = getelementptr inbounds %struct.bna_cq_entry, %struct.bna_cq_entry* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %138
  br label %173

153:                                              ; preds = %138
  %154 = call i32 (...) @rmb()
  %155 = load %struct.bna_cq_entry*, %struct.bna_cq_entry** %9, align 8
  %156 = getelementptr inbounds %struct.bna_cq_entry, %struct.bna_cq_entry* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @ntohs(i32 %157)
  store i32 %158, i32* %17, align 4
  %159 = load %struct.bna_cq_entry*, %struct.bna_cq_entry** %9, align 8
  %160 = getelementptr inbounds %struct.bna_cq_entry, %struct.bna_cq_entry* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @ntohl(i32 %161)
  store i32 %162, i32* %23, align 4
  %163 = load i32, i32* %22, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %22, align 4
  %165 = load i32, i32* %17, align 4
  %166 = load i32, i32* %18, align 4
  %167 = add nsw i32 %166, %165
  store i32 %167, i32* %18, align 4
  br label %168

168:                                              ; preds = %153
  %169 = load i32, i32* %23, align 4
  %170 = load i32, i32* @BNA_CQ_EF_EOP, align 4
  %171 = and i32 %169, %170
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %138, label %173

173:                                              ; preds = %168, %152
  %174 = load %struct.bna_cq_entry*, %struct.bna_cq_entry** %9, align 8
  %175 = getelementptr inbounds %struct.bna_cq_entry, %struct.bna_cq_entry* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %179, label %178

178:                                              ; preds = %173
  br label %351

179:                                              ; preds = %173
  br label %180

180:                                              ; preds = %179, %128, %111
  %181 = load i32, i32* %16, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %16, align 4
  %183 = load i32, i32* %23, align 4
  %184 = load i32, i32* @BNA_CQ_EF_MAC_ERROR, align 4
  %185 = load i32, i32* @BNA_CQ_EF_FCS_ERROR, align 4
  %186 = or i32 %184, %185
  %187 = load i32, i32* @BNA_CQ_EF_TOO_LONG, align 4
  %188 = or i32 %186, %187
  %189 = and i32 %183, %188
  %190 = call i64 @unlikely(i32 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %204

192:                                              ; preds = %180
  %193 = load %struct.bnad*, %struct.bnad** %4, align 8
  %194 = load %struct.bna_rcb*, %struct.bna_rcb** %10, align 8
  %195 = load i32, i32* %21, align 4
  %196 = load i32, i32* %22, align 4
  %197 = call i32 @bnad_cq_drop_packet(%struct.bnad* %193, %struct.bna_rcb* %194, i32 %195, i32 %196)
  %198 = load %struct.bna_rcb*, %struct.bna_rcb** %10, align 8
  %199 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %198, i32 0, i32 3
  %200 = load %struct.TYPE_2__*, %struct.TYPE_2__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %201, align 4
  br label %318

204:                                              ; preds = %180
  %205 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %11, align 8
  %206 = getelementptr inbounds %struct.bnad_rx_unmap_q, %struct.bnad_rx_unmap_q* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = call i64 @BNAD_RXBUF_IS_SK_BUFF(i32 %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %216

210:                                              ; preds = %204
  %211 = load %struct.bnad*, %struct.bnad** %4, align 8
  %212 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %213 = load %struct.bnad_rx_unmap*, %struct.bnad_rx_unmap** %12, align 8
  %214 = load i32, i32* %17, align 4
  %215 = call i32 @bnad_cq_setup_skb(%struct.bnad* %211, %struct.sk_buff* %212, %struct.bnad_rx_unmap* %213, i32 %214)
  br label %221

216:                                              ; preds = %204
  %217 = load %struct.bna_ccb*, %struct.bna_ccb** %5, align 8
  %218 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %219 = load i32, i32* %22, align 4
  %220 = call i32 @bnad_cq_setup_skb_frags(%struct.bna_ccb* %217, %struct.sk_buff* %218, i32 %219)
  br label %221

221:                                              ; preds = %216, %210
  %222 = load %struct.bna_rcb*, %struct.bna_rcb** %10, align 8
  %223 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %222, i32 0, i32 3
  %224 = load %struct.TYPE_2__*, %struct.TYPE_2__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %225, align 4
  %228 = load i32, i32* %18, align 4
  %229 = load %struct.bna_rcb*, %struct.bna_rcb** %10, align 8
  %230 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %229, i32 0, i32 3
  %231 = load %struct.TYPE_2__*, %struct.TYPE_2__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = add nsw i32 %233, %228
  store i32 %234, i32* %232, align 4
  %235 = load i32, i32* %18, align 4
  %236 = load %struct.bna_ccb*, %struct.bna_ccb** %5, align 8
  %237 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %236, i32 0, i32 4
  %238 = load i32, i32* %237, align 8
  %239 = add nsw i32 %238, %235
  store i32 %239, i32* %237, align 8
  %240 = load i32, i32* %23, align 4
  %241 = load i32, i32* @flags_cksum_prot_mask, align 4
  %242 = and i32 %240, %241
  store i32 %242, i32* %24, align 4
  %243 = load %struct.bnad*, %struct.bnad** %4, align 8
  %244 = getelementptr inbounds %struct.bnad, %struct.bnad* %243, i32 0, i32 0
  %245 = load %struct.sk_buff*, %struct.sk_buff** %244, align 8
  %246 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %269

251:                                              ; preds = %221
  %252 = load i32, i32* %24, align 4
  %253 = load i32, i32* @flags_tcp4, align 4
  %254 = icmp eq i32 %252, %253
  br i1 %254, label %267, label %255

255:                                              ; preds = %251
  %256 = load i32, i32* %24, align 4
  %257 = load i32, i32* @flags_udp4, align 4
  %258 = icmp eq i32 %256, %257
  br i1 %258, label %267, label %259

259:                                              ; preds = %255
  %260 = load i32, i32* %24, align 4
  %261 = load i32, i32* @flags_tcp6, align 4
  %262 = icmp eq i32 %260, %261
  br i1 %262, label %267, label %263

263:                                              ; preds = %259
  %264 = load i32, i32* %24, align 4
  %265 = load i32, i32* @flags_udp6, align 4
  %266 = icmp eq i32 %264, %265
  br label %267

267:                                              ; preds = %263, %259, %255, %251
  %268 = phi i1 [ true, %259 ], [ true, %255 ], [ true, %251 ], [ %266, %263 ]
  br label %269

269:                                              ; preds = %267, %221
  %270 = phi i1 [ false, %221 ], [ %268, %267 ]
  %271 = zext i1 %270 to i32
  %272 = call i64 @likely(i32 %271)
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %278

274:                                              ; preds = %269
  %275 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %276 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %277 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %276, i32 0, i32 1
  store i32 %275, i32* %277, align 4
  br label %281

278:                                              ; preds = %269
  %279 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %280 = call i32 @skb_checksum_none_assert(%struct.sk_buff* %279)
  br label %281

281:                                              ; preds = %278, %274
  %282 = load i32, i32* %23, align 4
  %283 = load i32, i32* @BNA_CQ_EF_VLAN, align 4
  %284 = and i32 %282, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %304

286:                                              ; preds = %281
  %287 = load %struct.bnad*, %struct.bnad** %4, align 8
  %288 = getelementptr inbounds %struct.bnad, %struct.bnad* %287, i32 0, i32 0
  %289 = load %struct.sk_buff*, %struct.sk_buff** %288, align 8
  %290 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %304

295:                                              ; preds = %286
  %296 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %297 = load i32, i32* @ETH_P_8021Q, align 4
  %298 = call i32 @htons(i32 %297)
  %299 = load %struct.bna_cq_entry*, %struct.bna_cq_entry** %8, align 8
  %300 = getelementptr inbounds %struct.bna_cq_entry, %struct.bna_cq_entry* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 8
  %302 = call i32 @ntohs(i32 %301)
  %303 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %296, i32 %298, i32 %302)
  br label %304

304:                                              ; preds = %295, %286, %281
  %305 = load %struct.bnad_rx_unmap_q*, %struct.bnad_rx_unmap_q** %11, align 8
  %306 = getelementptr inbounds %struct.bnad_rx_unmap_q, %struct.bnad_rx_unmap_q* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = call i64 @BNAD_RXBUF_IS_SK_BUFF(i32 %307)
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %313

310:                                              ; preds = %304
  %311 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %312 = call i32 @netif_receive_skb(%struct.sk_buff* %311)
  br label %317

313:                                              ; preds = %304
  %314 = load %struct.bnad_rx_ctrl*, %struct.bnad_rx_ctrl** %15, align 8
  %315 = getelementptr inbounds %struct.bnad_rx_ctrl, %struct.bnad_rx_ctrl* %314, i32 0, i32 0
  %316 = call i32 @napi_gro_frags(i32* %315)
  br label %317

317:                                              ; preds = %313, %310
  br label %318

318:                                              ; preds = %317, %192
  %319 = load %struct.bna_rcb*, %struct.bna_rcb** %10, align 8
  %320 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = load i32, i32* %22, align 4
  %323 = load %struct.bna_rcb*, %struct.bna_rcb** %10, align 8
  %324 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %323, i32 0, i32 2
  %325 = load i32, i32* %324, align 8
  %326 = call i32 @BNA_QE_INDX_ADD(i32 %321, i32 %322, i32 %325)
  store i32 0, i32* %20, align 4
  br label %327

327:                                              ; preds = %347, %318
  %328 = load i32, i32* %20, align 4
  %329 = load i32, i32* %22, align 4
  %330 = icmp slt i32 %328, %329
  br i1 %330, label %331, label %350

331:                                              ; preds = %327
  %332 = load %struct.bna_cq_entry*, %struct.bna_cq_entry** %7, align 8
  %333 = load %struct.bna_ccb*, %struct.bna_ccb** %5, align 8
  %334 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %333, i32 0, i32 0
  %335 = load i64, i64* %334, align 8
  %336 = getelementptr inbounds %struct.bna_cq_entry, %struct.bna_cq_entry* %332, i64 %335
  store %struct.bna_cq_entry* %336, %struct.bna_cq_entry** %8, align 8
  %337 = load %struct.bna_cq_entry*, %struct.bna_cq_entry** %8, align 8
  %338 = getelementptr inbounds %struct.bna_cq_entry, %struct.bna_cq_entry* %337, i32 0, i32 0
  store i64 0, i64* %338, align 8
  %339 = load %struct.bna_ccb*, %struct.bna_ccb** %5, align 8
  %340 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %339, i32 0, i32 0
  %341 = load i64, i64* %340, align 8
  %342 = trunc i64 %341 to i32
  %343 = load %struct.bna_ccb*, %struct.bna_ccb** %5, align 8
  %344 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %343, i32 0, i32 3
  %345 = load i32, i32* %344, align 4
  %346 = call i32 @BNA_QE_INDX_INC(i32 %342, i32 %345)
  br label %347

347:                                              ; preds = %331
  %348 = load i32, i32* %20, align 4
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %20, align 4
  br label %327

350:                                              ; preds = %327
  br label %37

351:                                              ; preds = %178, %109, %51, %37
  %352 = load %struct.bnad_rx_ctrl*, %struct.bnad_rx_ctrl** %15, align 8
  %353 = getelementptr inbounds %struct.bnad_rx_ctrl, %struct.bnad_rx_ctrl* %352, i32 0, i32 0
  %354 = call i32 @napi_gro_flush(i32* %353, i32 0)
  %355 = load i32, i32* @BNAD_RXQ_STARTED, align 4
  %356 = load %struct.bna_ccb*, %struct.bna_ccb** %5, align 8
  %357 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %356, i32 0, i32 1
  %358 = load %struct.bna_rcb**, %struct.bna_rcb*** %357, align 8
  %359 = getelementptr inbounds %struct.bna_rcb*, %struct.bna_rcb** %358, i64 0
  %360 = load %struct.bna_rcb*, %struct.bna_rcb** %359, align 8
  %361 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %360, i32 0, i32 1
  %362 = call i32 @test_bit(i32 %355, i32* %361)
  %363 = call i64 @likely(i32 %362)
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %371

365:                                              ; preds = %351
  %366 = load %struct.bna_ccb*, %struct.bna_ccb** %5, align 8
  %367 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %366, i32 0, i32 2
  %368 = load i32, i32* %367, align 8
  %369 = load i32, i32* %16, align 4
  %370 = call i32 @bna_ib_ack_disable_irq(i32 %368, i32 %369)
  br label %371

371:                                              ; preds = %365, %351
  %372 = load %struct.bnad*, %struct.bnad** %4, align 8
  %373 = load %struct.bna_ccb*, %struct.bna_ccb** %5, align 8
  %374 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %373, i32 0, i32 1
  %375 = load %struct.bna_rcb**, %struct.bna_rcb*** %374, align 8
  %376 = getelementptr inbounds %struct.bna_rcb*, %struct.bna_rcb** %375, i64 0
  %377 = load %struct.bna_rcb*, %struct.bna_rcb** %376, align 8
  %378 = call i32 @bnad_rxq_post(%struct.bnad* %372, %struct.bna_rcb* %377)
  %379 = load %struct.bna_ccb*, %struct.bna_ccb** %5, align 8
  %380 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %379, i32 0, i32 1
  %381 = load %struct.bna_rcb**, %struct.bna_rcb*** %380, align 8
  %382 = getelementptr inbounds %struct.bna_rcb*, %struct.bna_rcb** %381, i64 1
  %383 = load %struct.bna_rcb*, %struct.bna_rcb** %382, align 8
  %384 = icmp ne %struct.bna_rcb* %383, null
  br i1 %384, label %385, label %393

385:                                              ; preds = %371
  %386 = load %struct.bnad*, %struct.bnad** %4, align 8
  %387 = load %struct.bna_ccb*, %struct.bna_ccb** %5, align 8
  %388 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %387, i32 0, i32 1
  %389 = load %struct.bna_rcb**, %struct.bna_rcb*** %388, align 8
  %390 = getelementptr inbounds %struct.bna_rcb*, %struct.bna_rcb** %389, i64 1
  %391 = load %struct.bna_rcb*, %struct.bna_rcb** %390, align 8
  %392 = call i32 @bnad_rxq_post(%struct.bnad* %386, %struct.bna_rcb* %391)
  br label %393

393:                                              ; preds = %385, %371
  %394 = load i32, i32* %16, align 4
  ret i32 %394
}

declare dso_local i32 @prefetch(%struct.sk_buff*) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @BNA_UPDATE_PKT_CNT(%struct.bna_pkt_rate*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i64 @bna_is_small_rxq(i32) #1

declare dso_local i64 @BNAD_RXBUF_IS_SK_BUFF(i32) #1

declare dso_local %struct.sk_buff* @napi_get_frags(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i64 @BNAD_RXBUF_IS_MULTI_BUFF(i32) #1

declare dso_local i32 @BNA_QE_INDX_INC(i32, i32) #1

declare dso_local i32 @bnad_cq_drop_packet(%struct.bnad*, %struct.bna_rcb*, i32, i32) #1

declare dso_local i32 @bnad_cq_setup_skb(%struct.bnad*, %struct.sk_buff*, %struct.bnad_rx_unmap*, i32) #1

declare dso_local i32 @bnad_cq_setup_skb_frags(%struct.bna_ccb*, %struct.sk_buff*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @skb_checksum_none_assert(%struct.sk_buff*) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

declare dso_local i32 @napi_gro_frags(i32*) #1

declare dso_local i32 @BNA_QE_INDX_ADD(i32, i32, i32) #1

declare dso_local i32 @napi_gro_flush(i32*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @bna_ib_ack_disable_irq(i32, i32) #1

declare dso_local i32 @bnad_rxq_post(%struct.bnad*, %struct.bna_rcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
