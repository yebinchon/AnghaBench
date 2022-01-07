; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_geneve.c_geneve_xmit_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_geneve.c_geneve_xmit_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.geneve_dev = type { i64, i32, i32, %struct.TYPE_6__, i64, i64, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ip_tunnel_info = type { %struct.ip_tunnel_key, i64 }
%struct.ip_tunnel_key = type { i32, i64, i32 }
%struct.geneve_sock = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.rtable = type { i32 }
%struct.flowi4 = type { i32, i32, i32 }
%struct.ethhdr = type { i32 }
%struct.iphdr = type { i32 }

@GENEVE_IPV4_HLEN = common dso_local global i64 0, align 8
@USHRT_MAX = common dso_local global i32 0, align 4
@TUNNEL_DONT_FRAGMENT = common dso_local global i32 0, align 4
@IP_DF = common dso_local global i32 0, align 4
@GENEVE_DF_SET = common dso_local global i64 0, align 8
@GENEVE_DF_INHERIT = common dso_local global i64 0, align 8
@ETH_P_IPV6 = common dso_local global i64 0, align 8
@ETH_P_IP = common dso_local global i64 0, align 8
@TUNNEL_CSUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, %struct.geneve_dev*, %struct.ip_tunnel_info*)* @geneve_xmit_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @geneve_xmit_skb(%struct.sk_buff* %0, %struct.net_device* %1, %struct.geneve_dev* %2, %struct.ip_tunnel_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.geneve_dev*, align 8
  %9 = alloca %struct.ip_tunnel_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.geneve_sock*, align 8
  %12 = alloca %struct.ip_tunnel_key*, align 8
  %13 = alloca %struct.rtable*, align 8
  %14 = alloca %struct.flowi4, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.ethhdr*, align 8
  %21 = alloca %struct.iphdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store %struct.geneve_dev* %2, %struct.geneve_dev** %8, align 8
  store %struct.ip_tunnel_info* %3, %struct.ip_tunnel_info** %9, align 8
  %22 = load %struct.geneve_dev*, %struct.geneve_dev** %8, align 8
  %23 = getelementptr inbounds %struct.geneve_dev, %struct.geneve_dev* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.geneve_dev*, %struct.geneve_dev** %8, align 8
  %26 = getelementptr inbounds %struct.geneve_dev, %struct.geneve_dev* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @dev_net(i32 %27)
  %29 = call i32 @net_eq(i32 %24, i32 %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %10, align 4
  %33 = load %struct.geneve_dev*, %struct.geneve_dev** %8, align 8
  %34 = getelementptr inbounds %struct.geneve_dev, %struct.geneve_dev* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 8
  %36 = call %struct.geneve_sock* @rcu_dereference(i32 %35)
  store %struct.geneve_sock* %36, %struct.geneve_sock** %11, align 8
  %37 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %9, align 8
  %38 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %37, i32 0, i32 0
  store %struct.ip_tunnel_key* %38, %struct.ip_tunnel_key** %12, align 8
  store i32 0, i32* %17, align 4
  %39 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %40 = load %struct.net_device*, %struct.net_device** %7, align 8
  %41 = load %struct.geneve_sock*, %struct.geneve_sock** %11, align 8
  %42 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %9, align 8
  %43 = call %struct.rtable* @geneve_get_v4_rt(%struct.sk_buff* %39, %struct.net_device* %40, %struct.geneve_sock* %41, %struct.flowi4* %14, %struct.ip_tunnel_info* %42)
  store %struct.rtable* %43, %struct.rtable** %13, align 8
  %44 = load %struct.rtable*, %struct.rtable** %13, align 8
  %45 = call i64 @IS_ERR(%struct.rtable* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %4
  %48 = load %struct.rtable*, %struct.rtable** %13, align 8
  %49 = call i32 @PTR_ERR(%struct.rtable* %48)
  store i32 %49, i32* %5, align 4
  br label %228

50:                                               ; preds = %4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %52 = load %struct.rtable*, %struct.rtable** %13, align 8
  %53 = getelementptr inbounds %struct.rtable, %struct.rtable* %52, i32 0, i32 0
  %54 = load i64, i64* @GENEVE_IPV4_HLEN, align 8
  %55 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %9, align 8
  %56 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %54, %57
  %59 = call i32 @skb_tunnel_check_pmtu(%struct.sk_buff* %51, i32* %53, i64 %58)
  %60 = load %struct.geneve_dev*, %struct.geneve_dev** %8, align 8
  %61 = getelementptr inbounds %struct.geneve_dev, %struct.geneve_dev* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %64 = load i32, i32* @USHRT_MAX, align 4
  %65 = call i32 @udp_flow_src_port(i32 %62, %struct.sk_buff* %63, i32 1, i32 %64, i32 1)
  store i32 %65, i32* %18, align 4
  %66 = load %struct.geneve_dev*, %struct.geneve_dev** %8, align 8
  %67 = getelementptr inbounds %struct.geneve_dev, %struct.geneve_dev* %66, i32 0, i32 5
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %93

70:                                               ; preds = %50
  %71 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %12, align 8
  %72 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %75 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %74)
  %76 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %77 = call i64 @ip_tunnel_ecn_encap(i32 %73, %struct.iphdr* %75, %struct.sk_buff* %76)
  store i64 %77, i64* %15, align 8
  %78 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %12, align 8
  %79 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %16, align 8
  %81 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %12, align 8
  %82 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @TUNNEL_DONT_FRAGMENT, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %70
  %88 = load i32, i32* @IP_DF, align 4
  %89 = call i32 @htons(i32 %88)
  br label %91

90:                                               ; preds = %70
  br label %91

91:                                               ; preds = %90, %87
  %92 = phi i32 [ %89, %87 ], [ 0, %90 ]
  store i32 %92, i32* %17, align 4
  br label %174

93:                                               ; preds = %50
  %94 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %14, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %97 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %96)
  %98 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %99 = call i64 @ip_tunnel_ecn_encap(i32 %95, %struct.iphdr* %97, %struct.sk_buff* %98)
  store i64 %99, i64* %15, align 8
  %100 = load %struct.geneve_dev*, %struct.geneve_dev** %8, align 8
  %101 = getelementptr inbounds %struct.geneve_dev, %struct.geneve_dev* %100, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %93
  %105 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %106 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %105)
  %107 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %108 = call i64 @ip_tunnel_get_ttl(%struct.iphdr* %106, %struct.sk_buff* %107)
  store i64 %108, i64* %16, align 8
  br label %113

