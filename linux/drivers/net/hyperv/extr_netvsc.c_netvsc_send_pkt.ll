; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc.c_netvsc_send_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc.c_netvsc_send_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_device = type { i32 }
%struct.hv_netvsc_packet = type { i64, i64, i64, i32, i32, i64 }
%struct.netvsc_device = type { i32, %struct.netvsc_channel* }
%struct.netvsc_channel = type { i32, %struct.vmbus_channel* }
%struct.vmbus_channel = type { i64, i32 }
%struct.hv_page_buffer = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nvsp_message = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.nvsp_1_message_send_rndis_packet }
%struct.nvsp_1_message_send_rndis_packet = type { i32, i64, i64 }
%struct.net_device = type { i32 }
%struct.net_device_context = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.netdev_queue = type { i32 }

@NVSP_MSG1_TYPE_SEND_RNDIS_PKT = common dso_local global i32 0, align 4
@NETVSC_INVALID_INDEX = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@VM_PKT_DATA_INBAND = common dso_local global i32 0, align 4
@VMBUS_DATA_PACKET_FLAG_COMPLETION_REQUESTED = common dso_local global i32 0, align 4
@RING_AVAIL_PERCENT_LOWATER = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Unable to send packet pages %u len %u, ret %d\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hv_device*, %struct.hv_netvsc_packet*, %struct.netvsc_device*, %struct.hv_page_buffer*, %struct.sk_buff*)* @netvsc_send_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netvsc_send_pkt(%struct.hv_device* %0, %struct.hv_netvsc_packet* %1, %struct.netvsc_device* %2, %struct.hv_page_buffer* %3, %struct.sk_buff* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hv_device*, align 8
  %8 = alloca %struct.hv_netvsc_packet*, align 8
  %9 = alloca %struct.netvsc_device*, align 8
  %10 = alloca %struct.hv_page_buffer*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.nvsp_message, align 8
  %13 = alloca %struct.nvsp_1_message_send_rndis_packet*, align 8
  %14 = alloca %struct.netvsc_channel*, align 8
  %15 = alloca %struct.vmbus_channel*, align 8
  %16 = alloca %struct.net_device*, align 8
  %17 = alloca %struct.net_device_context*, align 8
  %18 = alloca %struct.netdev_queue*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store %struct.hv_device* %0, %struct.hv_device** %7, align 8
  store %struct.hv_netvsc_packet* %1, %struct.hv_netvsc_packet** %8, align 8
  store %struct.netvsc_device* %2, %struct.netvsc_device** %9, align 8
  store %struct.hv_page_buffer* %3, %struct.hv_page_buffer** %10, align 8
  store %struct.sk_buff* %4, %struct.sk_buff** %11, align 8
  %22 = getelementptr inbounds %struct.nvsp_message, %struct.nvsp_message* %12, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store %struct.nvsp_1_message_send_rndis_packet* %24, %struct.nvsp_1_message_send_rndis_packet** %13, align 8
  %25 = load %struct.netvsc_device*, %struct.netvsc_device** %9, align 8
  %26 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %25, i32 0, i32 1
  %27 = load %struct.netvsc_channel*, %struct.netvsc_channel** %26, align 8
  %28 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %8, align 8
  %29 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.netvsc_channel, %struct.netvsc_channel* %27, i64 %30
  store %struct.netvsc_channel* %31, %struct.netvsc_channel** %14, align 8
  %32 = load %struct.netvsc_channel*, %struct.netvsc_channel** %14, align 8
  %33 = getelementptr inbounds %struct.netvsc_channel, %struct.netvsc_channel* %32, i32 0, i32 1
  %34 = load %struct.vmbus_channel*, %struct.vmbus_channel** %33, align 8
  store %struct.vmbus_channel* %34, %struct.vmbus_channel** %15, align 8
  %35 = load %struct.hv_device*, %struct.hv_device** %7, align 8
  %36 = call %struct.net_device* @hv_get_drvdata(%struct.hv_device* %35)
  store %struct.net_device* %36, %struct.net_device** %16, align 8
  %37 = load %struct.net_device*, %struct.net_device** %16, align 8
  %38 = call %struct.net_device_context* @netdev_priv(%struct.net_device* %37)
  store %struct.net_device_context* %38, %struct.net_device_context** %17, align 8
  %39 = load %struct.net_device*, %struct.net_device** %16, align 8
  %40 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %8, align 8
  %41 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %39, i64 %42)
  store %struct.netdev_queue* %43, %struct.netdev_queue** %18, align 8
  %44 = load %struct.vmbus_channel*, %struct.vmbus_channel** %15, align 8
  %45 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %44, i32 0, i32 1
  %46 = call i64 @hv_get_avail_to_write_percent(i32* %45)
  store i64 %46, i64* %21, align 8
  %47 = load i32, i32* @NVSP_MSG1_TYPE_SEND_RNDIS_PKT, align 4
  %48 = getelementptr inbounds %struct.nvsp_message, %struct.nvsp_message* %12, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %51 = icmp ne %struct.sk_buff* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %5
  %53 = load %struct.nvsp_1_message_send_rndis_packet*, %struct.nvsp_1_message_send_rndis_packet** %13, align 8
  %54 = getelementptr inbounds %struct.nvsp_1_message_send_rndis_packet, %struct.nvsp_1_message_send_rndis_packet* %53, i32 0, i32 0
  store i32 0, i32* %54, align 8
  br label %58

