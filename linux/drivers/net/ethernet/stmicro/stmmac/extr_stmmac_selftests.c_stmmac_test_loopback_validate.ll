; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_selftests.c_stmmac_test_loopback_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_selftests.c_stmmac_test_loopback_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.packet_type = type { %struct.stmmac_test_priv* }
%struct.stmmac_test_priv = type { i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64, i64, i32, i64, i64, i64, i64 }
%struct.net_device = type { i32 }
%struct.stmmachdr = type { i64, i64 }
%struct.ethhdr = type { i64, i64 }
%struct.udphdr = type { i64 }
%struct.tcphdr = type { i64 }
%struct.iphdr = type { i64, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@STMMAC_TEST_PKT_SIZE = common dso_local global i64 0, align 8
@ETH_HLEN = common dso_local global i64 0, align 8
@IPPROTO_TCP = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i64 0, align 8
@STMMAC_TEST_PKT_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, %struct.packet_type*, %struct.net_device*)* @stmmac_test_loopback_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmmac_test_loopback_validate(%struct.sk_buff* %0, %struct.net_device* %1, %struct.packet_type* %2, %struct.net_device* %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.packet_type*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.stmmac_test_priv*, align 8
  %10 = alloca %struct.stmmachdr*, align 8
  %11 = alloca %struct.ethhdr*, align 8
  %12 = alloca %struct.udphdr*, align 8
  %13 = alloca %struct.tcphdr*, align 8
  %14 = alloca %struct.iphdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.packet_type* %2, %struct.packet_type** %7, align 8
  store %struct.net_device* %3, %struct.net_device** %8, align 8
  %15 = load %struct.packet_type*, %struct.packet_type** %7, align 8
  %16 = getelementptr inbounds %struct.packet_type, %struct.packet_type* %15, i32 0, i32 0
  %17 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %16, align 8
  store %struct.stmmac_test_priv* %17, %struct.stmmac_test_priv** %9, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = load i32, i32* @GFP_ATOMIC, align 4
  %20 = call %struct.sk_buff* @skb_unshare(%struct.sk_buff* %18, i32 %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %5, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  br label %222

24:                                               ; preds = %4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = call i64 @skb_linearize(%struct.sk_buff* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %222

29:                                               ; preds = %24
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = call i64 @skb_headlen(%struct.sk_buff* %30)
  %32 = load i64, i64* @STMMAC_TEST_PKT_SIZE, align 8
  %33 = load i64, i64* @ETH_HLEN, align 8
  %34 = sub nsw i64 %32, %33
  %35 = icmp slt i64 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %222

37:                                               ; preds = %29
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = call i64 @skb_mac_header(%struct.sk_buff* %38)
  %40 = inttoptr i64 %39 to %struct.ethhdr*
  store %struct.ethhdr* %40, %struct.ethhdr** %11, align 8
  %41 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %9, align 8
  %42 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 6
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %37
  %48 = load %struct.ethhdr*, %struct.ethhdr** %11, align 8
  %49 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %9, align 8
  %52 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 6
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @ether_addr_equal(i64 %50, i64 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %47
  br label %222

59:                                               ; preds = %47
  br label %60

60:                                               ; preds = %59, %37
  %61 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %9, align 8
  %62 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %61, i32 0, i32 2
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 5
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %60
  %68 = load %struct.ethhdr*, %struct.ethhdr** %11, align 8
  %69 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.ethhdr*, %struct.ethhdr** %11, align 8
  %72 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @ether_addr_equal(i64 %70, i64 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %67
  br label %222

77:                                               ; preds = %67
  br label %99

78:                                               ; preds = %60
  %79 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %9, align 8
  %80 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %79, i32 0, i32 2
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %78
  %86 = load %struct.ethhdr*, %struct.ethhdr** %11, align 8
  %87 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %9, align 8
  %90 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %89, i32 0, i32 2
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @ether_addr_equal(i64 %88, i64 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %85
  br label %222

97:                                               ; preds = %85
  br label %98

98:                                               ; preds = %97, %78
  br label %99

99:                                               ; preds = %98, %77
  %100 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %101 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %100)
  store %struct.iphdr* %101, %struct.iphdr** %14, align 8
  %102 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %9, align 8
  %103 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %99
  %107 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %108 = call i64 @skb_network_header(%struct.sk_buff* %107)
  %109 = add nsw i64 %108, 4
  %110 = inttoptr i64 %109 to %struct.iphdr*
  store %struct.iphdr* %110, %struct.iphdr** %14, align 8
  br label %111

111:                                              ; preds = %106, %99
  %112 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %9, align 8
  %113 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %112, i32 0, i32 2
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %151

118:                                              ; preds = %111
  %119 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %120 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @IPPROTO_TCP, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %118
  br label %222

125:                                              ; preds = %118
  %126 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %127 = bitcast %struct.iphdr* %126 to i32*
  %128 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %129 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = mul nsw i32 4, %130
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %127, i64 %132
  %134 = bitcast i32* %133 to %struct.tcphdr*
  store %struct.tcphdr* %134, %struct.tcphdr** %13, align 8
  %135 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %136 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %9, align 8
  %139 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %138, i32 0, i32 2
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = call i64 @htons(i32 %142)
  %144 = icmp ne i64 %137, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %125
  br label %222

146:                                              ; preds = %125
  %147 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %148 = bitcast %struct.tcphdr* %147 to i32*
  %149 = getelementptr inbounds i32, i32* %148, i64 8
  %150 = bitcast i32* %149 to %struct.stmmachdr*
  store %struct.stmmachdr* %150, %struct.stmmachdr** %10, align 8
  br label %184

151:                                              ; preds = %111
  %152 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %153 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @IPPROTO_UDP, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %151
  br label %222

158:                                              ; preds = %151
  %159 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %160 = bitcast %struct.iphdr* %159 to i32*
  %161 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %162 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = mul nsw i32 4, %163
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %160, i64 %165
  %167 = bitcast i32* %166 to %struct.udphdr*
  store %struct.udphdr* %167, %struct.udphdr** %12, align 8
  %168 = load %struct.udphdr*, %struct.udphdr** %12, align 8
  %169 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %9, align 8
  %172 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %171, i32 0, i32 2
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = call i64 @htons(i32 %175)
  %177 = icmp ne i64 %170, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %158
  br label %222

179:                                              ; preds = %158
  %180 = load %struct.udphdr*, %struct.udphdr** %12, align 8
  %181 = bitcast %struct.udphdr* %180 to i32*
  %182 = getelementptr inbounds i32, i32* %181, i64 8
  %183 = bitcast i32* %182 to %struct.stmmachdr*
  store %struct.stmmachdr* %183, %struct.stmmachdr** %10, align 8
  br label %184

184:                                              ; preds = %179, %146
  %185 = load %struct.stmmachdr*, %struct.stmmachdr** %10, align 8
  %186 = getelementptr inbounds %struct.stmmachdr, %struct.stmmachdr* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i32, i32* @STMMAC_TEST_PKT_MAGIC, align 4
  %189 = call i64 @cpu_to_be64(i32 %188)
  %190 = icmp ne i64 %187, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %184
  br label %222

192:                                              ; preds = %184
  %193 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %9, align 8
  %194 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %193, i32 0, i32 2
  %195 = load %struct.TYPE_2__*, %struct.TYPE_2__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %205

199:                                              ; preds = %192
  %200 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %201 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %205, label %204

204:                                              ; preds = %199
  br label %222

205:                                              ; preds = %199, %192
  %206 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %9, align 8
  %207 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %206, i32 0, i32 2
  %208 = load %struct.TYPE_2__*, %struct.TYPE_2__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.stmmachdr*, %struct.stmmachdr** %10, align 8
  %212 = getelementptr inbounds %struct.stmmachdr, %struct.stmmachdr* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %210, %213
  br i1 %214, label %215, label %216

215:                                              ; preds = %205
  br label %222

216:                                              ; preds = %205
  %217 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %9, align 8
  %218 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %217, i32 0, i32 0
  store i32 1, i32* %218, align 8
  %219 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %9, align 8
  %220 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %219, i32 0, i32 1
  %221 = call i32 @complete(i32* %220)
  br label %222

222:                                              ; preds = %216, %215, %204, %191, %178, %157, %145, %124, %96, %76, %58, %36, %28, %23
  %223 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %224 = call i32 @kfree_skb(%struct.sk_buff* %223)
  ret i32 0
}

declare dso_local %struct.sk_buff* @skb_unshare(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_linearize(%struct.sk_buff*) #1

declare dso_local i64 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i64 @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @ether_addr_equal(i64, i64) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i64 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i64 @cpu_to_be64(i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
