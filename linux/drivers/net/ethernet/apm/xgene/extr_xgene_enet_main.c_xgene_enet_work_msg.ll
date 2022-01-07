; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_main.c_xgene_enet_work_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_main.c_xgene_enet_work_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32, %struct.net_device*, i32 }
%struct.net_device = type { i32 }
%struct.iphdr = type { i64 }
%struct.TYPE_2__ = type { i32, i32, i32* }

@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@TSO_IPPROTO_TCP = common dso_local global i32 0, align 4
@NETIF_F_TSO = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ET = common dso_local global i32 0, align 4
@MSS = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i64 0, align 8
@UDP_HDR_SIZE = common dso_local global i32 0, align 4
@TCPHDR = common dso_local global i32 0, align 4
@IPHDR = common dso_local global i32 0, align 4
@ETHHDR = common dso_local global i32 0, align 4
@EC = common dso_local global i32 0, align 4
@IS = common dso_local global i32 0, align 4
@IC = common dso_local global i32 0, align 4
@TYPE_ETH_WORK_MESSAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32*)* @xgene_enet_work_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_enet_work_msg(%struct.sk_buff* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iphdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32* %1, i32** %5, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 2
  %21 = load %struct.net_device*, %struct.net_device** %20, align 8
  store %struct.net_device* %21, %struct.net_device** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @xgene_enet_hdr_len(i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* @ETH_P_IP, align 4
  %30 = call i64 @htons(i32 %29)
  %31 = icmp ne i64 %28, %30
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %2
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* @ETH_P_8021Q, align 4
  %40 = call i64 @htons(i32 %39)
  %41 = icmp ne i64 %38, %40
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  br label %192

46:                                               ; preds = %35, %2
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 2
  %49 = load %struct.net_device*, %struct.net_device** %48, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %46
  br label %192

60:                                               ; preds = %46
  %61 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %62 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %61)
  store %struct.iphdr* %62, %struct.iphdr** %7, align 8
  %63 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %64 = call i32 @ip_is_fragment(%struct.iphdr* %63)
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %192

68:                                               ; preds = %60
  %69 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %70 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @IPPROTO_TCP, align 8
  %73 = icmp eq i64 %71, %72
  %74 = zext i1 %73 to i32
  %75 = call i64 @likely(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %182

77:                                               ; preds = %68
  %78 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %79 = call i32 @tcp_hdrlen(%struct.sk_buff* %78)
  %80 = ashr i32 %79, 2
  store i32 %80, i32* %9, align 4
  store i32 1, i32* %12, align 4
  %81 = load i32, i32* @TSO_IPPROTO_TCP, align 4
  store i32 %81, i32* %11, align 4
  %82 = load %struct.net_device*, %struct.net_device** %6, align 8
  %83 = getelementptr inbounds %struct.net_device, %struct.net_device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @NETIF_F_TSO, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %181

88:                                               ; preds = %77
  %89 = load i32, i32* %10, align 4
  %90 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %91 = call i32 @ip_hdrlen(%struct.sk_buff* %90)
  %92 = add nsw i32 %89, %91
  %93 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %94 = call i32 @tcp_hdrlen(%struct.sk_buff* %93)
  %95 = add nsw i32 %92, %94
  store i32 %95, i32* %13, align 4
  %96 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %97 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %96)
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  store i32 %99, i32* %14, align 4
  %100 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %101 = call i64 @skb_is_nonlinear(%struct.sk_buff* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %147

103:                                              ; preds = %88
  %104 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %105 = call i32 @skb_headlen(%struct.sk_buff* %104)
  store i32 %105, i32* %16, align 4
  %106 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %107 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %106)
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %17, align 4
  store i32 0, i32* %15, align 4
  br label %110

110:                                              ; preds = %130, %103
  %111 = load i32, i32* %15, align 4
  %112 = icmp slt i32 %111, 2
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = load i32, i32* %15, align 4
  %115 = load i32, i32* %17, align 4
  %116 = icmp slt i32 %114, %115
  br label %117

117:                                              ; preds = %113, %110
  %118 = phi i1 [ false, %110 ], [ %116, %113 ]
  br i1 %118, label %119, label %133

119:                                              ; preds = %117
  %120 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %121 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %120)
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %15, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = call i32 @skb_frag_size(i32* %126)
  %128 = load i32, i32* %16, align 4
  %129 = add nsw i32 %128, %127
  store i32 %129, i32* %16, align 4
  br label %130

130:                                              ; preds = %119
  %131 = load i32, i32* %15, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %15, align 4
  br label %110

