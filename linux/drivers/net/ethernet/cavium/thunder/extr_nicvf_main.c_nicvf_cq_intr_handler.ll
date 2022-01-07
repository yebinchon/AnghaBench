; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_main.c_nicvf_cq_intr_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_main.c_nicvf_cq_intr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.napi_struct = type { i32 }
%struct.nicvf = type { i32, %struct.TYPE_4__*, %struct.nicvf*, %struct.net_device*, i64, %struct.queue_set* }
%struct.TYPE_4__ = type { i32 }
%struct.queue_set = type { %struct.rcv_queue*, %struct.snd_queue*, %struct.cmp_queue* }
%struct.rcv_queue = type { i32 }
%struct.snd_queue = type { i32 }
%struct.cmp_queue = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.cqe_rx_t = type { i32 }
%struct.netdev_queue = type { i32 }

@NIC_QSET_CQ_0_7_STATUS = common dso_local global i32 0, align 4
@CQ_CQE_COUNT = common dso_local global i32 0, align 4
@NIC_QSET_CQ_0_7_HEAD = common dso_local global i32 0, align 4
@NIC_QSET_CQ_0_7_DOOR = common dso_local global i32 0, align 4
@MIN_SQ_DESC_PER_PKT_XMIT = common dso_local global i64 0, align 8
@tx_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Transmit queue wakeup SQ%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i64, %struct.napi_struct*, i32)* @nicvf_cq_intr_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nicvf_cq_intr_handler(%struct.net_device* %0, i64 %1, %struct.napi_struct* %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.napi_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.nicvf*, align 8
  %16 = alloca %struct.queue_set*, align 8
  %17 = alloca %struct.cmp_queue*, align 8
  %18 = alloca %struct.cqe_rx_t*, align 8
  %19 = alloca %struct.netdev_queue*, align 8
  %20 = alloca %struct.snd_queue*, align 8
  %21 = alloca %struct.rcv_queue*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.napi_struct* %2, %struct.napi_struct** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %14, align 4
  %25 = load %struct.net_device*, %struct.net_device** %5, align 8
  %26 = call %struct.nicvf* @netdev_priv(%struct.net_device* %25)
  store %struct.nicvf* %26, %struct.nicvf** %15, align 8
  %27 = load %struct.nicvf*, %struct.nicvf** %15, align 8
  %28 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %27, i32 0, i32 5
  %29 = load %struct.queue_set*, %struct.queue_set** %28, align 8
  store %struct.queue_set* %29, %struct.queue_set** %16, align 8
  %30 = load %struct.queue_set*, %struct.queue_set** %16, align 8
  %31 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %30, i32 0, i32 2
  %32 = load %struct.cmp_queue*, %struct.cmp_queue** %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = getelementptr inbounds %struct.cmp_queue, %struct.cmp_queue* %32, i64 %33
  store %struct.cmp_queue* %34, %struct.cmp_queue** %17, align 8
  %35 = load %struct.queue_set*, %struct.queue_set** %16, align 8
  %36 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %35, i32 0, i32 1
  %37 = load %struct.snd_queue*, %struct.snd_queue** %36, align 8
  %38 = load i64, i64* %6, align 8
  %39 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %37, i64 %38
  store %struct.snd_queue* %39, %struct.snd_queue** %20, align 8
  %40 = load %struct.queue_set*, %struct.queue_set** %16, align 8
  %41 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %40, i32 0, i32 0
  %42 = load %struct.rcv_queue*, %struct.rcv_queue** %41, align 8
  %43 = load i64, i64* %6, align 8
  %44 = getelementptr inbounds %struct.rcv_queue, %struct.rcv_queue* %42, i64 %43
  store %struct.rcv_queue* %44, %struct.rcv_queue** %21, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %45 = load %struct.cmp_queue*, %struct.cmp_queue** %17, align 8
  %46 = getelementptr inbounds %struct.cmp_queue, %struct.cmp_queue* %45, i32 0, i32 0
  %47 = call i32 @spin_lock_bh(i32* %46)
  br label %48

48:                                               ; preds = %144, %4
  store i32 0, i32* %9, align 4
  %49 = load %struct.nicvf*, %struct.nicvf** %15, align 8
  %50 = load i32, i32* @NIC_QSET_CQ_0_7_STATUS, align 4
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @nicvf_queue_reg_read(%struct.nicvf* %49, i32 %50, i64 %51)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* @CQ_CQE_COUNT, align 4
  %54 = load i32, i32* %12, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %48
  br label %146

59:                                               ; preds = %48
  %60 = load %struct.nicvf*, %struct.nicvf** %15, align 8
  %61 = load i32, i32* @NIC_QSET_CQ_0_7_HEAD, align 4
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @nicvf_queue_reg_read(%struct.nicvf* %60, i32 %61, i64 %62)
  %64 = ashr i32 %63, 9
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %13, align 4
  %66 = and i32 %65, 65535
  store i32 %66, i32* %13, align 4
  br label %67

67:                                               ; preds = %129, %59
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %132

71:                                               ; preds = %67
  %72 = load %struct.cmp_queue*, %struct.cmp_queue** %17, align 8
  %73 = load i32, i32* %13, align 4
  %74 = call i64 @GET_CQ_DESC(%struct.cmp_queue* %72, i32 %73)
  %75 = inttoptr i64 %74 to %struct.cqe_rx_t*
  store %struct.cqe_rx_t* %75, %struct.cqe_rx_t** %18, align 8
  %76 = load i32, i32* %13, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %13, align 4
  %78 = load %struct.cmp_queue*, %struct.cmp_queue** %17, align 8
  %79 = getelementptr inbounds %struct.cmp_queue, %struct.cmp_queue* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %81, 1
  %83 = load i32, i32* %13, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %13, align 4
  %85 = load %struct.cmp_queue*, %struct.cmp_queue** %17, align 8
  %86 = load i32, i32* %13, align 4
  %87 = call i64 @GET_CQ_DESC(%struct.cmp_queue* %85, i32 %86)
  %88 = inttoptr i64 %87 to %struct.cqe_rx_t*
  %89 = call i32 @prefetch(%struct.cqe_rx_t* %88)
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp sge i32 %90, %91
  br i1 %92, label %93, label %102

93:                                               ; preds = %71
  %94 = load %struct.napi_struct*, %struct.napi_struct** %7, align 8
  %95 = icmp ne %struct.napi_struct* %94, null
  br i1 %95, label %96, label %102

96:                                               ; preds = %93
  %97 = load %struct.cqe_rx_t*, %struct.cqe_rx_t** %18, align 8
  %98 = getelementptr inbounds %struct.cqe_rx_t, %struct.cqe_rx_t* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 129
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  br label %132

102:                                              ; preds = %96, %93, %71
  %103 = load %struct.cqe_rx_t*, %struct.cqe_rx_t** %18, align 8
  %104 = getelementptr inbounds %struct.cqe_rx_t, %struct.cqe_rx_t* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  switch i32 %105, label %129 [
    i32 132, label %106
    i32 129, label %115
    i32 128, label %123
    i32 133, label %128
    i32 131, label %128
    i32 130, label %128
  ]

106:                                              ; preds = %102
  %107 = load %struct.net_device*, %struct.net_device** %5, align 8
  %108 = load %struct.napi_struct*, %struct.napi_struct** %7, align 8
  %109 = load %struct.cqe_rx_t*, %struct.cqe_rx_t** %18, align 8
  %110 = load %struct.snd_queue*, %struct.snd_queue** %20, align 8
  %111 = load %struct.rcv_queue*, %struct.rcv_queue** %21, align 8
  %112 = call i32 @nicvf_rcv_pkt_handler(%struct.net_device* %107, %struct.napi_struct* %108, %struct.cqe_rx_t* %109, %struct.snd_queue* %110, %struct.rcv_queue* %111)
  %113 = load i32, i32* %10, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %10, align 4
  br label %129

115:                                              ; preds = %102
  %116 = load %struct.net_device*, %struct.net_device** %5, align 8
  %117 = load %struct.cqe_rx_t*, %struct.cqe_rx_t** %18, align 8
  %118 = bitcast %struct.cqe_rx_t* %117 to i8*
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @nicvf_snd_pkt_handler(%struct.net_device* %116, i8* %118, i32 %119, i32* %14, i32* %22, i32* %23)
  %121 = load i32, i32* %11, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %11, align 4
  br label %129

123:                                              ; preds = %102
  %124 = load %struct.net_device*, %struct.net_device** %5, align 8
  %125 = load %struct.cqe_rx_t*, %struct.cqe_rx_t** %18, align 8
  %126 = bitcast %struct.cqe_rx_t* %125 to i8*
  %127 = call i32 @nicvf_snd_ptp_handler(%struct.net_device* %124, i8* %126)
  br label %129

128:                                              ; preds = %102, %102, %102
  br label %129

129:                                              ; preds = %102, %128, %123, %115, %106
  %130 = load i32, i32* %9, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %9, align 4
  br label %67

132:                                              ; preds = %101, %67
  %133 = load %struct.nicvf*, %struct.nicvf** %15, align 8
  %134 = load i32, i32* @NIC_QSET_CQ_0_7_DOOR, align 4
  %135 = load i64, i64* %6, align 8
  %136 = load i32, i32* %9, align 4
  %137 = call i32 @nicvf_queue_reg_write(%struct.nicvf* %133, i32 %134, i64 %135, i32 %136)
  %138 = load i32, i32* %10, align 4
  %139 = load i32, i32* %8, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %132
  %142 = load %struct.napi_struct*, %struct.napi_struct** %7, align 8
  %143 = icmp ne %struct.napi_struct* %142, null
  br i1 %143, label %144, label %145

144:                                              ; preds = %141
  br label %48

145:                                              ; preds = %141, %132
  br label %146

146:                                              ; preds = %145, %58
  %147 = load i32, i32* %14, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %146
  %150 = load %struct.snd_queue*, %struct.snd_queue** %20, align 8
  %151 = load i32, i32* %14, align 4
  %152 = call i32 @nicvf_put_sq_desc(%struct.snd_queue* %150, i32 %151)
  br label %153

153:                                              ; preds = %149, %146
  %154 = load %struct.nicvf*, %struct.nicvf** %15, align 8
  %155 = load i64, i64* %6, align 8
  %156 = call i32 @nicvf_netdev_qidx(%struct.nicvf* %154, i64 %155)
  store i32 %156, i32* %24, align 4
  %157 = load %struct.nicvf*, %struct.nicvf** %15, align 8
  %158 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %157, i32 0, i32 2
  %159 = load %struct.nicvf*, %struct.nicvf** %158, align 8
  %160 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %159, i32 0, i32 4
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %187

163:                                              ; preds = %153
  %164 = load i32, i32* %24, align 4
  %165 = load %struct.nicvf*, %struct.nicvf** %15, align 8
  %166 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %165, i32 0, i32 2
  %167 = load %struct.nicvf*, %struct.nicvf** %166, align 8
  %168 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp ult i32 %164, %169
  br i1 %170, label %171, label %176

171:                                              ; preds = %163
  %172 = load %struct.nicvf*, %struct.nicvf** %15, align 8
  %173 = load %struct.snd_queue*, %struct.snd_queue** %20, align 8
  %174 = load i64, i64* %6, align 8
  %175 = call i32 @nicvf_xdp_sq_doorbell(%struct.nicvf* %172, %struct.snd_queue* %173, i64 %174)
  br label %240

176:                                              ; preds = %163
  %177 = load %struct.nicvf*, %struct.nicvf** %15, align 8
  %178 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %177, i32 0, i32 2
  %179 = load %struct.nicvf*, %struct.nicvf** %178, align 8
  store %struct.nicvf* %179, %struct.nicvf** %15, align 8
  %180 = load %struct.nicvf*, %struct.nicvf** %15, align 8
  %181 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %180, i32 0, i32 2
  %182 = load %struct.nicvf*, %struct.nicvf** %181, align 8
  %183 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* %24, align 4
  %186 = sub i32 %185, %184
  store i32 %186, i32* %24, align 4
  br label %187

187:                                              ; preds = %176, %153
  %188 = load i32, i32* %11, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %196, label %190

190:                                              ; preds = %187
  %191 = load %struct.snd_queue*, %struct.snd_queue** %20, align 8
  %192 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %191, i32 0, i32 0
  %193 = call i64 @atomic_read(i32* %192)
  %194 = load i64, i64* @MIN_SQ_DESC_PER_PKT_XMIT, align 8
  %195 = icmp sge i64 %193, %194
  br i1 %195, label %196, label %239

196:                                              ; preds = %190, %187
  %197 = load %struct.nicvf*, %struct.nicvf** %15, align 8
  %198 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %197, i32 0, i32 2
  %199 = load %struct.nicvf*, %struct.nicvf** %198, align 8
  %200 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %199, i32 0, i32 3
  %201 = load %struct.net_device*, %struct.net_device** %200, align 8
  store %struct.net_device* %201, %struct.net_device** %5, align 8
  %202 = load %struct.net_device*, %struct.net_device** %5, align 8
  %203 = load i32, i32* %24, align 4
  %204 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %202, i32 %203)
  store %struct.netdev_queue* %204, %struct.netdev_queue** %19, align 8
  %205 = load i32, i32* %22, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %212