55:                                               ; preds = %5
  %56 = load %struct.nvsp_1_message_send_rndis_packet*, %struct.nvsp_1_message_send_rndis_packet** %13, align 8
  %57 = getelementptr inbounds %struct.nvsp_1_message_send_rndis_packet, %struct.nvsp_1_message_send_rndis_packet* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  br label %58

58:                                               ; preds = %55, %52
  %59 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %8, align 8
  %60 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.nvsp_1_message_send_rndis_packet*, %struct.nvsp_1_message_send_rndis_packet** %13, align 8
  %63 = getelementptr inbounds %struct.nvsp_1_message_send_rndis_packet, %struct.nvsp_1_message_send_rndis_packet* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  %64 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %8, align 8
  %65 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @NETVSC_INVALID_INDEX, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %58
  %70 = load %struct.nvsp_1_message_send_rndis_packet*, %struct.nvsp_1_message_send_rndis_packet** %13, align 8
  %71 = getelementptr inbounds %struct.nvsp_1_message_send_rndis_packet, %struct.nvsp_1_message_send_rndis_packet* %70, i32 0, i32 2
  store i64 0, i64* %71, align 8
  br label %78

72:                                               ; preds = %58
  %73 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %8, align 8
  %74 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.nvsp_1_message_send_rndis_packet*, %struct.nvsp_1_message_send_rndis_packet** %13, align 8
  %77 = getelementptr inbounds %struct.nvsp_1_message_send_rndis_packet, %struct.nvsp_1_message_send_rndis_packet* %76, i32 0, i32 2
  store i64 %75, i64* %77, align 8
  br label %78

78:                                               ; preds = %72, %69
  %79 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %80 = ptrtoint %struct.sk_buff* %79 to i64
  store i64 %80, i64* %19, align 8
  %81 = load %struct.vmbus_channel*, %struct.vmbus_channel** %15, align 8
  %82 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load i32, i32* @ENODEV, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %6, align 4
  br label %198

88:                                               ; preds = %78
  %89 = load %struct.net_device*, %struct.net_device** %16, align 8
  %90 = load %struct.vmbus_channel*, %struct.vmbus_channel** %15, align 8
  %91 = load %struct.nvsp_1_message_send_rndis_packet*, %struct.nvsp_1_message_send_rndis_packet** %13, align 8
  %92 = call i32 @trace_nvsp_send_pkt(%struct.net_device* %89, %struct.vmbus_channel* %90, %struct.nvsp_1_message_send_rndis_packet* %91)
  %93 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %8, align 8
  %94 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %117

97:                                               ; preds = %88
  %98 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %8, align 8
  %99 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %98, i32 0, i32 5
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %97
  %103 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %8, align 8
  %104 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.hv_page_buffer*, %struct.hv_page_buffer** %10, align 8
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds %struct.hv_page_buffer, %struct.hv_page_buffer* %106, i64 %107
  store %struct.hv_page_buffer* %108, %struct.hv_page_buffer** %10, align 8
  br label %109

109:                                              ; preds = %102, %97
  %110 = load %struct.vmbus_channel*, %struct.vmbus_channel** %15, align 8
  %111 = load %struct.hv_page_buffer*, %struct.hv_page_buffer** %10, align 8
  %112 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %8, align 8
  %113 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = load i64, i64* %19, align 8
  %116 = call i32 @vmbus_sendpacket_pagebuffer(%struct.vmbus_channel* %110, %struct.hv_page_buffer* %111, i32 %114, %struct.nvsp_message* %12, i32 32, i64 %115)
  store i32 %116, i32* %20, align 4
  br label %123

117:                                              ; preds = %88
  %118 = load %struct.vmbus_channel*, %struct.vmbus_channel** %15, align 8
  %119 = load i64, i64* %19, align 8
  %120 = load i32, i32* @VM_PKT_DATA_INBAND, align 4
  %121 = load i32, i32* @VMBUS_DATA_PACKET_FLAG_COMPLETION_REQUESTED, align 4
  %122 = call i32 @vmbus_sendpacket(%struct.vmbus_channel* %118, %struct.nvsp_message* %12, i32 32, i64 %119, i32 %120, i32 %121)
  store i32 %122, i32* %20, align 4
  br label %123

123:                                              ; preds = %117, %109
  %124 = load i32, i32* %20, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %142

