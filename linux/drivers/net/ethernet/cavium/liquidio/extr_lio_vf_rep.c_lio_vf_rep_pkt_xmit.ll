; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_vf_rep.c_lio_vf_rep_pkt_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_vf_rep.c_lio_vf_rep_pkt_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32 }
%struct.net_device = type { i32 }
%struct.lio_vf_rep_desc = type { i32, %struct.octeon_device*, i32, %struct.net_device* }
%struct.octeon_device = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.octeon_instr_pki_ih3 = type { i32 }
%struct.octeon_soft_command = type { i64, i32, %struct.octeon_soft_command*, i32, %struct.TYPE_6__, i32, %struct.sk_buff*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.lio = type { i32 }
%struct.TYPE_8__ = type { i64 }

@LIO_IFSTATE_RUNNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"VF rep: Device IQ full\0A\00", align 1
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"VF rep: Soft command alloc failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"VF rep: nr_frags != 0. Dropping packet\0A\00", align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"VF rep: DMA mapping failed\0A\00", align 1
@OPCODE_NIC = common dso_local global i32 0, align 4
@OPCODE_NIC_VF_REP_PKT = common dso_local global i32 0, align 4
@ORDERED_TAG = common dso_local global i32 0, align 4
@lio_vf_rep_packet_sent_callback = common dso_local global i32 0, align 4
@IQ_SEND_FAILED = common dso_local global i32 0, align 4
@IQ_SEND_STOP = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @lio_vf_rep_pkt_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lio_vf_rep_pkt_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.lio_vf_rep_desc*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.octeon_device*, align 8
  %9 = alloca %struct.octeon_instr_pki_ih3*, align 8
  %10 = alloca %struct.octeon_soft_command*, align 8
  %11 = alloca %struct.lio*, align 8
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.lio_vf_rep_desc* @netdev_priv(%struct.net_device* %13)
  store %struct.lio_vf_rep_desc* %14, %struct.lio_vf_rep_desc** %6, align 8
  %15 = load %struct.lio_vf_rep_desc*, %struct.lio_vf_rep_desc** %6, align 8
  %16 = getelementptr inbounds %struct.lio_vf_rep_desc, %struct.lio_vf_rep_desc* %15, i32 0, i32 3
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  store %struct.net_device* %17, %struct.net_device** %7, align 8
  %18 = load %struct.lio_vf_rep_desc*, %struct.lio_vf_rep_desc** %6, align 8
  %19 = getelementptr inbounds %struct.lio_vf_rep_desc, %struct.lio_vf_rep_desc* %18, i32 0, i32 1
  %20 = load %struct.octeon_device*, %struct.octeon_device** %19, align 8
  store %struct.octeon_device* %20, %struct.octeon_device** %8, align 8
  %21 = load %struct.net_device*, %struct.net_device** %7, align 8
  %22 = call %struct.lio* @GET_LIO(%struct.net_device* %21)
  store %struct.lio* %22, %struct.lio** %11, align 8
  %23 = load %struct.lio_vf_rep_desc*, %struct.lio_vf_rep_desc** %6, align 8
  %24 = getelementptr inbounds %struct.lio_vf_rep_desc, %struct.lio_vf_rep_desc* %23, i32 0, i32 2
  %25 = call i32 @atomic_read(i32* %24)
  %26 = load i32, i32* @LIO_IFSTATE_RUNNING, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %2
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sle i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29, %2
  br label %187

35:                                               ; preds = %29
  %36 = load %struct.lio_vf_rep_desc*, %struct.lio_vf_rep_desc** %6, align 8
  %37 = getelementptr inbounds %struct.lio_vf_rep_desc, %struct.lio_vf_rep_desc* %36, i32 0, i32 1
  %38 = load %struct.octeon_device*, %struct.octeon_device** %37, align 8
  %39 = load %struct.lio*, %struct.lio** %11, align 8
  %40 = getelementptr inbounds %struct.lio, %struct.lio* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @octnet_iq_is_full(%struct.octeon_device* %38, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %35
  %45 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %46 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %45, i32 0, i32 0
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = call i32 @dev_err(i32* %48, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %50 = load %struct.net_device*, %struct.net_device** %5, align 8
  %51 = call i32 @netif_stop_queue(%struct.net_device* %50)
  %52 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %52, i32* %3, align 4
  br label %191

53:                                               ; preds = %35
  %54 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %55 = call i64 @octeon_alloc_soft_command(%struct.octeon_device* %54, i32 0, i32 16, i32 0)
  %56 = inttoptr i64 %55 to %struct.octeon_soft_command*
  store %struct.octeon_soft_command* %56, %struct.octeon_soft_command** %10, align 8
  %57 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %10, align 8
  %58 = icmp ne %struct.octeon_soft_command* %57, null
  br i1 %58, label %65, label %59

59:                                               ; preds = %53
  %60 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %61 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %60, i32 0, i32 0
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = call i32 @dev_err(i32* %63, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %187

65:                                               ; preds = %53
  %66 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %67 = call %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff* %66)
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %65
  %72 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %73 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %72, i32 0, i32 0
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = call i32 @dev_err(i32* %75, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %77 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %78 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %10, align 8
  %79 = call i32 @octeon_free_soft_command(%struct.octeon_device* %77, %struct.octeon_soft_command* %78)
  br label %187

80:                                               ; preds = %65
  %81 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %82 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %81, i32 0, i32 0
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %89 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i32, i32* @DMA_TO_DEVICE, align 4
  %92 = call i32 @dma_map_single(i32* %84, i32 %87, i64 %90, i32 %91)
  %93 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %10, align 8
  %94 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 8
  %95 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %96 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %95, i32 0, i32 0
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %10, align 8
  %100 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i64 @dma_mapping_error(i32* %98, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %80
  %105 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %106 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %105, i32 0, i32 0
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = call i32 @dev_err(i32* %108, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %110 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %111 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %10, align 8
  %112 = call i32 @octeon_free_soft_command(%struct.octeon_device* %110, %struct.octeon_soft_command* %111)
  br label %187

113:                                              ; preds = %80
  %114 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %115 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %10, align 8
  %118 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %117, i32 0, i32 7
  store i32 %116, i32* %118, align 8
  %119 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %120 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %10, align 8
  %123 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %122, i32 0, i32 0
  store i64 %121, i64* %123, align 8
  %124 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %125 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %10, align 8
  %126 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %125, i32 0, i32 6
  store %struct.sk_buff* %124, %struct.sk_buff** %126, align 8
  %127 = load %struct.lio*, %struct.lio** %11, align 8
  %128 = getelementptr inbounds %struct.lio, %struct.lio* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %10, align 8
  %131 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %130, i32 0, i32 5
  store i32 %129, i32* %131, align 8
  %132 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %133 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %10, align 8
  %134 = load i32, i32* @OPCODE_NIC, align 4
  %135 = load i32, i32* @OPCODE_NIC_VF_REP_PKT, align 4
  %136 = load %struct.lio_vf_rep_desc*, %struct.lio_vf_rep_desc** %6, align 8
  %137 = getelementptr inbounds %struct.lio_vf_rep_desc, %struct.lio_vf_rep_desc* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @octeon_prepare_soft_command(%struct.octeon_device* %132, %struct.octeon_soft_command* %133, i32 %134, i32 %135, i32 %138, i32 0, i32 0)
  %140 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %10, align 8
  %141 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %140, i32 0, i32 4
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = bitcast i32* %143 to %struct.octeon_instr_pki_ih3*
  store %struct.octeon_instr_pki_ih3* %144, %struct.octeon_instr_pki_ih3** %9, align 8
  %145 = load i32, i32* @ORDERED_TAG, align 4
  %146 = load %struct.octeon_instr_pki_ih3*, %struct.octeon_instr_pki_ih3** %9, align 8
  %147 = getelementptr inbounds %struct.octeon_instr_pki_ih3, %struct.octeon_instr_pki_ih3* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 4
  %148 = load i32, i32* @lio_vf_rep_packet_sent_callback, align 4
  %149 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %10, align 8
  %150 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %149, i32 0, i32 3
  store i32 %148, i32* %150, align 8
  %151 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %10, align 8
  %152 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %10, align 8
  %153 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %152, i32 0, i32 2
  store %struct.octeon_soft_command* %151, %struct.octeon_soft_command** %153, align 8
  %154 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %155 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %10, align 8
  %156 = call i32 @octeon_send_soft_command(%struct.octeon_device* %154, %struct.octeon_soft_command* %155)
  store i32 %156, i32* %12, align 4
  %157 = load i32, i32* %12, align 4
  %158 = load i32, i32* @IQ_SEND_FAILED, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %176

160:                                              ; preds = %113
  %161 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %162 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %161, i32 0, i32 0
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  %165 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %10, align 8
  %166 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %10, align 8
  %169 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i32, i32* @DMA_TO_DEVICE, align 4
  %172 = call i32 @dma_unmap_single(i32* %164, i32 %167, i64 %170, i32 %171)
  %173 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %174 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %10, align 8
  %175 = call i32 @octeon_free_soft_command(%struct.octeon_device* %173, %struct.octeon_soft_command* %174)
  br label %187

176:                                              ; preds = %113
  %177 = load i32, i32* %12, align 4
  %178 = load i32, i32* @IQ_SEND_STOP, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %183

180:                                              ; preds = %176
  %181 = load %struct.net_device*, %struct.net_device** %5, align 8
  %182 = call i32 @netif_stop_queue(%struct.net_device* %181)
  br label %183

183:                                              ; preds = %180, %176
  %184 = load %struct.net_device*, %struct.net_device** %5, align 8
  %185 = call i32 @netif_trans_update(%struct.net_device* %184)
  %186 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %186, i32* %3, align 4
  br label %191

187:                                              ; preds = %160, %104, %71, %59, %34
  %188 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %189 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %188)
  %190 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %190, i32* %3, align 4
  br label %191

191:                                              ; preds = %187, %183, %44
  %192 = load i32, i32* %3, align 4
  ret i32 %192
}

declare dso_local %struct.lio_vf_rep_desc* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.lio* @GET_LIO(%struct.net_device*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @octnet_iq_is_full(%struct.octeon_device*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i64 @octeon_alloc_soft_command(%struct.octeon_device*, i32, i32, i32) #1

declare dso_local %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @octeon_free_soft_command(%struct.octeon_device*, %struct.octeon_soft_command*) #1

declare dso_local i32 @dma_map_single(i32*, i32, i64, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i32) #1

declare dso_local i32 @octeon_prepare_soft_command(%struct.octeon_device*, %struct.octeon_soft_command*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @octeon_send_soft_command(%struct.octeon_device*, %struct.octeon_soft_command*) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i64, i32) #1

declare dso_local i32 @netif_trans_update(%struct.net_device*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