133:                                              ; preds = %117
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* %16, align 4
  %136 = icmp sgt i32 %134, %135
  %137 = zext i1 %136 to i32
  %138 = call i64 @unlikely(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %133
  %141 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %142 = call i64 @skb_linearize(%struct.sk_buff* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  store i32 0, i32* %3, align 4
  br label %224

145:                                              ; preds = %140
  br label %146

146:                                              ; preds = %145, %133
  br label %147

147:                                              ; preds = %146, %88
  %148 = load i32, i32* %14, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %158

150:                                              ; preds = %147
  %151 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %152 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* %13, align 4
  %155 = sub nsw i32 %153, %154
  %156 = load i32, i32* %14, align 4
  %157 = icmp sle i32 %155, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %150, %147
  br label %192

159:                                              ; preds = %150
  %160 = load %struct.net_device*, %struct.net_device** %6, align 8
  %161 = load i32, i32* %14, align 4
  %162 = call i32 @xgene_enet_setup_mss(%struct.net_device* %160, i32 %161)
  store i32 %162, i32* %18, align 4
  %163 = load i32, i32* %18, align 4
  %164 = icmp slt i32 %163, 0
  %165 = zext i1 %164 to i32
  %166 = call i64 @unlikely(i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %159
  %169 = load i32, i32* @EBUSY, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %3, align 4
  br label %224

171:                                              ; preds = %159
  %172 = load i32, i32* @ET, align 4
  %173 = call i32 @SET_BIT(i32 %172)
  %174 = load i32, i32* @MSS, align 4
  %175 = load i32, i32* %18, align 4
  %176 = call i32 @SET_VAL(i32 %174, i32 %175)
  %177 = or i32 %173, %176
  %178 = load i32*, i32** %5, align 8
  %179 = load i32, i32* %178, align 4
  %180 = or i32 %179, %177
  store i32 %180, i32* %178, align 4
  br label %181

181:                                              ; preds = %171, %77
  br label %191

182:                                              ; preds = %68
  %183 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %184 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @IPPROTO_UDP, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %190

188:                                              ; preds = %182
  %189 = load i32, i32* @UDP_HDR_SIZE, align 4
  store i32 %189, i32* %9, align 4
  store i32 1, i32* %12, align 4
  br label %190

190:                                              ; preds = %188, %182
  br label %191

191:                                              ; preds = %190, %181
  br label %192

192:                                              ; preds = %191, %158, %67, %59, %45
  %193 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %194 = call i32 @ip_hdrlen(%struct.sk_buff* %193)
  %195 = ashr i32 %194, 2
  store i32 %195, i32* %8, align 4
  %196 = load i32, i32* @TCPHDR, align 4
  %197 = load i32, i32* %9, align 4
  %198 = call i32 @SET_VAL(i32 %196, i32 %197)
  %199 = load i32, i32* @IPHDR, align 4
  %200 = load i32, i32* %8, align 4
  %201 = call i32 @SET_VAL(i32 %199, i32 %200)
  %202 = or i32 %198, %201
  %203 = load i32, i32* @ETHHDR, align 4
  %204 = load i32, i32* %10, align 4
  %205 = call i32 @SET_VAL(i32 %203, i32 %204)
  %206 = or i32 %202, %205
  %207 = load i32, i32* @EC, align 4
  %208 = load i32, i32* %12, align 4
  %209 = call i32 @SET_VAL(i32 %207, i32 %208)
  %210 = or i32 %206, %209
  %211 = load i32, i32* @IS, align 4
  %212 = load i32, i32* %11, align 4
  %213 = call i32 @SET_VAL(i32 %211, i32 %212)
  %214 = or i32 %210, %213
  %215 = load i32, i32* @IC, align 4
  %216 = call i32 @SET_BIT(i32 %215)
  %217 = or i32 %214, %216
  %218 = load i32, i32* @TYPE_ETH_WORK_MESSAGE, align 4
  %219 = call i32 @SET_BIT(i32 %218)
  %220 = or i32 %217, %219
  %221 = load i32*, i32** %5, align 8
  %222 = load i32, i32* %221, align 4
  %223 = or i32 %222, %220
  store i32 %223, i32* %221, align 4
  store i32 0, i32* %3, align 4
  br label %224

224:                                              ; preds = %192, %168, %144
  %225 = load i32, i32* %3, align 4
  ret i32 %225
}

declare dso_local i32 @xgene_enet_hdr_len(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ip_is_fragment(%struct.iphdr*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @tcp_hdrlen(%struct.sk_buff*) #1

declare dso_local i32 @ip_hdrlen(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @skb_is_nonlinear(%struct.sk_buff*) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i64 @skb_linearize(%struct.sk_buff*) #1

declare dso_local i32 @xgene_enet_setup_mss(%struct.net_device*, i32) #1

declare dso_local i32 @SET_BIT(i32) #1

declare dso_local i32 @SET_VAL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
