; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ethtool.c___lb_other_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ethtool.c___lb_other_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_nic_ring_data = type { i32, %struct.TYPE_5__, %struct.hnae_ring* }
%struct.TYPE_5__ = type { %struct.net_device* }
%struct.net_device = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.hnae_ring = type { i32 }
%struct.sk_buff = type { i32, i32*, %struct.net_device* }
%struct.hns_nic_priv = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.netdev_queue = type { i32 }

@HNAE_PORT_SERVICE = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns_nic_ring_data*, %struct.sk_buff*)* @__lb_other_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__lb_other_process(%struct.hns_nic_ring_data* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hns_nic_ring_data*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.hns_nic_priv*, align 8
  %7 = alloca %struct.hnae_ring*, align 8
  %8 = alloca %struct.netdev_queue*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [33 x i8], align 16
  store %struct.hns_nic_ring_data* %0, %struct.hns_nic_ring_data** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %14 = load %struct.hns_nic_ring_data*, %struct.hns_nic_ring_data** %3, align 8
  %15 = icmp ne %struct.hns_nic_ring_data* %14, null
  br i1 %15, label %97, label %16

16:                                               ; preds = %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 2
  %19 = load %struct.net_device*, %struct.net_device** %18, align 8
  store %struct.net_device* %19, %struct.net_device** %5, align 8
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = call %struct.hns_nic_priv* @netdev_priv(%struct.net_device* %20)
  store %struct.hns_nic_priv* %21, %struct.hns_nic_priv** %6, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %10, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @memset(i32* %27, i32 255, i32 %28)
  %30 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %6, align 8
  %31 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @AE_IS_VER1(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %57, label %35

35:                                               ; preds = %16
  %36 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %6, align 8
  %37 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @HNAE_PORT_SERVICE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %35
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.net_device*, %struct.net_device** %5, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @memcpy(i32* %46, i32 %49, i32 6)
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 5
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 31
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %43, %35, %16
  %58 = load i32, i32* %10, align 4
  %59 = zext i32 %58 to i64
  %60 = and i64 %59, -2
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %10, align 4
  %62 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = udiv i32 %65, 2
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = load i32, i32* %10, align 4
  %70 = udiv i32 %69, 2
  %71 = sub i32 %70, 1
  %72 = call i32 @memset(i32* %68, i32 170, i32 %71)
  %73 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %74 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = udiv i32 %76, 2
  %78 = add i32 %77, 10
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %75, i64 %79
  %81 = load i32, i32* %10, align 4
  %82 = udiv i32 %81, 2
  %83 = sub i32 %82, 11
  %84 = call i32 @memset(i32* %80, i32 190, i32 %83)
  %85 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = udiv i32 %88, 2
  %90 = add i32 %89, 12
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %87, i64 %91
  %93 = load i32, i32* %10, align 4
  %94 = udiv i32 %93, 2
  %95 = sub i32 %94, 13
  %96 = call i32 @memset(i32* %92, i32 175, i32 %95)
  br label %225

97:                                               ; preds = %2
  %98 = load %struct.hns_nic_ring_data*, %struct.hns_nic_ring_data** %3, align 8
  %99 = getelementptr inbounds %struct.hns_nic_ring_data, %struct.hns_nic_ring_data* %98, i32 0, i32 2
  %100 = load %struct.hnae_ring*, %struct.hnae_ring** %99, align 8
  store %struct.hnae_ring* %100, %struct.hnae_ring** %7, align 8
  %101 = load %struct.hns_nic_ring_data*, %struct.hns_nic_ring_data** %3, align 8
  %102 = getelementptr inbounds %struct.hns_nic_ring_data, %struct.hns_nic_ring_data* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load %struct.net_device*, %struct.net_device** %103, align 8
  store %struct.net_device* %104, %struct.net_device** %5, align 8
  %105 = load %struct.hnae_ring*, %struct.hnae_ring** %7, align 8
  %106 = call i64 @is_tx_ring(%struct.hnae_ring* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %97
  %109 = load %struct.net_device*, %struct.net_device** %5, align 8
  %110 = load %struct.hns_nic_ring_data*, %struct.hns_nic_ring_data** %3, align 8
  %111 = getelementptr inbounds %struct.hns_nic_ring_data, %struct.hns_nic_ring_data* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %109, i32 %112)
  store %struct.netdev_queue* %113, %struct.netdev_queue** %8, align 8
  %114 = load %struct.netdev_queue*, %struct.netdev_queue** %8, align 8
  %115 = call i32 @netdev_tx_reset_queue(%struct.netdev_queue* %114)
  br label %225

116:                                              ; preds = %97
  %117 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %118 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %10, align 4
  %121 = zext i32 %120 to i64
  %122 = and i64 %121, -2
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %10, align 4
  %124 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %125 = load i32, i32* @GFP_ATOMIC, align 4
  %126 = call %struct.sk_buff* @skb_copy(%struct.sk_buff* %124, i32 %125)
  store %struct.sk_buff* %126, %struct.sk_buff** %9, align 8
  %127 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %128 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %127)
  %129 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %129, %struct.sk_buff** %4, align 8
  store i32 0, i32* %11, align 4
  %130 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %131 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 10
  %134 = load i32, i32* %133, align 4
  %135 = icmp eq i32 %134, 255
  br i1 %135, label %136, label %160

136:                                              ; preds = %116
  %137 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %138 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %137, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %10, align 4
  %141 = udiv i32 %140, 2
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %139, i64 %142
  %144 = getelementptr inbounds i32, i32* %143, i64 10
  %145 = load i32, i32* %144, align 4
  %146 = icmp eq i32 %145, 190
  br i1 %146, label %147, label %159

147:                                              ; preds = %136
  %148 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %149 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %10, align 4
  %152 = udiv i32 %151, 2
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %150, i64 %153
  %155 = getelementptr inbounds i32, i32* %154, i64 12
  %156 = load i32, i32* %155, align 4
  %157 = icmp eq i32 %156, 175
  br i1 %157, label %158, label %159

158:                                              ; preds = %147
  store i32 1, i32* %11, align 4
  br label %159

159:                                              ; preds = %158, %147, %136
  br label %160

160:                                              ; preds = %159, %116
  %161 = load i32, i32* %11, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %177

163:                                              ; preds = %160
  %164 = load %struct.net_device*, %struct.net_device** %5, align 8
  %165 = getelementptr inbounds %struct.net_device, %struct.net_device* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %166, align 4
  %169 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %170 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.net_device*, %struct.net_device** %5, align 8
  %173 = getelementptr inbounds %struct.net_device, %struct.net_device* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = add i32 %175, %171
  store i32 %176, i32* %174, align 4
  br label %222

177:                                              ; preds = %160
  %178 = load %struct.net_device*, %struct.net_device** %5, align 8
  %179 = getelementptr inbounds %struct.net_device, %struct.net_device* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %180, align 4
  store i32 0, i32* %12, align 4
  br label %183

183:                                              ; preds = %218, %177
  %184 = load i32, i32* %12, align 4
  %185 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %186 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = icmp ult i32 %184, %187
  br i1 %188, label %189, label %221

189:                                              ; preds = %183
  %190 = getelementptr inbounds [33 x i8], [33 x i8]* %13, i64 0, i64 0
  %191 = load i32, i32* %12, align 4
  %192 = srem i32 %191, 16
  %193 = mul nsw i32 %192, 2
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8, i8* %190, i64 %194
  %196 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %197 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %196, i32 0, i32 1
  %198 = load i32*, i32** %197, align 8
  %199 = load i32, i32* %12, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @snprintf(i8* %195, i32 3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %202)
  %204 = load i32, i32* %12, align 4
  %205 = srem i32 %204, 16
  %206 = icmp eq i32 %205, 15
  br i1 %206, label %214, label %207

207:                                              ; preds = %189
  %208 = load i32, i32* %12, align 4
  %209 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %210 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = sub i32 %211, 1
  %213 = icmp eq i32 %208, %212
  br i1 %213, label %214, label %217

214:                                              ; preds = %207, %189
  %215 = getelementptr inbounds [33 x i8], [33 x i8]* %13, i64 0, i64 0
  %216 = call i32 @pr_info(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %215)
  br label %217

217:                                              ; preds = %214, %207
  br label %218

218:                                              ; preds = %217
  %219 = load i32, i32* %12, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %12, align 4
  br label %183

221:                                              ; preds = %183
  br label %222

222:                                              ; preds = %221, %163
  %223 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %224 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %223)
  br label %225

225:                                              ; preds = %222, %108, %57
  ret void
}

declare dso_local %struct.hns_nic_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @AE_IS_VER1(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i64 @is_tx_ring(%struct.hnae_ring*) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local i32 @netdev_tx_reset_queue(%struct.netdev_queue*) #1

declare dso_local %struct.sk_buff* @skb_copy(%struct.sk_buff*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @pr_info(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
