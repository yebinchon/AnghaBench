; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ppp/extr_pptp.c_pptp_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ppp/extr_pptp.c_pptp_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppp_channel = type { i64 }
%struct.sk_buff = type { i8*, i32, i64, i32 }
%struct.sock = type { i32 }
%struct.pppox_sock = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.pptp_opt }
%struct.pptp_opt = type { i32, i64, i64, i64, %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_17__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.net = type { i32 }
%struct.pptp_gre_header = type { i8*, i8*, %struct.TYPE_18__, i8*, i8* }
%struct.TYPE_18__ = type { i32, i32 }
%struct.flowi4 = type { i32, i32 }
%struct.rtable = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.iphdr = type { i32, i32, i8*, i32, i32, i32, i64, i32, i8* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }

@PPPOX_DEAD = common dso_local global i32 0, align 4
@IPPROTO_GRE = common dso_local global i32 0, align 4
@PPP_LCP = common dso_local global i8 0, align 1
@SC_COMP_PROT = common dso_local global i32 0, align 4
@SC_COMP_AC = common dso_local global i32 0, align 4
@PPP_ALLSTATIONS = common dso_local global i8 0, align 1
@PPP_UI = common dso_local global i8 0, align 1
@GRE_KEY = common dso_local global i32 0, align 4
@GRE_VERSION_1 = common dso_local global i32 0, align 4
@GRE_SEQ = common dso_local global i32 0, align 4
@GRE_PROTO_PPP = common dso_local global i32 0, align 4
@GRE_ACK = common dso_local global i32 0, align 4
@IPSKB_XFRM_TUNNEL_SIZE = common dso_local global i32 0, align 4
@IPSKB_XFRM_TRANSFORMED = common dso_local global i32 0, align 4
@IPSKB_REROUTED = common dso_local global i32 0, align 4
@IP_DF = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ppp_channel*, %struct.sk_buff*)* @pptp_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pptp_xmit(%struct.ppp_channel* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ppp_channel*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.pppox_sock*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.pptp_opt*, align 8
  %10 = alloca %struct.pptp_gre_header*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.flowi4, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.rtable*, align 8
  %18 = alloca %struct.net_device*, align 8
  %19 = alloca %struct.iphdr*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.sk_buff*, align 8
  store %struct.ppp_channel* %0, %struct.ppp_channel** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %22 = load %struct.ppp_channel*, %struct.ppp_channel** %4, align 8
  %23 = getelementptr inbounds %struct.ppp_channel, %struct.ppp_channel* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.sock*
  store %struct.sock* %25, %struct.sock** %6, align 8
  %26 = load %struct.sock*, %struct.sock** %6, align 8
  %27 = call %struct.pppox_sock* @pppox_sk(%struct.sock* %26)
  store %struct.pppox_sock* %27, %struct.pppox_sock** %7, align 8
  %28 = load %struct.sock*, %struct.sock** %6, align 8
  %29 = call %struct.net* @sock_net(%struct.sock* %28)
  store %struct.net* %29, %struct.net** %8, align 8
  %30 = load %struct.pppox_sock*, %struct.pppox_sock** %7, align 8
  %31 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  store %struct.pptp_opt* %32, %struct.pptp_opt** %9, align 8
  store i32 40, i32* %11, align 4
  %33 = load %struct.pppox_sock*, %struct.pppox_sock** %7, align 8
  %34 = call %struct.TYPE_20__* @sk_pppox(%struct.pppox_sock* %33)
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @PPPOX_DEAD, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %2
  br label %339

41:                                               ; preds = %2
  %42 = load %struct.net*, %struct.net** %8, align 8
  %43 = load %struct.pptp_opt*, %struct.pptp_opt** %9, align 8
  %44 = getelementptr inbounds %struct.pptp_opt, %struct.pptp_opt* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.pptp_opt*, %struct.pptp_opt** %9, align 8
  %49 = getelementptr inbounds %struct.pptp_opt, %struct.pptp_opt* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @IPPROTO_GRE, align 4
  %54 = call i32 @RT_TOS(i32 0)
  %55 = call %struct.rtable* @ip_route_output_ports(%struct.net* %42, %struct.flowi4* %12, i32* null, i32 %47, i32 %52, i32 0, i32 0, i32 %53, i32 %54, i32 0)
  store %struct.rtable* %55, %struct.rtable** %17, align 8
  %56 = load %struct.rtable*, %struct.rtable** %17, align 8
  %57 = call i64 @IS_ERR(%struct.rtable* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %41
  br label %339

60:                                               ; preds = %41
  %61 = load %struct.rtable*, %struct.rtable** %17, align 8
  %62 = getelementptr inbounds %struct.rtable, %struct.rtable* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 0
  %64 = load %struct.net_device*, %struct.net_device** %63, align 8
  store %struct.net_device* %64, %struct.net_device** %18, align 8
  %65 = load %struct.net_device*, %struct.net_device** %18, align 8
  %66 = call i32 @LL_RESERVED_SPACE(%struct.net_device* %65)
  %67 = sext i32 %66 to i64
  %68 = add i64 %67, 56
  %69 = add i64 %68, 40
  %70 = add i64 %69, 2
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %20, align 4
  %72 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %73 = call i32 @skb_headroom(%struct.sk_buff* %72)
  %74 = load i32, i32* %20, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %84, label %76

76:                                               ; preds = %60
  %77 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %78 = call i64 @skb_cloned(%struct.sk_buff* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %82 = call i64 @skb_shared(%struct.sk_buff* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %108

84:                                               ; preds = %80, %76, %60
  %85 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %86 = load i32, i32* %20, align 4
  %87 = call %struct.sk_buff* @skb_realloc_headroom(%struct.sk_buff* %85, i32 %86)
  store %struct.sk_buff* %87, %struct.sk_buff** %21, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %89 = icmp ne %struct.sk_buff* %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %84
  %91 = load %struct.rtable*, %struct.rtable** %17, align 8
  %92 = call i32 @ip_rt_put(%struct.rtable* %91)
  br label %339

93:                                               ; preds = %84
  %94 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %95 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %93
  %99 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %101 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @skb_set_owner_w(%struct.sk_buff* %99, i64 %102)
  br label %104

104:                                              ; preds = %98, %93
  %105 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %106 = call i32 @consume_skb(%struct.sk_buff* %105)
  %107 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  store %struct.sk_buff* %107, %struct.sk_buff** %5, align 8
  br label %108

108:                                              ; preds = %104, %80
  %109 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %110 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  store i8* %111, i8** %15, align 8
  %112 = load i8*, i8** %15, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 0
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  %116 = shl i32 %115, 8
  %117 = load i8*, i8** %15, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 1
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  %121 = add nsw i32 %116, %120
  %122 = load i8, i8* @PPP_LCP, align 1
  %123 = zext i8 %122 to i32
  %124 = icmp eq i32 %121, %123
  br i1 %124, label %125, label %137

125:                                              ; preds = %108
  %126 = load i8*, i8** %15, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 2
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = icmp sle i32 1, %129
  br i1 %130, label %131, label %137

131:                                              ; preds = %125
  %132 = load i8*, i8** %15, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 2
  %134 = load i8, i8* %133, align 1
  %135 = zext i8 %134 to i32
  %136 = icmp sle i32 %135, 7
  br label %137

137:                                              ; preds = %131, %125, %108
  %138 = phi i1 [ false, %125 ], [ false, %108 ], [ %136, %131 ]
  %139 = zext i1 %138 to i32
  store i32 %139, i32* %13, align 4
  %140 = load %struct.pptp_opt*, %struct.pptp_opt** %9, align 8
  %141 = getelementptr inbounds %struct.pptp_opt, %struct.pptp_opt* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @SC_COMP_PROT, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %158

146:                                              ; preds = %137
  %147 = load i8*, i8** %15, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 0
  %149 = load i8, i8* %148, align 1
  %150 = zext i8 %149 to i32
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %146
  %153 = load i32, i32* %13, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %158, label %155

155:                                              ; preds = %152
  %156 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %157 = call i32 @skb_pull(%struct.sk_buff* %156, i32 1)
  br label %158

158:                                              ; preds = %155, %152, %146, %137
  %159 = load %struct.pptp_opt*, %struct.pptp_opt** %9, align 8
  %160 = getelementptr inbounds %struct.pptp_opt, %struct.pptp_opt* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @SC_COMP_AC, align 4
  %163 = and i32 %161, %162
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %168, label %165

165:                                              ; preds = %158
  %166 = load i32, i32* %13, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %177

168:                                              ; preds = %165, %158
  %169 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %170 = call i8* @skb_push(%struct.sk_buff* %169, i32 2)
  store i8* %170, i8** %15, align 8
  %171 = load i8, i8* @PPP_ALLSTATIONS, align 1
  %172 = load i8*, i8** %15, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 0
  store i8 %171, i8* %173, align 1
  %174 = load i8, i8* @PPP_UI, align 1
  %175 = load i8*, i8** %15, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 1
  store i8 %174, i8* %176, align 1
  br label %177

177:                                              ; preds = %168, %165
  %178 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %179 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  store i32 %180, i32* %14, align 4
  %181 = load %struct.pptp_opt*, %struct.pptp_opt** %9, align 8
  %182 = getelementptr inbounds %struct.pptp_opt, %struct.pptp_opt* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  store i64 %183, i64* %16, align 8
  %184 = load %struct.pptp_opt*, %struct.pptp_opt** %9, align 8
  %185 = getelementptr inbounds %struct.pptp_opt, %struct.pptp_opt* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* %16, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %194

189:                                              ; preds = %177
  %190 = load i32, i32* %11, align 4
  %191 = zext i32 %190 to i64
  %192 = sub i64 %191, 8
  %193 = trunc i64 %192 to i32
  store i32 %193, i32* %11, align 4
  br label %194

194:                                              ; preds = %189, %177
  %195 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %196 = load i32, i32* %11, align 4
  %197 = call i8* @skb_push(%struct.sk_buff* %195, i32 %196)
  %198 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %199 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %198, i32 0, i32 0
  %200 = load i8*, i8** %199, align 8
  %201 = bitcast i8* %200 to %struct.pptp_gre_header*
  store %struct.pptp_gre_header* %201, %struct.pptp_gre_header** %10, align 8
  %202 = load i32, i32* @GRE_KEY, align 4
  %203 = load i32, i32* @GRE_VERSION_1, align 4
  %204 = or i32 %202, %203
  %205 = load i32, i32* @GRE_SEQ, align 4
  %206 = or i32 %204, %205
  %207 = load %struct.pptp_gre_header*, %struct.pptp_gre_header** %10, align 8
  %208 = getelementptr inbounds %struct.pptp_gre_header, %struct.pptp_gre_header* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %208, i32 0, i32 0
  store i32 %206, i32* %209, align 8
  %210 = load i32, i32* @GRE_PROTO_PPP, align 4
  %211 = load %struct.pptp_gre_header*, %struct.pptp_gre_header** %10, align 8
  %212 = getelementptr inbounds %struct.pptp_gre_header, %struct.pptp_gre_header* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %212, i32 0, i32 1
  store i32 %210, i32* %213, align 4
  %214 = load %struct.pptp_opt*, %struct.pptp_opt** %9, align 8
  %215 = getelementptr inbounds %struct.pptp_opt, %struct.pptp_opt* %214, i32 0, i32 4
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = call i8* @htons(i32 %217)
  %219 = load %struct.pptp_gre_header*, %struct.pptp_gre_header** %10, align 8
  %220 = getelementptr inbounds %struct.pptp_gre_header, %struct.pptp_gre_header* %219, i32 0, i32 4
  store i8* %218, i8** %220, align 8
  %221 = load %struct.pptp_opt*, %struct.pptp_opt** %9, align 8
  %222 = getelementptr inbounds %struct.pptp_opt, %struct.pptp_opt* %221, i32 0, i32 3
  %223 = load i64, i64* %222, align 8
  %224 = add nsw i64 %223, 1
  store i64 %224, i64* %222, align 8
  %225 = call i8* @htonl(i64 %224)
  %226 = load %struct.pptp_gre_header*, %struct.pptp_gre_header** %10, align 8
  %227 = getelementptr inbounds %struct.pptp_gre_header, %struct.pptp_gre_header* %226, i32 0, i32 3
  store i8* %225, i8** %227, align 8
  %228 = load %struct.pptp_opt*, %struct.pptp_opt** %9, align 8
  %229 = getelementptr inbounds %struct.pptp_opt, %struct.pptp_opt* %228, i32 0, i32 2
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* %16, align 8
  %232 = icmp ne i64 %230, %231
  br i1 %232, label %233, label %247

233:                                              ; preds = %194
  %234 = load i32, i32* @GRE_ACK, align 4
  %235 = load %struct.pptp_gre_header*, %struct.pptp_gre_header** %10, align 8
  %236 = getelementptr inbounds %struct.pptp_gre_header, %struct.pptp_gre_header* %235, i32 0, i32 2
  %237 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = or i32 %238, %234
  store i32 %239, i32* %237, align 8
  %240 = load i64, i64* %16, align 8
  %241 = call i8* @htonl(i64 %240)
  %242 = load %struct.pptp_gre_header*, %struct.pptp_gre_header** %10, align 8
  %243 = getelementptr inbounds %struct.pptp_gre_header, %struct.pptp_gre_header* %242, i32 0, i32 1
  store i8* %241, i8** %243, align 8
  %244 = load i64, i64* %16, align 8
  %245 = load %struct.pptp_opt*, %struct.pptp_opt** %9, align 8
  %246 = getelementptr inbounds %struct.pptp_opt, %struct.pptp_opt* %245, i32 0, i32 2
  store i64 %244, i64* %246, align 8
  br label %247

247:                                              ; preds = %233, %194
  %248 = load i32, i32* %14, align 4
  %249 = call i8* @htons(i32 %248)
  %250 = load %struct.pptp_gre_header*, %struct.pptp_gre_header** %10, align 8
  %251 = getelementptr inbounds %struct.pptp_gre_header, %struct.pptp_gre_header* %250, i32 0, i32 0
  store i8* %249, i8** %251, align 8
  %252 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %253 = call i32 @skb_reset_transport_header(%struct.sk_buff* %252)
  %254 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %255 = call i8* @skb_push(%struct.sk_buff* %254, i32 56)
  %256 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %257 = call i32 @skb_reset_network_header(%struct.sk_buff* %256)
  %258 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %259 = call %struct.TYPE_12__* @IPCB(%struct.sk_buff* %258)
  %260 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %259, i32 0, i32 1
  %261 = call i32 @memset(i32* %260, i32 0, i32 4)
  %262 = load i32, i32* @IPSKB_XFRM_TUNNEL_SIZE, align 4
  %263 = load i32, i32* @IPSKB_XFRM_TRANSFORMED, align 4
  %264 = or i32 %262, %263
  %265 = load i32, i32* @IPSKB_REROUTED, align 4
  %266 = or i32 %264, %265
  %267 = xor i32 %266, -1
  %268 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %269 = call %struct.TYPE_12__* @IPCB(%struct.sk_buff* %268)
  %270 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = and i32 %271, %267
  store i32 %272, i32* %270, align 4
  %273 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %274 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %273)
  store %struct.iphdr* %274, %struct.iphdr** %19, align 8
  %275 = load %struct.iphdr*, %struct.iphdr** %19, align 8
  %276 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %275, i32 0, i32 0
  store i32 4, i32* %276, align 8
  %277 = load %struct.iphdr*, %struct.iphdr** %19, align 8
  %278 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %277, i32 0, i32 1
  store i32 14, i32* %278, align 4
  %279 = load %struct.sock*, %struct.sock** %6, align 8
  %280 = load %struct.rtable*, %struct.rtable** %17, align 8
  %281 = getelementptr inbounds %struct.rtable, %struct.rtable* %280, i32 0, i32 0
  %282 = call i64 @ip_dont_fragment(%struct.sock* %279, %struct.TYPE_19__* %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %289

284:                                              ; preds = %247
  %285 = load i32, i32* @IP_DF, align 4
  %286 = call i8* @htons(i32 %285)
  %287 = load %struct.iphdr*, %struct.iphdr** %19, align 8
  %288 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %287, i32 0, i32 8
  store i8* %286, i8** %288, align 8
  br label %292

289:                                              ; preds = %247
  %290 = load %struct.iphdr*, %struct.iphdr** %19, align 8
  %291 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %290, i32 0, i32 8
  store i8* null, i8** %291, align 8
  br label %292

292:                                              ; preds = %289, %284
  %293 = load i32, i32* @IPPROTO_GRE, align 4
  %294 = load %struct.iphdr*, %struct.iphdr** %19, align 8
  %295 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %294, i32 0, i32 7
  store i32 %293, i32* %295, align 8
  %296 = load %struct.iphdr*, %struct.iphdr** %19, align 8
  %297 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %296, i32 0, i32 6
  store i64 0, i64* %297, align 8
  %298 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %12, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = load %struct.iphdr*, %struct.iphdr** %19, align 8
  %301 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %300, i32 0, i32 5
  store i32 %299, i32* %301, align 8
  %302 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %12, i32 0, i32 0
  %303 = load i32, i32* %302, align 4
  %304 = load %struct.iphdr*, %struct.iphdr** %19, align 8
  %305 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %304, i32 0, i32 4
  store i32 %303, i32* %305, align 4
  %306 = load %struct.rtable*, %struct.rtable** %17, align 8
  %307 = getelementptr inbounds %struct.rtable, %struct.rtable* %306, i32 0, i32 0
  %308 = call i32 @ip4_dst_hoplimit(%struct.TYPE_19__* %307)
  %309 = load %struct.iphdr*, %struct.iphdr** %19, align 8
  %310 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %309, i32 0, i32 3
  store i32 %308, i32* %310, align 8
  %311 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %312 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 8
  %314 = call i8* @htons(i32 %313)
  %315 = load %struct.iphdr*, %struct.iphdr** %19, align 8
  %316 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %315, i32 0, i32 2
  store i8* %314, i8** %316, align 8
  %317 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %318 = call i32 @skb_dst_drop(%struct.sk_buff* %317)
  %319 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %320 = load %struct.rtable*, %struct.rtable** %17, align 8
  %321 = getelementptr inbounds %struct.rtable, %struct.rtable* %320, i32 0, i32 0
  %322 = call i32 @skb_dst_set(%struct.sk_buff* %319, %struct.TYPE_19__* %321)
  %323 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %324 = call i32 @nf_reset_ct(%struct.sk_buff* %323)
  %325 = load i32, i32* @CHECKSUM_NONE, align 4
  %326 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %327 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %326, i32 0, i32 3
  store i32 %325, i32* %327, align 8
  %328 = load %struct.net*, %struct.net** %8, align 8
  %329 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %330 = call i32 @ip_select_ident(%struct.net* %328, %struct.sk_buff* %329, i32* null)
  %331 = load %struct.iphdr*, %struct.iphdr** %19, align 8
  %332 = call i32 @ip_send_check(%struct.iphdr* %331)
  %333 = load %struct.net*, %struct.net** %8, align 8
  %334 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %335 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %334, i32 0, i32 2
  %336 = load i64, i64* %335, align 8
  %337 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %338 = call i32 @ip_local_out(%struct.net* %333, i64 %336, %struct.sk_buff* %337)
  store i32 1, i32* %3, align 4
  br label %342

339:                                              ; preds = %90, %59, %40
  %340 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %341 = call i32 @kfree_skb(%struct.sk_buff* %340)
  store i32 1, i32* %3, align 4
  br label %342

342:                                              ; preds = %339, %292
  %343 = load i32, i32* %3, align 4
  ret i32 %343
}

declare dso_local %struct.pppox_sock* @pppox_sk(%struct.sock*) #1

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local %struct.TYPE_20__* @sk_pppox(%struct.pppox_sock*) #1

declare dso_local %struct.rtable* @ip_route_output_ports(%struct.net*, %struct.flowi4*, i32*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @RT_TOS(i32) #1

declare dso_local i64 @IS_ERR(%struct.rtable*) #1

declare dso_local i32 @LL_RESERVED_SPACE(%struct.net_device*) #1

declare dso_local i32 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i64 @skb_cloned(%struct.sk_buff*) #1

declare dso_local i64 @skb_shared(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_realloc_headroom(%struct.sk_buff*, i32) #1

declare dso_local i32 @ip_rt_put(%struct.rtable*) #1

declare dso_local i32 @skb_set_owner_w(%struct.sk_buff*, i64) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i8* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i8* @htonl(i64) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local %struct.TYPE_12__* @IPCB(%struct.sk_buff*) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i64 @ip_dont_fragment(%struct.sock*, %struct.TYPE_19__*) #1

declare dso_local i32 @ip4_dst_hoplimit(%struct.TYPE_19__*) #1

declare dso_local i32 @skb_dst_drop(%struct.sk_buff*) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, %struct.TYPE_19__*) #1

declare dso_local i32 @nf_reset_ct(%struct.sk_buff*) #1

declare dso_local i32 @ip_select_ident(%struct.net*, %struct.sk_buff*, i32*) #1

declare dso_local i32 @ip_send_check(%struct.iphdr*) #1

declare dso_local i32 @ip_local_out(%struct.net*, i64, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