207:                                              ; preds = %196
  %208 = load %struct.netdev_queue*, %struct.netdev_queue** %19, align 8
  %209 = load i32, i32* %22, align 4
  %210 = load i32, i32* %23, align 4
  %211 = call i32 @netdev_tx_completed_queue(%struct.netdev_queue* %208, i32 %209, i32 %210)
  br label %212

212:                                              ; preds = %207, %196
  %213 = call i32 (...) @smp_mb()
  %214 = load %struct.netdev_queue*, %struct.netdev_queue** %19, align 8
  %215 = call i64 @netif_tx_queue_stopped(%struct.netdev_queue* %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %238

217:                                              ; preds = %212
  %218 = load %struct.net_device*, %struct.net_device** %5, align 8
  %219 = call i64 @netif_carrier_ok(%struct.net_device* %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %238

221:                                              ; preds = %217
  %222 = load %struct.netdev_queue*, %struct.netdev_queue** %19, align 8
  %223 = call i32 @netif_tx_wake_queue(%struct.netdev_queue* %222)
  %224 = load %struct.nicvf*, %struct.nicvf** %15, align 8
  %225 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %224, i32 0, i32 2
  %226 = load %struct.nicvf*, %struct.nicvf** %225, align 8
  store %struct.nicvf* %226, %struct.nicvf** %15, align 8
  %227 = load %struct.nicvf*, %struct.nicvf** %15, align 8
  %228 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %227, i32 0, i32 1
  %229 = load %struct.TYPE_4__*, %struct.TYPE_4__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @this_cpu_inc(i32 %231)
  %233 = load %struct.nicvf*, %struct.nicvf** %15, align 8
  %234 = load i32, i32* @tx_err, align 4
  %235 = load %struct.net_device*, %struct.net_device** %5, align 8
  %236 = load i32, i32* %24, align 4
  %237 = call i32 @netif_warn(%struct.nicvf* %233, i32 %234, %struct.net_device* %235, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %236)
  br label %238

238:                                              ; preds = %221, %217, %212
  br label %239

239:                                              ; preds = %238, %190
  br label %240

240:                                              ; preds = %239, %171
  %241 = load %struct.cmp_queue*, %struct.cmp_queue** %17, align 8
  %242 = getelementptr inbounds %struct.cmp_queue, %struct.cmp_queue* %241, i32 0, i32 0
  %243 = call i32 @spin_unlock_bh(i32* %242)
  %244 = load i32, i32* %10, align 4
  ret i32 %244
}

declare dso_local %struct.nicvf* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @nicvf_queue_reg_read(%struct.nicvf*, i32, i64) #1

declare dso_local i64 @GET_CQ_DESC(%struct.cmp_queue*, i32) #1

declare dso_local i32 @prefetch(%struct.cqe_rx_t*) #1

declare dso_local i32 @nicvf_rcv_pkt_handler(%struct.net_device*, %struct.napi_struct*, %struct.cqe_rx_t*, %struct.snd_queue*, %struct.rcv_queue*) #1

declare dso_local i32 @nicvf_snd_pkt_handler(%struct.net_device*, i8*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @nicvf_snd_ptp_handler(%struct.net_device*, i8*) #1

declare dso_local i32 @nicvf_queue_reg_write(%struct.nicvf*, i32, i64, i32) #1

declare dso_local i32 @nicvf_put_sq_desc(%struct.snd_queue*, i32) #1

declare dso_local i32 @nicvf_netdev_qidx(%struct.nicvf*, i64) #1

declare dso_local i32 @nicvf_xdp_sq_doorbell(%struct.nicvf*, %struct.snd_queue*, i64) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local i32 @netdev_tx_completed_queue(%struct.netdev_queue*, i32, i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @netif_tx_queue_stopped(%struct.netdev_queue*) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @netif_tx_wake_queue(%struct.netdev_queue*) #1

declare dso_local i32 @this_cpu_inc(i32) #1

declare dso_local i32 @netif_warn(%struct.nicvf*, i32, %struct.net_device*, i8*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
