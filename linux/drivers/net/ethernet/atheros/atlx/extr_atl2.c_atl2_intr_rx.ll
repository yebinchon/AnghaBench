; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl2.c_atl2_intr_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl2.c_atl2_intr_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl2_adapter = type { i32, i64, i64, i32, %struct.rx_desc*, %struct.net_device* }
%struct.rx_desc = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i64, i64, i64, i64, i64, i64 }
%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32, i32 }

@ETH_P_8021Q = common dso_local global i32 0, align 4
@REG_MB_RXD_RD_IDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atl2_adapter*)* @atl2_intr_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl2_intr_rx(%struct.atl2_adapter* %0) #0 {
  %2 = alloca %struct.atl2_adapter*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rx_desc*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.atl2_adapter* %0, %struct.atl2_adapter** %2, align 8
  %8 = load %struct.atl2_adapter*, %struct.atl2_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %8, i32 0, i32 5
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %3, align 8
  br label %11

11:                                               ; preds = %193, %1
  %12 = load %struct.atl2_adapter*, %struct.atl2_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %12, i32 0, i32 4
  %14 = load %struct.rx_desc*, %struct.rx_desc** %13, align 8
  %15 = load %struct.atl2_adapter*, %struct.atl2_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %14, i64 %18
  store %struct.rx_desc* %19, %struct.rx_desc** %4, align 8
  %20 = load %struct.rx_desc*, %struct.rx_desc** %4, align 8
  %21 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 7
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %11
  br label %194

26:                                               ; preds = %11
  %27 = load %struct.rx_desc*, %struct.rx_desc** %4, align 8
  %28 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 7
  store i64 0, i64* %29, align 8
  %30 = load %struct.rx_desc*, %struct.rx_desc** %4, align 8
  %31 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %119

35:                                               ; preds = %26
  %36 = load %struct.rx_desc*, %struct.rx_desc** %4, align 8
  %37 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sge i32 %39, 60
  br i1 %40, label %41, label %119

41:                                               ; preds = %35
  %42 = load %struct.rx_desc*, %struct.rx_desc** %4, align 8
  %43 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %45, 4
  store i32 %46, i32* %6, align 4
  %47 = load %struct.net_device*, %struct.net_device** %3, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device* %47, i32 %48)
  store %struct.sk_buff* %49, %struct.sk_buff** %5, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = icmp eq %struct.sk_buff* null, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %41
  %53 = load %struct.net_device*, %struct.net_device** %3, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  br label %194

58:                                               ; preds = %41
  %59 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.rx_desc*, %struct.rx_desc** %4, align 8
  %63 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @memcpy(i32 %61, i32 %64, i32 %65)
  %67 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @skb_put(%struct.sk_buff* %67, i32 %68)
  %70 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %71 = load %struct.net_device*, %struct.net_device** %3, align 8
  %72 = call i32 @eth_type_trans(%struct.sk_buff* %70, %struct.net_device* %71)
  %73 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %74 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load %struct.rx_desc*, %struct.rx_desc** %4, align 8
  %76 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 6
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %105

80:                                               ; preds = %58
  %81 = load %struct.rx_desc*, %struct.rx_desc** %4, align 8
  %82 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = ashr i32 %84, 4
  %86 = load %struct.rx_desc*, %struct.rx_desc** %4, align 8
  %87 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, 7
  %91 = shl i32 %90, 13
  %92 = or i32 %85, %91
  %93 = load %struct.rx_desc*, %struct.rx_desc** %4, align 8
  %94 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, 8
  %98 = shl i32 %97, 9
  %99 = or i32 %92, %98
  store i32 %99, i32* %7, align 4
  %100 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %101 = load i32, i32* @ETH_P_8021Q, align 4
  %102 = call i32 @htons(i32 %101)
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %100, i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %80, %58
  %106 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %107 = call i32 @netif_rx(%struct.sk_buff* %106)
  %108 = load i32, i32* %6, align 4
  %109 = load %struct.net_device*, %struct.net_device** %3, align 8
  %110 = getelementptr inbounds %struct.net_device, %struct.net_device* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, %108
  store i32 %113, i32* %111, align 4
  %114 = load %struct.net_device*, %struct.net_device** %3, align 8
  %115 = getelementptr inbounds %struct.net_device, %struct.net_device* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 6
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 4
  br label %179