109:                                              ; preds = %93
  %110 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %12, align 8
  %111 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %16, align 8
  br label %113

113:                                              ; preds = %109, %104
  %114 = load i64, i64* %16, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  br label %121

117:                                              ; preds = %113
  %118 = load %struct.rtable*, %struct.rtable** %13, align 8
  %119 = getelementptr inbounds %struct.rtable, %struct.rtable* %118, i32 0, i32 0
  %120 = call i64 @ip4_dst_hoplimit(i32* %119)
  br label %121

121:                                              ; preds = %117, %116
  %122 = phi i64 [ %114, %116 ], [ %120, %117 ]
  store i64 %122, i64* %16, align 8
  %123 = load %struct.geneve_dev*, %struct.geneve_dev** %8, align 8
  %124 = getelementptr inbounds %struct.geneve_dev, %struct.geneve_dev* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @GENEVE_DF_SET, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %121
  %129 = load i32, i32* @IP_DF, align 4
  %130 = call i32 @htons(i32 %129)
  store i32 %130, i32* %17, align 4
  br label %173

131:                                              ; preds = %121
  %132 = load %struct.geneve_dev*, %struct.geneve_dev** %8, align 8
  %133 = getelementptr inbounds %struct.geneve_dev, %struct.geneve_dev* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @GENEVE_DF_INHERIT, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %172

137:                                              ; preds = %131
  %138 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %139 = call %struct.ethhdr* @eth_hdr(%struct.sk_buff* %138)
  store %struct.ethhdr* %139, %struct.ethhdr** %20, align 8
  %140 = load %struct.ethhdr*, %struct.ethhdr** %20, align 8
  %141 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i64 @ntohs(i32 %142)
  %144 = load i64, i64* @ETH_P_IPV6, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %137
  %147 = load i32, i32* @IP_DF, align 4
  %148 = call i32 @htons(i32 %147)
  store i32 %148, i32* %17, align 4
  br label %171

149:                                              ; preds = %137
  %150 = load %struct.ethhdr*, %struct.ethhdr** %20, align 8
  %151 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i64 @ntohs(i32 %152)
  %154 = load i64, i64* @ETH_P_IP, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %170

