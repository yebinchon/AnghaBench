; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_txq_wi_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_txq_wi_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnad = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.bna_tcb = type { i32 }
%struct.sk_buff = type { i64, i64 }
%struct.bna_txq_entry = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i64 }

@BNA_TXQ_WI_CF_INS_PRIO = common dso_local global i32 0, align 4
@BNA_TXQ_WI_CF_INS_VLAN = common dso_local global i32 0, align 4
@BNAD_RF_CEE_RUNNING = common dso_local global i32 0, align 4
@VLAN_PRIO_SHIFT = common dso_local global i32 0, align 4
@tx_skb_mss_too_long = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@BNA_TXQ_WI_SEND = common dso_local global i32 0, align 4
@tx_skb_tso_too_short = common dso_local global i32 0, align 4
@BNA_TXQ_WI_SEND_LSO = common dso_local global i32 0, align 4
@tx_skb_tso_prepare = common dso_local global i32 0, align 4
@BNA_TXQ_WI_CF_IP_CKSUM = common dso_local global i32 0, align 4
@BNA_TXQ_WI_CF_TCP_CKSUM = common dso_local global i32 0, align 4
@VLAN_ETH_HLEN = common dso_local global i64 0, align 8
@tx_skb_non_tso_too_long = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@ETH_P_IP = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@tcpcsum_offload = common dso_local global i32 0, align 4
@tx_skb_tcp_hdr = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i64 0, align 8
@BNA_TXQ_WI_CF_UDP_CKSUM = common dso_local global i32 0, align 4
@udpcsum_offload = common dso_local global i32 0, align 4
@tx_skb_udp_hdr = common dso_local global i32 0, align 4
@tx_skb_csum_err = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnad*, %struct.bna_tcb*, %struct.sk_buff*, %struct.bna_txq_entry*)* @bnad_txq_wi_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnad_txq_wi_prepare(%struct.bnad* %0, %struct.bna_tcb* %1, %struct.sk_buff* %2, %struct.bna_txq_entry* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnad*, align 8
  %7 = alloca %struct.bna_tcb*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.bna_txq_entry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store %struct.bnad* %0, %struct.bnad** %6, align 8
  store %struct.bna_tcb* %1, %struct.bna_tcb** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store %struct.bna_txq_entry* %3, %struct.bna_txq_entry** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %16 = call i64 @skb_vlan_tag_present(%struct.sk_buff* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %20 = call i64 @skb_vlan_tag_get(%struct.sk_buff* %19)
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* @BNA_TXQ_WI_CF_INS_PRIO, align 4
  %23 = load i32, i32* @BNA_TXQ_WI_CF_INS_VLAN, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* %10, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %10, align 4
  br label %27

27:                                               ; preds = %18, %4
  %28 = load i32, i32* @BNAD_RF_CEE_RUNNING, align 4
  %29 = load %struct.bnad*, %struct.bnad** %6, align 8
  %30 = getelementptr inbounds %struct.bnad, %struct.bnad* %29, i32 0, i32 1
  %31 = call i64 @test_bit(i32 %28, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %27
  %34 = load %struct.bna_tcb*, %struct.bna_tcb** %7, align 8
  %35 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 7
  %38 = load i32, i32* @VLAN_PRIO_SHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = load i32, i32* %12, align 4
  %41 = and i32 %40, 8191
  %42 = or i32 %39, %41
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* @BNA_TXQ_WI_CF_INS_PRIO, align 4
  %44 = load i32, i32* @BNA_TXQ_WI_CF_INS_VLAN, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* %10, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %10, align 4
  br label %48

48:                                               ; preds = %33, %27
  %49 = load i32, i32* %12, align 4
  %50 = call i8* @htons(i32 %49)
  %51 = load %struct.bna_txq_entry*, %struct.bna_txq_entry** %9, align 8
  %52 = getelementptr inbounds %struct.bna_txq_entry, %struct.bna_txq_entry* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 5
  store i8* %50, i8** %54, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %56 = call i64 @skb_is_gso(%struct.sk_buff* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %151

58:                                               ; preds = %48
  %59 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %60 = call %struct.TYPE_10__* @skb_shinfo(%struct.sk_buff* %59)
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.bnad*, %struct.bnad** %6, align 8
  %65 = getelementptr inbounds %struct.bnad, %struct.bnad* %64, i32 0, i32 0
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp sgt i32 %63, %68
  %70 = zext i1 %69 to i32
  %71 = call i64 @unlikely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %58
  %74 = load %struct.bnad*, %struct.bnad** %6, align 8
  %75 = load i32, i32* @tx_skb_mss_too_long, align 4
  %76 = call i32 @BNAD_UPDATE_CTR(%struct.bnad* %74, i32 %75)
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %5, align 4
  br label %303

79:                                               ; preds = %58
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %83 = call i64 @skb_transport_offset(%struct.sk_buff* %82)
  %84 = add nsw i64 %81, %83
  %85 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %86 = call i32 @tcp_hdrlen(%struct.sk_buff* %85)
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %84, %87
  %89 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %90 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp sge i64 %88, %91
  %93 = zext i1 %92 to i32
  %94 = call i64 @unlikely(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %110

96:                                               ; preds = %79
  %97 = load i32, i32* @BNA_TXQ_WI_SEND, align 4
  %98 = call i8* @htons(i32 %97)
  %99 = load %struct.bna_txq_entry*, %struct.bna_txq_entry** %9, align 8
  %100 = getelementptr inbounds %struct.bna_txq_entry, %struct.bna_txq_entry* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 4
  store i8* %98, i8** %102, align 8
  %103 = load %struct.bna_txq_entry*, %struct.bna_txq_entry** %9, align 8
  %104 = getelementptr inbounds %struct.bna_txq_entry, %struct.bna_txq_entry* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 3
  store i8* null, i8** %106, align 8
  %107 = load %struct.bnad*, %struct.bnad** %6, align 8
  %108 = load i32, i32* @tx_skb_tso_too_short, align 4
  %109 = call i32 @BNAD_UPDATE_CTR(%struct.bnad* %107, i32 %108)
  br label %123

110:                                              ; preds = %79
  %111 = load i32, i32* @BNA_TXQ_WI_SEND_LSO, align 4
  %112 = call i8* @htons(i32 %111)
  %113 = load %struct.bna_txq_entry*, %struct.bna_txq_entry** %9, align 8
  %114 = getelementptr inbounds %struct.bna_txq_entry, %struct.bna_txq_entry* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 4
  store i8* %112, i8** %116, align 8
  %117 = load i32, i32* %11, align 4
  %118 = call i8* @htons(i32 %117)
  %119 = load %struct.bna_txq_entry*, %struct.bna_txq_entry** %9, align 8
  %120 = getelementptr inbounds %struct.bna_txq_entry, %struct.bna_txq_entry* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 3
  store i8* %118, i8** %122, align 8
  br label %123

123:                                              ; preds = %110, %96
  %124 = load %struct.bnad*, %struct.bnad** %6, align 8
  %125 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %126 = call i64 @bnad_tso_prepare(%struct.bnad* %124, %struct.sk_buff* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %123
  %129 = load %struct.bnad*, %struct.bnad** %6, align 8
  %130 = load i32, i32* @tx_skb_tso_prepare, align 4
  %131 = call i32 @BNAD_UPDATE_CTR(%struct.bnad* %129, i32 %130)
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %5, align 4
  br label %303

134:                                              ; preds = %123
  %135 = load i32, i32* @BNA_TXQ_WI_CF_IP_CKSUM, align 4
  %136 = load i32, i32* @BNA_TXQ_WI_CF_TCP_CKSUM, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* %10, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %10, align 4
  %140 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %141 = call i32 @tcp_hdrlen(%struct.sk_buff* %140)
  %142 = ashr i32 %141, 2
  %143 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %144 = call i64 @skb_transport_offset(%struct.sk_buff* %143)
  %145 = call i32 @BNA_TXQ_WI_L4_HDR_N_OFFSET(i32 %142, i64 %144)
  %146 = call i8* @htons(i32 %145)
  %147 = load %struct.bna_txq_entry*, %struct.bna_txq_entry** %9, align 8
  %148 = getelementptr inbounds %struct.bna_txq_entry, %struct.bna_txq_entry* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 2
  store i8* %146, i8** %150, align 8
  br label %288

151:                                              ; preds = %48
  %152 = load i32, i32* @BNA_TXQ_WI_SEND, align 4
  %153 = call i8* @htons(i32 %152)
  %154 = load %struct.bna_txq_entry*, %struct.bna_txq_entry** %9, align 8
  %155 = getelementptr inbounds %struct.bna_txq_entry, %struct.bna_txq_entry* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 4
  store i8* %153, i8** %157, align 8
  %158 = load %struct.bna_txq_entry*, %struct.bna_txq_entry** %9, align 8
  %159 = getelementptr inbounds %struct.bna_txq_entry, %struct.bna_txq_entry* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 3
  store i8* null, i8** %161, align 8
  %162 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %163 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.bnad*, %struct.bnad** %6, align 8
  %166 = getelementptr inbounds %struct.bnad, %struct.bnad* %165, i32 0, i32 0
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = sext i32 %169 to i64
  %171 = load i64, i64* @VLAN_ETH_HLEN, align 8
  %172 = add nsw i64 %170, %171
  %173 = icmp sgt i64 %164, %172
  %174 = zext i1 %173 to i32
  %175 = call i64 @unlikely(i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %151
  %178 = load %struct.bnad*, %struct.bnad** %6, align 8
  %179 = load i32, i32* @tx_skb_non_tso_too_long, align 4
  %180 = call i32 @BNAD_UPDATE_CTR(%struct.bnad* %178, i32 %179)
  %181 = load i32, i32* @EINVAL, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %5, align 4
  br label %303

183:                                              ; preds = %151
  %184 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %185 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %282

189:                                              ; preds = %183
  %190 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %191 = call i8* @vlan_get_protocol(%struct.sk_buff* %190)
  store i8* %191, i8** %13, align 8
  store i64 0, i64* %14, align 8
  %192 = load i8*, i8** %13, align 8
  %193 = load i32, i32* @ETH_P_IP, align 4
  %194 = call i8* @htons(i32 %193)
  %195 = icmp eq i8* %192, %194
  br i1 %195, label %196, label %201

196:                                              ; preds = %189
  %197 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %198 = call %struct.TYPE_12__* @ip_hdr(%struct.sk_buff* %197)
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  store i64 %200, i64* %14, align 8
  br label %201

201:                                              ; preds = %196, %189
  %202 = load i64, i64* %14, align 8
  %203 = load i64, i64* @IPPROTO_TCP, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %205, label %239

205:                                              ; preds = %201
  %206 = load i32, i32* @BNA_TXQ_WI_CF_TCP_CKSUM, align 4
  %207 = load i32, i32* %10, align 4
  %208 = or i32 %207, %206
  store i32 %208, i32* %10, align 4
  %209 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %210 = call i64 @skb_transport_offset(%struct.sk_buff* %209)
  %211 = call i32 @BNA_TXQ_WI_L4_HDR_N_OFFSET(i32 0, i64 %210)
  %212 = call i8* @htons(i32 %211)
  %213 = load %struct.bna_txq_entry*, %struct.bna_txq_entry** %9, align 8
  %214 = getelementptr inbounds %struct.bna_txq_entry, %struct.bna_txq_entry* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 2
  store i8* %212, i8** %216, align 8
  %217 = load %struct.bnad*, %struct.bnad** %6, align 8
  %218 = load i32, i32* @tcpcsum_offload, align 4
  %219 = call i32 @BNAD_UPDATE_CTR(%struct.bnad* %217, i32 %218)
  %220 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %221 = call i64 @skb_headlen(%struct.sk_buff* %220)
  %222 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %223 = call i64 @skb_transport_offset(%struct.sk_buff* %222)
  %224 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %225 = call i32 @tcp_hdrlen(%struct.sk_buff* %224)
  %226 = sext i32 %225 to i64
  %227 = add nsw i64 %223, %226
  %228 = icmp slt i64 %221, %227
  %229 = zext i1 %228 to i32
  %230 = call i64 @unlikely(i32 %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %238

232:                                              ; preds = %205
  %233 = load %struct.bnad*, %struct.bnad** %6, align 8
  %234 = load i32, i32* @tx_skb_tcp_hdr, align 4
  %235 = call i32 @BNAD_UPDATE_CTR(%struct.bnad* %233, i32 %234)
  %236 = load i32, i32* @EINVAL, align 4
  %237 = sub nsw i32 0, %236
  store i32 %237, i32* %5, align 4
  br label %303

238:                                              ; preds = %205
  br label %281

239:                                              ; preds = %201
  %240 = load i64, i64* %14, align 8
  %241 = load i64, i64* @IPPROTO_UDP, align 8
  %242 = icmp eq i64 %240, %241
  br i1 %242, label %243, label %274

243:                                              ; preds = %239
  %244 = load i32, i32* @BNA_TXQ_WI_CF_UDP_CKSUM, align 4
  %245 = load i32, i32* %10, align 4
  %246 = or i32 %245, %244
  store i32 %246, i32* %10, align 4
  %247 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %248 = call i64 @skb_transport_offset(%struct.sk_buff* %247)
  %249 = call i32 @BNA_TXQ_WI_L4_HDR_N_OFFSET(i32 0, i64 %248)
  %250 = call i8* @htons(i32 %249)
  %251 = load %struct.bna_txq_entry*, %struct.bna_txq_entry** %9, align 8
  %252 = getelementptr inbounds %struct.bna_txq_entry, %struct.bna_txq_entry* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i32 0, i32 2
  store i8* %250, i8** %254, align 8
  %255 = load %struct.bnad*, %struct.bnad** %6, align 8
  %256 = load i32, i32* @udpcsum_offload, align 4
  %257 = call i32 @BNAD_UPDATE_CTR(%struct.bnad* %255, i32 %256)
  %258 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %259 = call i64 @skb_headlen(%struct.sk_buff* %258)
  %260 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %261 = call i64 @skb_transport_offset(%struct.sk_buff* %260)
  %262 = add i64 %261, 4
  %263 = icmp ult i64 %259, %262
  %264 = zext i1 %263 to i32
  %265 = call i64 @unlikely(i32 %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %273

267:                                              ; preds = %243
  %268 = load %struct.bnad*, %struct.bnad** %6, align 8
  %269 = load i32, i32* @tx_skb_udp_hdr, align 4
  %270 = call i32 @BNAD_UPDATE_CTR(%struct.bnad* %268, i32 %269)
  %271 = load i32, i32* @EINVAL, align 4
  %272 = sub nsw i32 0, %271
  store i32 %272, i32* %5, align 4
  br label %303

273:                                              ; preds = %243
  br label %280

274:                                              ; preds = %239
  %275 = load %struct.bnad*, %struct.bnad** %6, align 8
  %276 = load i32, i32* @tx_skb_csum_err, align 4
  %277 = call i32 @BNAD_UPDATE_CTR(%struct.bnad* %275, i32 %276)
  %278 = load i32, i32* @EINVAL, align 4
  %279 = sub nsw i32 0, %278
  store i32 %279, i32* %5, align 4
  br label %303

280:                                              ; preds = %273
  br label %281

281:                                              ; preds = %280, %238
  br label %287

282:                                              ; preds = %183
  %283 = load %struct.bna_txq_entry*, %struct.bna_txq_entry** %9, align 8
  %284 = getelementptr inbounds %struct.bna_txq_entry, %struct.bna_txq_entry* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %285, i32 0, i32 2
  store i8* null, i8** %286, align 8
  br label %287

287:                                              ; preds = %282, %281
  br label %288

288:                                              ; preds = %287, %134
  %289 = load i32, i32* %10, align 4
  %290 = call i8* @htons(i32 %289)
  %291 = load %struct.bna_txq_entry*, %struct.bna_txq_entry** %9, align 8
  %292 = getelementptr inbounds %struct.bna_txq_entry, %struct.bna_txq_entry* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %293, i32 0, i32 1
  store i8* %290, i8** %294, align 8
  %295 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %296 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %295, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  %298 = call i32 @htonl(i64 %297)
  %299 = load %struct.bna_txq_entry*, %struct.bna_txq_entry** %9, align 8
  %300 = getelementptr inbounds %struct.bna_txq_entry, %struct.bna_txq_entry* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %301, i32 0, i32 0
  store i32 %298, i32* %302, align 8
  store i32 0, i32* %5, align 4
  br label %303

303:                                              ; preds = %288, %274, %267, %232, %177, %128, %73
  %304 = load i32, i32* %5, align 4
  ret i32 %304
}

declare dso_local i64 @skb_vlan_tag_present(%struct.sk_buff*) #1

declare dso_local i64 @skb_vlan_tag_get(%struct.sk_buff*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i64 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_10__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @BNAD_UPDATE_CTR(%struct.bnad*, i32) #1

declare dso_local i64 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i32 @tcp_hdrlen(%struct.sk_buff*) #1

declare dso_local i64 @bnad_tso_prepare(%struct.bnad*, %struct.sk_buff*) #1

declare dso_local i32 @BNA_TXQ_WI_L4_HDR_N_OFFSET(i32, i64) #1

declare dso_local i8* @vlan_get_protocol(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_12__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i64 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @htonl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