119:                                              ; preds = %35, %26
  %120 = load %struct.net_device*, %struct.net_device** %3, align 8
  %121 = getelementptr inbounds %struct.net_device, %struct.net_device* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 4
  %125 = load %struct.rx_desc*, %struct.rx_desc** %4, align 8
  %126 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 5
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %142

130:                                              ; preds = %119
  %131 = load %struct.rx_desc*, %struct.rx_desc** %4, align 8
  %132 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp sle i32 %134, 60
  br i1 %135, label %136, label %142

136:                                              ; preds = %130
  %137 = load %struct.net_device*, %struct.net_device** %3, align 8
  %138 = getelementptr inbounds %struct.net_device, %struct.net_device* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %139, align 4
  br label %142

142:                                              ; preds = %136, %130, %119
  %143 = load %struct.rx_desc*, %struct.rx_desc** %4, align 8
  %144 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 4
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %142
  %149 = load %struct.net_device*, %struct.net_device** %3, align 8
  %150 = getelementptr inbounds %struct.net_device, %struct.net_device* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %151, align 4
  br label %154

154:                                              ; preds = %148, %142
  %155 = load %struct.rx_desc*, %struct.rx_desc** %4, align 8
  %156 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 3
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %154
  %161 = load %struct.net_device*, %struct.net_device** %3, align 8
  %162 = getelementptr inbounds %struct.net_device, %struct.net_device* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %163, align 4
  br label %166

166:                                              ; preds = %160, %154
  %167 = load %struct.rx_desc*, %struct.rx_desc** %4, align 8
  %168 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %166
  %173 = load %struct.net_device*, %struct.net_device** %3, align 8
  %174 = getelementptr inbounds %struct.net_device, %struct.net_device* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %175, align 4
  br label %178

178:                                              ; preds = %172, %166
  br label %179

179:                                              ; preds = %178, %105
  %180 = load %struct.atl2_adapter*, %struct.atl2_adapter** %2, align 8
  %181 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %181, align 8
  %184 = sext i32 %183 to i64
  %185 = load %struct.atl2_adapter*, %struct.atl2_adapter** %2, align 8
  %186 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = icmp eq i64 %184, %187
  br i1 %188, label %189, label %192

189:                                              ; preds = %179
  %190 = load %struct.atl2_adapter*, %struct.atl2_adapter** %2, align 8
  %191 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %190, i32 0, i32 0
  store i32 0, i32* %191, align 8
  br label %192

192:                                              ; preds = %189, %179
  br label %193

193:                                              ; preds = %192
  br i1 true, label %11, label %194

194:                                              ; preds = %193, %52, %25
  %195 = load %struct.atl2_adapter*, %struct.atl2_adapter** %2, align 8
  %196 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = sext i32 %197 to i64
  %199 = load %struct.atl2_adapter*, %struct.atl2_adapter** %2, align 8
  %200 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %199, i32 0, i32 2
  store i64 %198, i64* %200, align 8
  %201 = load %struct.atl2_adapter*, %struct.atl2_adapter** %2, align 8
  %202 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %201, i32 0, i32 3
  %203 = load i32, i32* @REG_MB_RXD_RD_IDX, align 4
  %204 = load %struct.atl2_adapter*, %struct.atl2_adapter** %2, align 8
  %205 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %204, i32 0, i32 2
  %206 = load i64, i64* %205, align 8
  %207 = call i32 @ATL2_WRITE_REGW(i32* %202, i32 %203, i64 %206)
  ret void
}

declare dso_local %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local i32 @ATL2_WRITE_REGW(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