156:                                              ; preds = %149
  %157 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %158 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %157)
  store %struct.iphdr* %158, %struct.iphdr** %21, align 8
  %159 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %160 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @IP_DF, align 4
  %163 = call i32 @htons(i32 %162)
  %164 = and i32 %161, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %156
  %167 = load i32, i32* @IP_DF, align 4
  %168 = call i32 @htons(i32 %167)
  store i32 %168, i32* %17, align 4
  br label %169

169:                                              ; preds = %166, %156
  br label %170

170:                                              ; preds = %169, %149
  br label %171

171:                                              ; preds = %170, %146
  br label %172

172:                                              ; preds = %171, %131
  br label %173

173:                                              ; preds = %172, %128
  br label %174

174:                                              ; preds = %173, %91
  %175 = load %struct.rtable*, %struct.rtable** %13, align 8
  %176 = getelementptr inbounds %struct.rtable, %struct.rtable* %175, i32 0, i32 0
  %177 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %178 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %9, align 8
  %179 = load i32, i32* %10, align 4
  %180 = call i32 @geneve_build_skb(i32* %176, %struct.sk_buff* %177, %struct.ip_tunnel_info* %178, i32 %179, i32 4)
  store i32 %180, i32* %19, align 4
  %181 = load i32, i32* %19, align 4
  %182 = call i64 @unlikely(i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %174
  %185 = load i32, i32* %19, align 4
  store i32 %185, i32* %5, align 4
  br label %228

186:                                              ; preds = %174
  %187 = load %struct.rtable*, %struct.rtable** %13, align 8
  %188 = load %struct.geneve_sock*, %struct.geneve_sock** %11, align 8
  %189 = getelementptr inbounds %struct.geneve_sock, %struct.geneve_sock* %188, i32 0, i32 0
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %194 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %14, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %14, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load i64, i64* %15, align 8
  %199 = load i64, i64* %16, align 8
  %200 = load i32, i32* %17, align 4
  %201 = load i32, i32* %18, align 4
  %202 = load %struct.geneve_dev*, %struct.geneve_dev** %8, align 8
  %203 = getelementptr inbounds %struct.geneve_dev, %struct.geneve_dev* %202, i32 0, i32 3
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.geneve_dev*, %struct.geneve_dev** %8, align 8
  %208 = getelementptr inbounds %struct.geneve_dev, %struct.geneve_dev* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.geneve_dev*, %struct.geneve_dev** %8, align 8
  %211 = getelementptr inbounds %struct.geneve_dev, %struct.geneve_dev* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @dev_net(i32 %212)
  %214 = call i32 @net_eq(i32 %209, i32 %213)
  %215 = icmp ne i32 %214, 0
  %216 = xor i1 %215, true
  %217 = zext i1 %216 to i32
  %218 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %9, align 8
  %219 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @TUNNEL_CSUM, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  %225 = xor i1 %224, true
  %226 = zext i1 %225 to i32
  %227 = call i32 @udp_tunnel_xmit_skb(%struct.rtable* %187, i32 %192, %struct.sk_buff* %193, i32 %195, i32 %197, i64 %198, i64 %199, i32 %200, i32 %201, i32 %206, i32 %217, i32 %226)
  store i32 0, i32* %5, align 4
  br label %228

228:                                              ; preds = %186, %184, %47
  %229 = load i32, i32* %5, align 4
  ret i32 %229
}

declare dso_local i32 @net_eq(i32, i32) #1

declare dso_local i32 @dev_net(i32) #1

declare dso_local %struct.geneve_sock* @rcu_dereference(i32) #1

declare dso_local %struct.rtable* @geneve_get_v4_rt(%struct.sk_buff*, %struct.net_device*, %struct.geneve_sock*, %struct.flowi4*, %struct.ip_tunnel_info*) #1

declare dso_local i64 @IS_ERR(%struct.rtable*) #1

declare dso_local i32 @PTR_ERR(%struct.rtable*) #1

declare dso_local i32 @skb_tunnel_check_pmtu(%struct.sk_buff*, i32*, i64) #1

declare dso_local i32 @udp_flow_src_port(i32, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i64 @ip_tunnel_ecn_encap(i32, %struct.iphdr*, %struct.sk_buff*) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @ip_tunnel_get_ttl(%struct.iphdr*, %struct.sk_buff*) #1

declare dso_local i64 @ip4_dst_hoplimit(i32*) #1

declare dso_local %struct.ethhdr* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @geneve_build_skb(i32*, %struct.sk_buff*, %struct.ip_tunnel_info*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @udp_tunnel_xmit_skb(%struct.rtable*, i32, %struct.sk_buff*, i32, i32, i64, i64, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
