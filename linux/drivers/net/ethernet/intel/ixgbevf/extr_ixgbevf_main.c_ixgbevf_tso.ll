; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_tso.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_tso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_ring = type { i32 }
%struct.ixgbevf_tx_buffer = type { i32, i32, i32, i32, %struct.sk_buff* }
%struct.sk_buff = type { i64, i8*, i32 }
%struct.ixgbevf_ipsec_tx_data = type { i32, i32, i32 }
%union.anon = type { %struct.iphdr* }
%struct.iphdr = type { i32, i32, i64, i32 }
%union.anon.0 = type { %struct.tcphdr* }
%struct.tcphdr = type { i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.ipv6hdr = type { i64 }

@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@IXGBE_ADVTXD_TUCMD_L4T_TCP = common dso_local global i32 0, align 4
@SKB_GSO_PARTIAL = common dso_local global i32 0, align 4
@IXGBE_ADVTXD_TUCMD_IPV4 = common dso_local global i32 0, align 4
@IXGBE_TX_FLAGS_TSO = common dso_local global i32 0, align 4
@IXGBE_TX_FLAGS_CSUM = common dso_local global i32 0, align 4
@IXGBE_TX_FLAGS_IPV4 = common dso_local global i32 0, align 4
@IXGBE_ADVTXD_L4LEN_SHIFT = common dso_local global i32 0, align 4
@IXGBE_ADVTXD_MSS_SHIFT = common dso_local global i32 0, align 4
@IXGBE_ADVTXD_IDX_SHIFT = common dso_local global i32 0, align 4
@IXGBE_ADVTXD_MACLEN_SHIFT = common dso_local global i32 0, align 4
@IXGBE_TX_FLAGS_VLAN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbevf_ring*, %struct.ixgbevf_tx_buffer*, i32*, %struct.ixgbevf_ipsec_tx_data*)* @ixgbevf_tso to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbevf_tso(%struct.ixgbevf_ring* %0, %struct.ixgbevf_tx_buffer* %1, i32* %2, %struct.ixgbevf_ipsec_tx_data* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ixgbevf_ring*, align 8
  %7 = alloca %struct.ixgbevf_tx_buffer*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ixgbevf_ipsec_tx_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca %union.anon, align 8
  %15 = alloca %union.anon.0, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  store %struct.ixgbevf_ring* %0, %struct.ixgbevf_ring** %6, align 8
  store %struct.ixgbevf_tx_buffer* %1, %struct.ixgbevf_tx_buffer** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.ixgbevf_ipsec_tx_data* %3, %struct.ixgbevf_ipsec_tx_data** %9, align 8
  %23 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %7, align 8
  %24 = getelementptr inbounds %struct.ixgbevf_tx_buffer, %struct.ixgbevf_tx_buffer* %23, i32 0, i32 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  store %struct.sk_buff* %25, %struct.sk_buff** %13, align 8
  store i32 0, i32* %18, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %244

32:                                               ; preds = %4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %34 = call i32 @skb_is_gso(%struct.sk_buff* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %244

37:                                               ; preds = %32
  %38 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %39 = call i32 @skb_cow_head(%struct.sk_buff* %38, i32 0)
  store i32 %39, i32* %19, align 4
  %40 = load i32, i32* %19, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* %19, align 4
  store i32 %43, i32* %5, align 4
  br label %244

44:                                               ; preds = %37
  %45 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %7, align 8
  %46 = getelementptr inbounds %struct.ixgbevf_tx_buffer, %struct.ixgbevf_tx_buffer* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @eth_p_mpls(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %52 = call i8* @skb_inner_network_header(%struct.sk_buff* %51)
  %53 = bitcast %union.anon* %14 to i8**
  store i8* %52, i8** %53, align 8
  br label %58

54:                                               ; preds = %44
  %55 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %56 = call i8* @skb_network_header(%struct.sk_buff* %55)
  %57 = bitcast %union.anon* %14 to i8**
  store i8* %56, i8** %57, align 8
  br label %58

58:                                               ; preds = %54, %50
  %59 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %60 = call i8* @skb_checksum_start(%struct.sk_buff* %59)
  %61 = bitcast %union.anon.0* %15 to i8**
  store i8* %60, i8** %61, align 8
  %62 = load i32, i32* @IXGBE_ADVTXD_TUCMD_L4T_TCP, align 4
  store i32 %62, i32* %11, align 4
  %63 = bitcast %union.anon* %14 to %struct.iphdr**
  %64 = load %struct.iphdr*, %struct.iphdr** %63, align 8
  %65 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %66, 4
  br i1 %67, label %68, label %119

68:                                               ; preds = %58
  %69 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %70 = call i8* @skb_checksum_start(%struct.sk_buff* %69)
  store i8* %70, i8** %20, align 8
  %71 = bitcast %union.anon* %14 to i8**
  %72 = load i8*, i8** %71, align 8
  %73 = bitcast %union.anon* %14 to %struct.iphdr**
  %74 = load %struct.iphdr*, %struct.iphdr** %73, align 8
  %75 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = mul nsw i32 %76, 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %72, i64 %78
  store i8* %79, i8** %21, align 8
  %80 = load i8*, i8** %20, align 8
  %81 = load i8*, i8** %21, align 8
  %82 = ptrtoint i8* %80 to i64
  %83 = ptrtoint i8* %81 to i64
  %84 = sub i64 %82, %83
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %22, align 4
  %86 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %87 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %86)
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @SKB_GSO_PARTIAL, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %68
  %94 = load i8*, i8** %21, align 8
  %95 = load i32, i32* %22, align 4
  %96 = call i32 @csum_partial(i8* %94, i32 %95, i32 0)
  %97 = call i32 @csum_fold(i32 %96)
  br label %99

98:                                               ; preds = %68
  br label %99

99:                                               ; preds = %98, %93
  %100 = phi i32 [ %97, %93 ], [ 0, %98 ]
  %101 = bitcast %union.anon* %14 to %struct.iphdr**
  %102 = load %struct.iphdr*, %struct.iphdr** %101, align 8
  %103 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %102, i32 0, i32 3
  store i32 %100, i32* %103, align 8
  %104 = load i32, i32* @IXGBE_ADVTXD_TUCMD_IPV4, align 4
  %105 = load i32, i32* %11, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %11, align 4
  %107 = bitcast %union.anon* %14 to %struct.iphdr**
  %108 = load %struct.iphdr*, %struct.iphdr** %107, align 8
  %109 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %108, i32 0, i32 2
  store i64 0, i64* %109, align 8
  %110 = load i32, i32* @IXGBE_TX_FLAGS_TSO, align 4
  %111 = load i32, i32* @IXGBE_TX_FLAGS_CSUM, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @IXGBE_TX_FLAGS_IPV4, align 4
  %114 = or i32 %112, %113
  %115 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %7, align 8
  %116 = getelementptr inbounds %struct.ixgbevf_tx_buffer, %struct.ixgbevf_tx_buffer* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 8
  br label %130

119:                                              ; preds = %58
  %120 = bitcast %union.anon* %14 to %struct.ipv6hdr**
  %121 = load %struct.ipv6hdr*, %struct.ipv6hdr** %120, align 8
  %122 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %121, i32 0, i32 0
  store i64 0, i64* %122, align 8
  %123 = load i32, i32* @IXGBE_TX_FLAGS_TSO, align 4
  %124 = load i32, i32* @IXGBE_TX_FLAGS_CSUM, align 4
  %125 = or i32 %123, %124
  %126 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %7, align 8
  %127 = getelementptr inbounds %struct.ixgbevf_tx_buffer, %struct.ixgbevf_tx_buffer* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 8
  br label %130

130:                                              ; preds = %119, %99
  %131 = bitcast %union.anon.0* %15 to i8**
  %132 = load i8*, i8** %131, align 8
  %133 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %134 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %133, i32 0, i32 1
  %135 = load i8*, i8** %134, align 8
  %136 = ptrtoint i8* %132 to i64
  %137 = ptrtoint i8* %135 to i64
  %138 = sub i64 %136, %137
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* %17, align 4
  %140 = bitcast %union.anon.0* %15 to %struct.tcphdr**
  %141 = load %struct.tcphdr*, %struct.tcphdr** %140, align 8
  %142 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = mul nsw i32 %143, 4
  %145 = load i32, i32* %17, align 4
  %146 = add nsw i32 %144, %145
  %147 = load i32*, i32** %8, align 8
  store i32 %146, i32* %147, align 4
  %148 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %149 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* %17, align 4
  %152 = sub nsw i32 %150, %151
  store i32 %152, i32* %16, align 4
  %153 = bitcast %union.anon.0* %15 to %struct.tcphdr**
  %154 = load %struct.tcphdr*, %struct.tcphdr** %153, align 8
  %155 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %154, i32 0, i32 1
  %156 = load i32, i32* %16, align 4
  %157 = call i32 @htonl(i32 %156)
  %158 = call i32 @csum_replace_by_diff(i32* %155, i32 %157)
  %159 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %160 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %159)
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %7, align 8
  %164 = getelementptr inbounds %struct.ixgbevf_tx_buffer, %struct.ixgbevf_tx_buffer* %163, i32 0, i32 2
  store i32 %162, i32* %164, align 8
  %165 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %7, align 8
  %166 = getelementptr inbounds %struct.ixgbevf_tx_buffer, %struct.ixgbevf_tx_buffer* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = sub nsw i32 %167, 1
  %169 = load i32*, i32** %8, align 8
  %170 = load i32, i32* %169, align 4
  %171 = mul nsw i32 %168, %170
  %172 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %7, align 8
  %173 = getelementptr inbounds %struct.ixgbevf_tx_buffer, %struct.ixgbevf_tx_buffer* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %174, %171
  store i32 %175, i32* %173, align 4
  %176 = load i32*, i32** %8, align 8
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* %17, align 4
  %179 = sub nsw i32 %177, %178
  %180 = load i32, i32* @IXGBE_ADVTXD_L4LEN_SHIFT, align 4
  %181 = shl i32 %179, %180
  store i32 %181, i32* %12, align 4
  %182 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %183 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %182)
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @IXGBE_ADVTXD_MSS_SHIFT, align 4
  %187 = shl i32 %185, %186
  %188 = load i32, i32* %12, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %12, align 4
  %190 = load i32, i32* @IXGBE_ADVTXD_IDX_SHIFT, align 4
  %191 = shl i32 1, %190
  %192 = load i32, i32* %12, align 4
  %193 = or i32 %192, %191
  store i32 %193, i32* %12, align 4
  %194 = load %struct.ixgbevf_ipsec_tx_data*, %struct.ixgbevf_ipsec_tx_data** %9, align 8
  %195 = getelementptr inbounds %struct.ixgbevf_ipsec_tx_data, %struct.ixgbevf_ipsec_tx_data* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* %18, align 4
  %198 = or i32 %197, %196
  store i32 %198, i32* %18, align 4
  %199 = load %struct.ixgbevf_ipsec_tx_data*, %struct.ixgbevf_ipsec_tx_data** %9, align 8
  %200 = getelementptr inbounds %struct.ixgbevf_ipsec_tx_data, %struct.ixgbevf_ipsec_tx_data* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.ixgbevf_ipsec_tx_data*, %struct.ixgbevf_ipsec_tx_data** %9, align 8
  %203 = getelementptr inbounds %struct.ixgbevf_ipsec_tx_data, %struct.ixgbevf_ipsec_tx_data* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = or i32 %201, %204
  %206 = load i32, i32* %11, align 4
  %207 = or i32 %206, %205
  store i32 %207, i32* %11, align 4
  %208 = bitcast %union.anon.0* %15 to i8**
  %209 = load i8*, i8** %208, align 8
  %210 = bitcast %union.anon* %14 to i8**
  %211 = load i8*, i8** %210, align 8
  %212 = ptrtoint i8* %209 to i64
  %213 = ptrtoint i8* %211 to i64
  %214 = sub i64 %212, %213
  %215 = trunc i64 %214 to i32
  store i32 %215, i32* %10, align 4
  %216 = bitcast %union.anon* %14 to i8**
  %217 = load i8*, i8** %216, align 8
  %218 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %219 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %218, i32 0, i32 1
  %220 = load i8*, i8** %219, align 8
  %221 = ptrtoint i8* %217 to i64
  %222 = ptrtoint i8* %220 to i64
  %223 = sub i64 %221, %222
  %224 = load i32, i32* @IXGBE_ADVTXD_MACLEN_SHIFT, align 4
  %225 = zext i32 %224 to i64
  %226 = shl i64 %223, %225
  %227 = load i32, i32* %10, align 4
  %228 = sext i32 %227 to i64
  %229 = or i64 %228, %226
  %230 = trunc i64 %229 to i32
  store i32 %230, i32* %10, align 4
  %231 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %7, align 8
  %232 = getelementptr inbounds %struct.ixgbevf_tx_buffer, %struct.ixgbevf_tx_buffer* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* @IXGBE_TX_FLAGS_VLAN_MASK, align 4
  %235 = and i32 %233, %234
  %236 = load i32, i32* %10, align 4
  %237 = or i32 %236, %235
  store i32 %237, i32* %10, align 4
  %238 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %6, align 8
  %239 = load i32, i32* %10, align 4
  %240 = load i32, i32* %18, align 4
  %241 = load i32, i32* %11, align 4
  %242 = load i32, i32* %12, align 4
  %243 = call i32 @ixgbevf_tx_ctxtdesc(%struct.ixgbevf_ring* %238, i32 %239, i32 %240, i32 %241, i32 %242)
  store i32 1, i32* %5, align 4
  br label %244

244:                                              ; preds = %130, %42, %36, %31
  %245 = load i32, i32* %5, align 4
  ret i32 %245
}

declare dso_local i32 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i32 @skb_cow_head(%struct.sk_buff*, i32) #1

declare dso_local i64 @eth_p_mpls(i32) #1

declare dso_local i8* @skb_inner_network_header(%struct.sk_buff*) #1

declare dso_local i8* @skb_network_header(%struct.sk_buff*) #1

declare dso_local i8* @skb_checksum_start(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @csum_fold(i32) #1

declare dso_local i32 @csum_partial(i8*, i32, i32) #1

declare dso_local i32 @csum_replace_by_diff(i32*, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @ixgbevf_tx_ctxtdesc(%struct.ixgbevf_ring*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