126:                                              ; preds = %123
  %127 = load %struct.netvsc_channel*, %struct.netvsc_channel** %14, align 8
  %128 = getelementptr inbounds %struct.netvsc_channel, %struct.netvsc_channel* %127, i32 0, i32 0
  %129 = call i32 @atomic_inc_return(i32* %128)
  %130 = load i64, i64* %21, align 8
  %131 = load i64, i64* @RING_AVAIL_PERCENT_LOWATER, align 8
  %132 = icmp slt i64 %130, %131
  br i1 %132, label %133, label %141

133:                                              ; preds = %126
  %134 = load %struct.netdev_queue*, %struct.netdev_queue** %18, align 8
  %135 = call i32 @netif_tx_stop_queue(%struct.netdev_queue* %134)
  %136 = load %struct.net_device_context*, %struct.net_device_context** %17, align 8
  %137 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 4
  br label %141

141:                                              ; preds = %133, %126
  br label %166

142:                                              ; preds = %123
  %143 = load i32, i32* %20, align 4
  %144 = load i32, i32* @EAGAIN, align 4
  %145 = sub nsw i32 0, %144
  %146 = icmp eq i32 %143, %145
  br i1 %146, label %147, label %155

147:                                              ; preds = %142
  %148 = load %struct.netdev_queue*, %struct.netdev_queue** %18, align 8
  %149 = call i32 @netif_tx_stop_queue(%struct.netdev_queue* %148)
  %150 = load %struct.net_device_context*, %struct.net_device_context** %17, align 8
  %151 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %152, align 4
  br label %165

155:                                              ; preds = %142
  %156 = load %struct.net_device*, %struct.net_device** %16, align 8
  %157 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %8, align 8
  %158 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %8, align 8
  %161 = getelementptr inbounds %struct.hv_netvsc_packet, %struct.hv_netvsc_packet* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = load i32, i32* %20, align 4
  %164 = call i32 @netdev_err(%struct.net_device* %156, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %159, i64 %162, i32 %163)
  br label %165

165:                                              ; preds = %155, %147
  br label %166

166:                                              ; preds = %165, %141
  %167 = load %struct.netdev_queue*, %struct.netdev_queue** %18, align 8
  %168 = call i64 @netif_tx_queue_stopped(%struct.netdev_queue* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %196

170:                                              ; preds = %166
  %171 = load %struct.netvsc_channel*, %struct.netvsc_channel** %14, align 8
  %172 = getelementptr inbounds %struct.netvsc_channel, %struct.netvsc_channel* %171, i32 0, i32 0
  %173 = call i32 @atomic_read(i32* %172)
  %174 = icmp slt i32 %173, 1
  br i1 %174, label %175, label %196

175:                                              ; preds = %170
  %176 = load %struct.netvsc_device*, %struct.netvsc_device** %9, align 8
  %177 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %196, label %180

180:                                              ; preds = %175
  %181 = load %struct.netdev_queue*, %struct.netdev_queue** %18, align 8
  %182 = call i32 @netif_tx_wake_queue(%struct.netdev_queue* %181)
  %183 = load %struct.net_device_context*, %struct.net_device_context** %17, align 8
  %184 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %185, align 4
  %188 = load i32, i32* %20, align 4
  %189 = load i32, i32* @EAGAIN, align 4
  %190 = sub nsw i32 0, %189
  %191 = icmp eq i32 %188, %190
  br i1 %191, label %192, label %195

192:                                              ; preds = %180
  %193 = load i32, i32* @ENOSPC, align 4
  %194 = sub nsw i32 0, %193
  store i32 %194, i32* %20, align 4
  br label %195

195:                                              ; preds = %192, %180
  br label %196

196:                                              ; preds = %195, %175, %170, %166
  %197 = load i32, i32* %20, align 4
  store i32 %197, i32* %6, align 4
  br label %198

198:                                              ; preds = %196, %85
  %199 = load i32, i32* %6, align 4
  ret i32 %199
}

declare dso_local %struct.net_device* @hv_get_drvdata(%struct.hv_device*) #1

declare dso_local %struct.net_device_context* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device*, i64) #1

declare dso_local i64 @hv_get_avail_to_write_percent(i32*) #1

declare dso_local i32 @trace_nvsp_send_pkt(%struct.net_device*, %struct.vmbus_channel*, %struct.nvsp_1_message_send_rndis_packet*) #1

declare dso_local i32 @vmbus_sendpacket_pagebuffer(%struct.vmbus_channel*, %struct.hv_page_buffer*, i32, %struct.nvsp_message*, i32, i64) #1

declare dso_local i32 @vmbus_sendpacket(%struct.vmbus_channel*, %struct.nvsp_message*, i32, i64, i32, i32) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @netif_tx_stop_queue(%struct.netdev_queue*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32, i64, i32) #1

declare dso_local i64 @netif_tx_queue_stopped(%struct.netdev_queue*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @netif_tx_wake_queue(%struct.netdev_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
