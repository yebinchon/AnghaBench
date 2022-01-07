; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_sge.c_t1_sge_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_sge.c_t1_sge_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.adapter = type { i64, i32, %struct.sge* }
%struct.sge = type { i64, %struct.TYPE_3__, i32, %struct.cmdQ* }
%struct.TYPE_3__ = type { i32* }
%struct.cmdQ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"%s: Tx ring full while queue awake!\0A\00", align 1
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@F_CMDQ1_ENABLE = common dso_local global i32 0, align 4
@CMDQ_STAT_LAST_PKT_DB = common dso_local global i32 0, align 4
@CMDQ_STAT_RUNNING = common dso_local global i32 0, align 4
@F_CMDQ0_ENABLE = common dso_local global i32 0, align 4
@A_SG_DOORBELL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.adapter*, i32, %struct.net_device*)* @t1_sge_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t1_sge_tx(%struct.sk_buff* %0, %struct.adapter* %1, i32 %2, %struct.net_device* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.sge*, align 8
  %11 = alloca %struct.cmdQ*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.adapter* %1, %struct.adapter** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.net_device* %3, %struct.net_device** %9, align 8
  %17 = load %struct.adapter*, %struct.adapter** %7, align 8
  %18 = getelementptr inbounds %struct.adapter, %struct.adapter* %17, i32 0, i32 2
  %19 = load %struct.sge*, %struct.sge** %18, align 8
  store %struct.sge* %19, %struct.sge** %10, align 8
  %20 = load %struct.sge*, %struct.sge** %10, align 8
  %21 = getelementptr inbounds %struct.sge, %struct.sge* %20, i32 0, i32 3
  %22 = load %struct.cmdQ*, %struct.cmdQ** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %22, i64 %24
  store %struct.cmdQ* %25, %struct.cmdQ** %11, align 8
  store i32 0, i32* %16, align 4
  %26 = load %struct.cmdQ*, %struct.cmdQ** %11, align 8
  %27 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %26, i32 0, i32 5
  %28 = call i32 @spin_lock(i32* %27)
  %29 = load %struct.sge*, %struct.sge** %10, align 8
  %30 = load %struct.cmdQ*, %struct.cmdQ** %11, align 8
  %31 = call i32 @reclaim_completed_tx(%struct.sge* %29, %struct.cmdQ* %30)
  %32 = load %struct.cmdQ*, %struct.cmdQ** %11, align 8
  %33 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %13, align 4
  %35 = load %struct.cmdQ*, %struct.cmdQ** %11, align 8
  %36 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.cmdQ*, %struct.cmdQ** %11, align 8
  %39 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = sub i32 %37, %40
  store i32 %41, i32* %12, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %43 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %42)
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 1, %45
  store i32 %46, i32* %15, align 4
  %47 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %48 = call i64 @compute_large_page_tx_descs(%struct.sk_buff* %47)
  %49 = load i32, i32* %15, align 4
  %50 = zext i32 %49 to i64
  %51 = add nsw i64 %50, %48
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %15, align 4
  %55 = icmp ult i32 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %88

