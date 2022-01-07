; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_io.c_qlcnic_tx_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_io.c_qlcnic_tx_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i64, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.cmd_desc_type0 = type { i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32*, i64, i8* }
%struct.qlcnic_host_tx_ring = type { i64, i32, %struct.TYPE_6__*, %struct.cmd_desc_type0* }
%struct.TYPE_6__ = type { i32* }
%struct.vlan_ethhdr = type { i8*, i8*, i8* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@ETH_P_8021Q = common dso_local global i64 0, align 8
@QLCNIC_FLAGS_VLAN_TAGGED = common dso_local global i64 0, align 8
@QLCNIC_FLAGS_VLAN_OOB = common dso_local global i64 0, align 8
@QLCNIC_TAGGING_ENABLED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@BIT_0 = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@QLCNIC_TX_ETHER_PKT = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i64 0, align 8
@QLCNIC_TX_TCP_LSO6 = common dso_local global i32 0, align 4
@QLCNIC_TX_TCP_LSO = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@ETH_P_IP = common dso_local global i64 0, align 8
@IPPROTO_TCP = common dso_local global i32 0, align 4
@QLCNIC_TX_TCP_PKT = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@QLCNIC_TX_UDP_PKT = common dso_local global i32 0, align 4
@QLCNIC_TX_TCPV6_PKT = common dso_local global i32 0, align 4
@QLCNIC_TX_UDPV6_PKT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, %struct.cmd_desc_type0*, %struct.sk_buff*, %struct.qlcnic_host_tx_ring*)* @qlcnic_tx_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_tx_pkt(%struct.qlcnic_adapter* %0, %struct.cmd_desc_type0* %1, %struct.sk_buff* %2, %struct.qlcnic_host_tx_ring* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qlcnic_adapter*, align 8
  %7 = alloca %struct.cmd_desc_type0*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.qlcnic_host_tx_ring*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.cmd_desc_type0*, align 8
  %21 = alloca %struct.vlan_ethhdr*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %6, align 8
  store %struct.cmd_desc_type0* %1, %struct.cmd_desc_type0** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store %struct.qlcnic_host_tx_ring* %3, %struct.qlcnic_host_tx_ring** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 2
  %26 = load i8*, i8** %25, align 8
  %27 = call i64 @ntohs(i8* %26)
  store i64 %27, i64* %22, align 8
  %28 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %9, align 8
  %29 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %23, align 8
  %31 = load i64, i64* %22, align 8
  %32 = load i64, i64* @ETH_P_8021Q, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = bitcast i32* %37 to %struct.vlan_ethhdr*
  store %struct.vlan_ethhdr* %38, %struct.vlan_ethhdr** %21, align 8
  %39 = load i64, i64* @QLCNIC_FLAGS_VLAN_TAGGED, align 8
  store i64 %39, i64* %14, align 8
  %40 = load %struct.vlan_ethhdr*, %struct.vlan_ethhdr** %21, align 8
  %41 = getelementptr inbounds %struct.vlan_ethhdr, %struct.vlan_ethhdr* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i64 @ntohs(i8* %42)
  store i64 %43, i64* %15, align 8
  %44 = load %struct.vlan_ethhdr*, %struct.vlan_ethhdr** %21, align 8
  %45 = getelementptr inbounds %struct.vlan_ethhdr, %struct.vlan_ethhdr* %44, i32 0, i32 2
  %46 = load i8*, i8** %45, align 8
  %47 = call i64 @ntohs(i8* %46)
  store i64 %47, i64* %22, align 8
  store i32 1, i32* %13, align 4
  br label %57

48:                                               ; preds = %4
  %49 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %50 = call i64 @skb_vlan_tag_present(%struct.sk_buff* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i64, i64* @QLCNIC_FLAGS_VLAN_OOB, align 8
  store i64 %53, i64* %14, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %55 = call i64 @skb_vlan_tag_get(%struct.sk_buff* %54)
  store i64 %55, i64* %15, align 8
  store i32 1, i32* %13, align 4
  br label %56

56:                                               ; preds = %52, %48
  br label %57

57:                                               ; preds = %56, %34
  %58 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %59 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @unlikely(i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %92

63:                                               ; preds = %57
  %64 = load i32, i32* %13, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %63
  %67 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %68 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @QLCNIC_TAGGING_ENABLED, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %66
  %74 = load i32, i32* @EIO, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %5, align 4
  br label %337

76:                                               ; preds = %66, %63
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %76
  %80 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %81 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @QLCNIC_TAGGING_ENABLED, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  br label %93

87:                                               ; preds = %79, %76
  %88 = load i64, i64* @QLCNIC_FLAGS_VLAN_OOB, align 8
  store i64 %88, i64* %14, align 8
  %89 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %90 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %15, align 8
  br label %92

92:                                               ; preds = %87, %57
  br label %93

93:                                               ; preds = %92, %86
  %94 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %7, align 8
  %95 = load i64, i64* %15, align 8
  %96 = call i32 @qlcnic_set_tx_vlan_tci(%struct.cmd_desc_type0* %94, i64 %95)
  %97 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %7, align 8
  %98 = load i64, i64* %14, align 8
  %99 = load i32, i32* %11, align 4
  %100 = call i32 @qlcnic_set_tx_flags_opcode(%struct.cmd_desc_type0* %97, i64 %98, i32 %99)
  %101 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %102 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @BIT_0, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %93
  %109 = load i32, i32* @BIT_0, align 4
  %110 = sext i32 %109 to i64
  %111 = load i64, i64* %14, align 8
  %112 = or i64 %111, %110
  store i64 %112, i64* %14, align 8
  %113 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %7, align 8
  %114 = getelementptr inbounds %struct.cmd_desc_type0, %struct.cmd_desc_type0* %113, i32 0, i32 4
  %115 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %116 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* @ETH_ALEN, align 4
  %119 = call i32 @memcpy(i32* %114, i32* %117, i32 %118)
  br label %120

120:                                              ; preds = %108, %93
  %121 = load i32, i32* @QLCNIC_TX_ETHER_PKT, align 4
  store i32 %121, i32* %11, align 4
  %122 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %123 = call i64 @skb_is_gso(%struct.sk_buff* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %267

125:                                              ; preds = %120
  %126 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %127 = call i32 @skb_transport_offset(%struct.sk_buff* %126)
  %128 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %129 = call i32 @tcp_hdrlen(%struct.sk_buff* %128)
  %130 = add nsw i32 %127, %129
  store i32 %130, i32* %12, align 4
  %131 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %132 = call %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff* %131)
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @cpu_to_le16(i32 %134)
  %136 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %7, align 8
  %137 = getelementptr inbounds %struct.cmd_desc_type0, %struct.cmd_desc_type0* %136, i32 0, i32 3
  store i32 %135, i32* %137, align 4
  %138 = load i32, i32* %12, align 4
  %139 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %7, align 8
  %140 = getelementptr inbounds %struct.cmd_desc_type0, %struct.cmd_desc_type0* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 4
  %141 = load i64, i64* %22, align 8
  %142 = load i64, i64* @ETH_P_IPV6, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %125
  %145 = load i32, i32* @QLCNIC_TX_TCP_LSO6, align 4
  br label %148

146:                                              ; preds = %125
  %147 = load i32, i32* @QLCNIC_TX_TCP_LSO, align 4
  br label %148

148:                                              ; preds = %146, %144
  %149 = phi i32 [ %145, %144 ], [ %147, %146 ]
  store i32 %149, i32* %11, align 4
  store i32 0, i32* %16, align 4
  store i32 2, i32* %17, align 4
  %150 = load i64, i64* %14, align 8
  %151 = load i64, i64* @QLCNIC_FLAGS_VLAN_OOB, align 8
  %152 = and i64 %150, %151
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %216

154:                                              ; preds = %148
  %155 = load i32, i32* @VLAN_HLEN, align 4
  %156 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %7, align 8
  %157 = getelementptr inbounds %struct.cmd_desc_type0, %struct.cmd_desc_type0* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %158, %155
  store i32 %159, i32* %157, align 4
  %160 = load i32, i32* @VLAN_HLEN, align 4
  %161 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %7, align 8
  %162 = getelementptr inbounds %struct.cmd_desc_type0, %struct.cmd_desc_type0* %161, i32 0, i32 1
  store i32 %160, i32* %162, align 4
  %163 = load i32, i32* @VLAN_HLEN, align 4
  %164 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %7, align 8
  %165 = getelementptr inbounds %struct.cmd_desc_type0, %struct.cmd_desc_type0* %164, i32 0, i32 2
  store i32 %163, i32* %165, align 4
  %166 = load i64, i64* @QLCNIC_FLAGS_VLAN_TAGGED, align 8
  %167 = load i64, i64* %14, align 8
  %168 = or i64 %167, %166
  store i64 %168, i64* %14, align 8
  %169 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %9, align 8
  %170 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %169, i32 0, i32 3
  %171 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %170, align 8
  %172 = load i64, i64* %23, align 8
  %173 = getelementptr inbounds %struct.cmd_desc_type0, %struct.cmd_desc_type0* %171, i64 %172
  store %struct.cmd_desc_type0* %173, %struct.cmd_desc_type0** %20, align 8
  %174 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %9, align 8
  %175 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %174, i32 0, i32 2
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %175, align 8
  %177 = load i64, i64* %23, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  store i32* null, i32** %179, align 8
  %180 = load i32, i32* %17, align 4
  %181 = sub nsw i32 20, %180
  %182 = load i32, i32* %12, align 4
  %183 = load i32, i32* @VLAN_HLEN, align 4
  %184 = add nsw i32 %182, %183
  %185 = call i32 @min(i32 %181, i32 %184)
  store i32 %185, i32* %18, align 4
  %186 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %20, align 8
  %187 = bitcast %struct.cmd_desc_type0* %186 to i8*
  %188 = getelementptr inbounds i8, i8* %187, i64 2
  %189 = bitcast i8* %188 to %struct.vlan_ethhdr*
  store %struct.vlan_ethhdr* %189, %struct.vlan_ethhdr** %21, align 8
  %190 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %191 = load %struct.vlan_ethhdr*, %struct.vlan_ethhdr** %21, align 8
  %192 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %190, %struct.vlan_ethhdr* %191, i32 12)
  %193 = load i64, i64* @ETH_P_8021Q, align 8
  %194 = call i8* @htons(i64 %193)
  %195 = load %struct.vlan_ethhdr*, %struct.vlan_ethhdr** %21, align 8
  %196 = getelementptr inbounds %struct.vlan_ethhdr, %struct.vlan_ethhdr* %195, i32 0, i32 1
  store i8* %194, i8** %196, align 8
  %197 = load i64, i64* %15, align 8
  %198 = call i8* @htons(i64 %197)
  %199 = load %struct.vlan_ethhdr*, %struct.vlan_ethhdr** %21, align 8
  %200 = getelementptr inbounds %struct.vlan_ethhdr, %struct.vlan_ethhdr* %199, i32 0, i32 0
  store i8* %198, i8** %200, align 8
  %201 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %202 = load %struct.vlan_ethhdr*, %struct.vlan_ethhdr** %21, align 8
  %203 = bitcast %struct.vlan_ethhdr* %202 to i8*
  %204 = getelementptr inbounds i8, i8* %203, i64 16
  %205 = load i32, i32* %18, align 4
  %206 = sub nsw i32 %205, 16
  %207 = call i32 @skb_copy_from_linear_data_offset(%struct.sk_buff* %201, i32 12, i8* %204, i32 %206)
  %208 = load i32, i32* %18, align 4
  %209 = load i32, i32* @VLAN_HLEN, align 4
  %210 = sub nsw i32 %208, %209
  store i32 %210, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %211 = load i64, i64* %23, align 8
  %212 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %9, align 8
  %213 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 8
  %215 = call i64 @get_next_index(i64 %211, i32 %214)
  store i64 %215, i64* %23, align 8
  br label %216

216:                                              ; preds = %154, %148
  br label %217

217:                                              ; preds = %221, %216
  %218 = load i32, i32* %16, align 4
  %219 = load i32, i32* %12, align 4
  %220 = icmp slt i32 %218, %219
  br i1 %220, label %221, label %257

221:                                              ; preds = %217
  %222 = load i32, i32* %17, align 4
  %223 = sub nsw i32 20, %222
  store i32 %223, i32* %19, align 4
  %224 = load i32, i32* %19, align 4
  %225 = load i32, i32* %12, align 4
  %226 = load i32, i32* %16, align 4
  %227 = sub nsw i32 %225, %226
  %228 = call i32 @min(i32 %224, i32 %227)
  store i32 %228, i32* %18, align 4
  %229 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %9, align 8
  %230 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %229, i32 0, i32 3
  %231 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %230, align 8
  %232 = load i64, i64* %23, align 8
  %233 = getelementptr inbounds %struct.cmd_desc_type0, %struct.cmd_desc_type0* %231, i64 %232
  store %struct.cmd_desc_type0* %233, %struct.cmd_desc_type0** %20, align 8
  %234 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %9, align 8
  %235 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %234, i32 0, i32 2
  %236 = load %struct.TYPE_6__*, %struct.TYPE_6__** %235, align 8
  %237 = load i64, i64* %23, align 8
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 0
  store i32* null, i32** %239, align 8
  %240 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %241 = load i32, i32* %16, align 4
  %242 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %20, align 8
  %243 = bitcast %struct.cmd_desc_type0* %242 to i8*
  %244 = load i32, i32* %17, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i8, i8* %243, i64 %245
  %247 = load i32, i32* %18, align 4
  %248 = call i32 @skb_copy_from_linear_data_offset(%struct.sk_buff* %240, i32 %241, i8* %246, i32 %247)
  %249 = load i32, i32* %18, align 4
  %250 = load i32, i32* %16, align 4
  %251 = add nsw i32 %250, %249
  store i32 %251, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %252 = load i64, i64* %23, align 8
  %253 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %9, align 8
  %254 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 8
  %256 = call i64 @get_next_index(i64 %252, i32 %255)
  store i64 %256, i64* %23, align 8
  br label %217

257:                                              ; preds = %217
  %258 = load i64, i64* %23, align 8
  %259 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %9, align 8
  %260 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %259, i32 0, i32 0
  store i64 %258, i64* %260, align 8
  %261 = call i32 (...) @smp_mb()
  %262 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %263 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %262, i32 0, i32 2
  %264 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %264, align 4
  br label %320

267:                                              ; preds = %120
  %268 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %269 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %268, i32 0, i32 1
  %270 = load i64, i64* %269, align 8
  %271 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %272 = icmp eq i64 %270, %271
  br i1 %272, label %273, label %319

273:                                              ; preds = %267
  %274 = load i64, i64* %22, align 8
  %275 = load i64, i64* @ETH_P_IP, align 8
  %276 = icmp eq i64 %274, %275
  br i1 %276, label %277, label %295

277:                                              ; preds = %273
  %278 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %279 = call %struct.TYPE_10__* @ip_hdr(%struct.sk_buff* %278)
  %280 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  store i32 %281, i32* %10, align 4
  %282 = load i32, i32* %10, align 4
  %283 = load i32, i32* @IPPROTO_TCP, align 4
  %284 = icmp eq i32 %282, %283
  br i1 %284, label %285, label %287

285:                                              ; preds = %277
  %286 = load i32, i32* @QLCNIC_TX_TCP_PKT, align 4
  store i32 %286, i32* %11, align 4
  br label %294

287:                                              ; preds = %277
  %288 = load i32, i32* %10, align 4
  %289 = load i32, i32* @IPPROTO_UDP, align 4
  %290 = icmp eq i32 %288, %289
  br i1 %290, label %291, label %293

291:                                              ; preds = %287
  %292 = load i32, i32* @QLCNIC_TX_UDP_PKT, align 4
  store i32 %292, i32* %11, align 4
  br label %293

293:                                              ; preds = %291, %287
  br label %294

294:                                              ; preds = %293, %285
  br label %318

295:                                              ; preds = %273
  %296 = load i64, i64* %22, align 8
  %297 = load i64, i64* @ETH_P_IPV6, align 8
  %298 = icmp eq i64 %296, %297
  br i1 %298, label %299, label %317

299:                                              ; preds = %295
  %300 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %301 = call %struct.TYPE_9__* @ipv6_hdr(%struct.sk_buff* %300)
  %302 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 4
  store i32 %303, i32* %10, align 4
  %304 = load i32, i32* %10, align 4
  %305 = load i32, i32* @IPPROTO_TCP, align 4
  %306 = icmp eq i32 %304, %305
  br i1 %306, label %307, label %309

307:                                              ; preds = %299
  %308 = load i32, i32* @QLCNIC_TX_TCPV6_PKT, align 4
  store i32 %308, i32* %11, align 4
  br label %316

309:                                              ; preds = %299
  %310 = load i32, i32* %10, align 4
  %311 = load i32, i32* @IPPROTO_UDP, align 4
  %312 = icmp eq i32 %310, %311
  br i1 %312, label %313, label %315

313:                                              ; preds = %309
  %314 = load i32, i32* @QLCNIC_TX_UDPV6_PKT, align 4
  store i32 %314, i32* %11, align 4
  br label %315

315:                                              ; preds = %313, %309
  br label %316

316:                                              ; preds = %315, %307
  br label %317

317:                                              ; preds = %316, %295
  br label %318

318:                                              ; preds = %317, %294
  br label %319

319:                                              ; preds = %318, %267
  br label %320

320:                                              ; preds = %319, %257
  %321 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %322 = call i32 @skb_transport_offset(%struct.sk_buff* %321)
  %323 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %7, align 8
  %324 = getelementptr inbounds %struct.cmd_desc_type0, %struct.cmd_desc_type0* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  %326 = add nsw i32 %325, %322
  store i32 %326, i32* %324, align 4
  %327 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %328 = call i32 @skb_network_offset(%struct.sk_buff* %327)
  %329 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %7, align 8
  %330 = getelementptr inbounds %struct.cmd_desc_type0, %struct.cmd_desc_type0* %329, i32 0, i32 2
  %331 = load i32, i32* %330, align 4
  %332 = add nsw i32 %331, %328
  store i32 %332, i32* %330, align 4
  %333 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %7, align 8
  %334 = load i64, i64* %14, align 8
  %335 = load i32, i32* %11, align 4
  %336 = call i32 @qlcnic_set_tx_flags_opcode(%struct.cmd_desc_type0* %333, i64 %334, i32 %335)
  store i32 0, i32* %5, align 4
  br label %337

337:                                              ; preds = %320, %73
  %338 = load i32, i32* %5, align 4
  ret i32 %338
}

declare dso_local i64 @ntohs(i8*) #1

declare dso_local i64 @skb_vlan_tag_present(%struct.sk_buff*) #1

declare dso_local i64 @skb_vlan_tag_get(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i32 @qlcnic_set_tx_vlan_tci(%struct.cmd_desc_type0*, i64) #1

declare dso_local i32 @qlcnic_set_tx_flags_opcode(%struct.cmd_desc_type0*, i64, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i32 @tcp_hdrlen(%struct.sk_buff*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, %struct.vlan_ethhdr*, i32) #1

declare dso_local i8* @htons(i64) #1

declare dso_local i32 @skb_copy_from_linear_data_offset(%struct.sk_buff*, i32, i8*, i32) #1

declare dso_local i64 @get_next_index(i64, i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local %struct.TYPE_10__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_9__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