59:                                               ; preds = %4
  %60 = load %struct.net_device*, %struct.net_device** %9, align 8
  %61 = call i32 @netif_queue_stopped(%struct.net_device* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %83, label %63

63:                                               ; preds = %59
  %64 = load %struct.net_device*, %struct.net_device** %9, align 8
  %65 = call i32 @netif_stop_queue(%struct.net_device* %64)
  %66 = load %struct.net_device*, %struct.net_device** %9, align 8
  %67 = getelementptr inbounds %struct.net_device, %struct.net_device* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.sge*, %struct.sge** %10, align 8
  %70 = getelementptr inbounds %struct.sge, %struct.sge* %69, i32 0, i32 2
  %71 = call i32 @set_bit(i32 %68, i32* %70)
  %72 = load %struct.sge*, %struct.sge** %10, align 8
  %73 = getelementptr inbounds %struct.sge, %struct.sge* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 2
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  %79 = load %struct.adapter*, %struct.adapter** %7, align 8
  %80 = getelementptr inbounds %struct.adapter, %struct.adapter* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %63, %59
  %84 = load %struct.cmdQ*, %struct.cmdQ** %11, align 8
  %85 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %84, i32 0, i32 5
  %86 = call i32 @spin_unlock(i32* %85)
  %87 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %87, i32* %5, align 4
  br label %250

88:                                               ; preds = %4
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* %15, align 4
  %91 = sub i32 %89, %90
  %92 = load %struct.cmdQ*, %struct.cmdQ** %11, align 8
  %93 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = icmp ult i32 %91, %94
  %96 = zext i1 %95 to i32
  %97 = call i64 @unlikely(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %115

99:                                               ; preds = %88
  %100 = load %struct.net_device*, %struct.net_device** %9, align 8
  %101 = call i32 @netif_stop_queue(%struct.net_device* %100)
  %102 = load %struct.net_device*, %struct.net_device** %9, align 8
  %103 = getelementptr inbounds %struct.net_device, %struct.net_device* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.sge*, %struct.sge** %10, align 8
  %106 = getelementptr inbounds %struct.sge, %struct.sge* %105, i32 0, i32 2
  %107 = call i32 @set_bit(i32 %104, i32* %106)
  %108 = load %struct.sge*, %struct.sge** %10, align 8
  %109 = getelementptr inbounds %struct.sge, %struct.sge* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 2
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 4
  br label %115

115:                                              ; preds = %99, %88
  %116 = load %struct.sge*, %struct.sge** %10, align 8
  %117 = getelementptr inbounds %struct.sge, %struct.sge* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %156

120:                                              ; preds = %115
  %121 = load i32, i32* %8, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %156, label %123

123:                                              ; preds = %120
  %124 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %125 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %156

128:                                              ; preds = %123
  br label %129

129:                                              ; preds = %239, %128
  store i32 1, i32* %16, align 4
  %130 = load %struct.sge*, %struct.sge** %10, align 8
  %131 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %132 = load i32, i32* %12, align 4
  %133 = call %struct.sk_buff* @sched_skb(%struct.sge* %130, %struct.sk_buff* %131, i32 %132)
  store %struct.sk_buff* %133, %struct.sk_buff** %6, align 8
  %134 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %135 = icmp ne %struct.sk_buff* %134, null
  br i1 %135, label %141, label %136

136:                                              ; preds = %129
  %137 = load %struct.cmdQ*, %struct.cmdQ** %11, align 8
  %138 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %137, i32 0, i32 5
  %139 = call i32 @spin_unlock(i32* %138)
  %140 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %140, i32* %5, align 4
  br label %250

141:                                              ; preds = %129
  %142 = load %struct.cmdQ*, %struct.cmdQ** %11, align 8
  %143 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  store i32 %144, i32* %13, align 4
  %145 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %146 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %145)
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 1, %148
  store i32 %149, i32* %15, align 4
  %150 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %151 = call i64 @compute_large_page_tx_descs(%struct.sk_buff* %150)
  %152 = load i32, i32* %15, align 4
  %153 = zext i32 %152 to i64
  %154 = add nsw i64 %153, %151
  %155 = trunc i64 %154 to i32
  store i32 %155, i32* %15, align 4
  br label %156

156:                                              ; preds = %141, %123, %120, %115
  %157 = load i32, i32* %15, align 4
  %158 = load %struct.cmdQ*, %struct.cmdQ** %11, align 8
  %159 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = add i32 %160, %157
  store i32 %161, i32* %159, align 4
  %162 = load %struct.cmdQ*, %struct.cmdQ** %11, align 8
  %163 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 4
  store i32 %164, i32* %14, align 4
  %165 = load %struct.cmdQ*, %struct.cmdQ** %11, align 8
  %166 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  store i32 %167, i32* %13, align 4
  %168 = load i32, i32* %15, align 4
  %169 = load %struct.cmdQ*, %struct.cmdQ** %11, align 8
  %170 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = add i32 %171, %168
  store i32 %172, i32* %170, align 4
  %173 = load %struct.cmdQ*, %struct.cmdQ** %11, align 8
  %174 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.cmdQ*, %struct.cmdQ** %11, align 8
  %177 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = icmp uge i32 %175, %178
  br i1 %179, label %180, label %192

180:                                              ; preds = %156
  %181 = load %struct.cmdQ*, %struct.cmdQ** %11, align 8
  %182 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.cmdQ*, %struct.cmdQ** %11, align 8
  %185 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = sub i32 %186, %183
  store i32 %187, i32* %185, align 4
  %188 = load %struct.cmdQ*, %struct.cmdQ** %11, align 8
  %189 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 4
  %191 = xor i32 %190, 1
  store i32 %191, i32* %189, align 4
  br label %192

192:                                              ; preds = %180, %156
  %193 = load %struct.cmdQ*, %struct.cmdQ** %11, align 8
  %194 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %193, i32 0, i32 5
  %195 = call i32 @spin_unlock(i32* %194)
  %196 = load %struct.adapter*, %struct.adapter** %7, align 8
  %197 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %198 = load i32, i32* %13, align 4
  %199 = load i32, i32* %14, align 4
  %200 = load %struct.cmdQ*, %struct.cmdQ** %11, align 8
  %201 = call i32 @write_tx_descs(%struct.adapter* %196, %struct.sk_buff* %197, i32 %198, i32 %199, %struct.cmdQ* %200)
  %202 = load i32, i32* %8, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %192
  %205 = load %struct.adapter*, %struct.adapter** %7, align 8
  %206 = load i32, i32* @F_CMDQ1_ENABLE, align 4
  %207 = call i32 @doorbell_pio(%struct.adapter* %205, i32 %206)
  br label %231

208:                                              ; preds = %192
  %209 = load i32, i32* @CMDQ_STAT_LAST_PKT_DB, align 4
  %210 = load %struct.cmdQ*, %struct.cmdQ** %11, align 8
  %211 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %210, i32 0, i32 6
  %212 = call i32 @clear_bit(i32 %209, i32* %211)
  %213 = load i32, i32* @CMDQ_STAT_RUNNING, align 4
  %214 = load %struct.cmdQ*, %struct.cmdQ** %11, align 8
  %215 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %214, i32 0, i32 6
  %216 = call i64 @test_and_set_bit(i32 %213, i32* %215)
  %217 = icmp eq i64 %216, 0
  br i1 %217, label %218, label %230

218:                                              ; preds = %208
  %219 = load i32, i32* @CMDQ_STAT_LAST_PKT_DB, align 4
  %220 = load %struct.cmdQ*, %struct.cmdQ** %11, align 8
  %221 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %220, i32 0, i32 6
  %222 = call i32 @set_bit(i32 %219, i32* %221)
  %223 = load i32, i32* @F_CMDQ0_ENABLE, align 4
  %224 = load %struct.adapter*, %struct.adapter** %7, align 8
  %225 = getelementptr inbounds %struct.adapter, %struct.adapter* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @A_SG_DOORBELL, align 8
  %228 = add nsw i64 %226, %227
  %229 = call i32 @writel(i32 %223, i64 %228)
  br label %230

230:                                              ; preds = %218, %208
  br label %231

231:                                              ; preds = %230, %204
  %232 = load i32, i32* %16, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %248

234:                                              ; preds = %231
  %235 = load %struct.cmdQ*, %struct.cmdQ** %11, align 8
  %236 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %235, i32 0, i32 5
  %237 = call i64 @spin_trylock(i32* %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %247

239:                                              ; preds = %234
  %240 = load %struct.cmdQ*, %struct.cmdQ** %11, align 8
  %241 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.cmdQ*, %struct.cmdQ** %11, align 8
  %244 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 4
  %246 = sub i32 %242, %245
  store i32 %246, i32* %12, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %129

247:                                              ; preds = %234
  br label %248

248:                                              ; preds = %247, %231
  %249 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %249, i32* %5, align 4
  br label %250

250:                                              ; preds = %248, %136, %83
  %251 = load i32, i32* %5, align 4
  ret i32 %251
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @reclaim_completed_tx(%struct.sge*, %struct.cmdQ*) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @compute_large_page_tx_descs(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.sk_buff* @sched_skb(%struct.sge*, %struct.sk_buff*, i32) #1

declare dso_local i32 @write_tx_descs(%struct.adapter*, %struct.sk_buff*, i32, i32, %struct.cmdQ*) #1

declare dso_local i32 @doorbell_pio(%struct.adapter*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @spin_trylock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
