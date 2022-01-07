; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32 }
%struct.net_device = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.mvpp2_port = type { i32*, %struct.TYPE_8__*, i32, i32, i32, %struct.mvpp2_tx_queue** }
%struct.TYPE_8__ = type { i32, %struct.mvpp2_tx_queue* }
%struct.mvpp2_tx_queue = type { i32, i32, i32, i32 }
%struct.mvpp2_txq_pcpu = type { i32, i32, i32 }
%struct.mvpp2_tx_desc = type { i32 }
%struct.mvpp2_pcpu_stats = type { i32, i32, i32 }
%struct.netdev_queue = type { i32 }
%struct.mvpp2_port_pcpu = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@MVPP2_TXD_F_DESC = common dso_local global i32 0, align 4
@MVPP2_TXD_L_DESC = common dso_local global i32 0, align 4
@MVPP2_TXD_PADDING_DISABLE = common dso_local global i32 0, align 4
@MVPP2_TXDONE_HRTIMER_PERIOD_NS = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL_PINNED_SOFT = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @mvpp2_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_tx(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.mvpp2_port*, align 8
  %6 = alloca %struct.mvpp2_tx_queue*, align 8
  %7 = alloca %struct.mvpp2_tx_queue*, align 8
  %8 = alloca %struct.mvpp2_txq_pcpu*, align 8
  %9 = alloca %struct.mvpp2_tx_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.mvpp2_pcpu_stats*, align 8
  %17 = alloca %struct.netdev_queue*, align 8
  %18 = alloca %struct.mvpp2_port_pcpu*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %19 = load %struct.net_device*, %struct.net_device** %4, align 8
  %20 = call %struct.mvpp2_port* @netdev_priv(%struct.net_device* %19)
  store %struct.mvpp2_port* %20, %struct.mvpp2_port** %5, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %13, align 4
  %21 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %22 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %21, i32 0, i32 1
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = call i32 (...) @smp_processor_id()
  %25 = call i32 @mvpp2_cpu_to_thread(%struct.TYPE_8__* %23, i32 %24)
  store i32 %25, i32* %12, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %27 = call i64 @skb_get_queue_mapping(%struct.sk_buff* %26)
  store i64 %27, i64* %14, align 8
  %28 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %29 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %28, i32 0, i32 5
  %30 = load %struct.mvpp2_tx_queue**, %struct.mvpp2_tx_queue*** %29, align 8
  %31 = load i64, i64* %14, align 8
  %32 = getelementptr inbounds %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %30, i64 %31
  %33 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %32, align 8
  store %struct.mvpp2_tx_queue* %33, %struct.mvpp2_tx_queue** %6, align 8
  %34 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %6, align 8
  %35 = getelementptr inbounds %struct.mvpp2_tx_queue, %struct.mvpp2_tx_queue* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %12, align 4
  %38 = call i8* @per_cpu_ptr(i32 %36, i32 %37)
  %39 = bitcast i8* %38 to %struct.mvpp2_txq_pcpu*
  store %struct.mvpp2_txq_pcpu* %39, %struct.mvpp2_txq_pcpu** %8, align 8
  %40 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %41 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %40, i32 0, i32 1
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %43, align 8
  %45 = load i32, i32* %12, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.mvpp2_tx_queue, %struct.mvpp2_tx_queue* %44, i64 %46
  store %struct.mvpp2_tx_queue* %47, %struct.mvpp2_tx_queue** %7, align 8
  %48 = load i32, i32* %12, align 4
  %49 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %50 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %49, i32 0, i32 1
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = call i64 @test_bit(i32 %48, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %2
  %56 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %57 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %12, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i64, i64* %11, align 8
  %63 = call i32 @spin_lock_irqsave(i32* %61, i64 %62)
  br label %64

64:                                               ; preds = %55, %2
  %65 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %66 = call i64 @skb_is_gso(%struct.sk_buff* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %64
  %69 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %70 = load %struct.net_device*, %struct.net_device** %4, align 8
  %71 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %6, align 8
  %72 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %7, align 8
  %73 = load %struct.mvpp2_txq_pcpu*, %struct.mvpp2_txq_pcpu** %8, align 8
  %74 = call i32 @mvpp2_tx_tso(%struct.sk_buff* %69, %struct.net_device* %70, %struct.mvpp2_tx_queue* %71, %struct.mvpp2_tx_queue* %72, %struct.mvpp2_txq_pcpu* %73)
  store i32 %74, i32* %13, align 4
  br label %182

75:                                               ; preds = %64
  %76 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %77 = call %struct.TYPE_7__* @skb_shinfo(%struct.sk_buff* %76)
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %13, align 4
  %81 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %82 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %7, align 8
  %83 = load i32, i32* %13, align 4
  %84 = call i64 @mvpp2_aggr_desc_num_check(%struct.mvpp2_port* %81, %struct.mvpp2_tx_queue* %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %75
  %87 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %88 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %6, align 8
  %89 = load %struct.mvpp2_txq_pcpu*, %struct.mvpp2_txq_pcpu** %8, align 8
  %90 = load i32, i32* %13, align 4
  %91 = call i64 @mvpp2_txq_reserved_desc_num_proc(%struct.mvpp2_port* %87, %struct.mvpp2_tx_queue* %88, %struct.mvpp2_txq_pcpu* %89, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %86, %75
  store i32 0, i32* %13, align 4
  br label %182

94:                                               ; preds = %86
  %95 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %7, align 8
  %96 = call %struct.mvpp2_tx_desc* @mvpp2_txq_next_desc_get(%struct.mvpp2_tx_queue* %95)
  store %struct.mvpp2_tx_desc* %96, %struct.mvpp2_tx_desc** %9, align 8
  %97 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %98 = load %struct.mvpp2_tx_desc*, %struct.mvpp2_tx_desc** %9, align 8
  %99 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %6, align 8
  %100 = getelementptr inbounds %struct.mvpp2_tx_queue, %struct.mvpp2_tx_queue* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @mvpp2_txdesc_txq_set(%struct.mvpp2_port* %97, %struct.mvpp2_tx_desc* %98, i32 %101)
  %103 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %104 = load %struct.mvpp2_tx_desc*, %struct.mvpp2_tx_desc** %9, align 8
  %105 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %106 = call i32 @skb_headlen(%struct.sk_buff* %105)
  %107 = call i32 @mvpp2_txdesc_size_set(%struct.mvpp2_port* %103, %struct.mvpp2_tx_desc* %104, i32 %106)
  %108 = load %struct.net_device*, %struct.net_device** %4, align 8
  %109 = getelementptr inbounds %struct.net_device, %struct.net_device* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %113 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %116 = call i32 @skb_headlen(%struct.sk_buff* %115)
  %117 = load i32, i32* @DMA_TO_DEVICE, align 4
  %118 = call i32 @dma_map_single(i32 %111, i32 %114, i32 %116, i32 %117)
  store i32 %118, i32* %10, align 4
  %119 = load %struct.net_device*, %struct.net_device** %4, align 8
  %120 = getelementptr inbounds %struct.net_device, %struct.net_device* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %10, align 4
  %124 = call i32 @dma_mapping_error(i32 %122, i32 %123)
  %125 = call i64 @unlikely(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %94
  %128 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %6, align 8
  %129 = call i32 @mvpp2_txq_desc_put(%struct.mvpp2_tx_queue* %128)
  store i32 0, i32* %13, align 4
  br label %182

130:                                              ; preds = %94
  %131 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %132 = load %struct.mvpp2_tx_desc*, %struct.mvpp2_tx_desc** %9, align 8
  %133 = load i32, i32* %10, align 4
  %134 = call i32 @mvpp2_txdesc_dma_addr_set(%struct.mvpp2_port* %131, %struct.mvpp2_tx_desc* %132, i32 %133)
  %135 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %136 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %137 = call i32 @mvpp2_skb_tx_csum(%struct.mvpp2_port* %135, %struct.sk_buff* %136)
  store i32 %137, i32* %15, align 4
  %138 = load i32, i32* %13, align 4
  %139 = icmp eq i32 %138, 1
  br i1 %139, label %140, label %155

140:                                              ; preds = %130
  %141 = load i32, i32* @MVPP2_TXD_F_DESC, align 4
  %142 = load i32, i32* @MVPP2_TXD_L_DESC, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* %15, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %15, align 4
  %146 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %147 = load %struct.mvpp2_tx_desc*, %struct.mvpp2_tx_desc** %9, align 8
  %148 = load i32, i32* %15, align 4
  %149 = call i32 @mvpp2_txdesc_cmd_set(%struct.mvpp2_port* %146, %struct.mvpp2_tx_desc* %147, i32 %148)
  %150 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %151 = load %struct.mvpp2_txq_pcpu*, %struct.mvpp2_txq_pcpu** %8, align 8
  %152 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %153 = load %struct.mvpp2_tx_desc*, %struct.mvpp2_tx_desc** %9, align 8
  %154 = call i32 @mvpp2_txq_inc_put(%struct.mvpp2_port* %150, %struct.mvpp2_txq_pcpu* %151, %struct.sk_buff* %152, %struct.mvpp2_tx_desc* %153)
  br label %181

155:                                              ; preds = %130
  %156 = load i32, i32* @MVPP2_TXD_F_DESC, align 4
  %157 = load i32, i32* @MVPP2_TXD_PADDING_DISABLE, align 4
  %158 = or i32 %156, %157
  %159 = load i32, i32* %15, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %15, align 4
  %161 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %162 = load %struct.mvpp2_tx_desc*, %struct.mvpp2_tx_desc** %9, align 8
  %163 = load i32, i32* %15, align 4
  %164 = call i32 @mvpp2_txdesc_cmd_set(%struct.mvpp2_port* %161, %struct.mvpp2_tx_desc* %162, i32 %163)
  %165 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %166 = load %struct.mvpp2_txq_pcpu*, %struct.mvpp2_txq_pcpu** %8, align 8
  %167 = load %struct.mvpp2_tx_desc*, %struct.mvpp2_tx_desc** %9, align 8
  %168 = call i32 @mvpp2_txq_inc_put(%struct.mvpp2_port* %165, %struct.mvpp2_txq_pcpu* %166, %struct.sk_buff* null, %struct.mvpp2_tx_desc* %167)
  %169 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %170 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %171 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %7, align 8
  %172 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %6, align 8
  %173 = call i64 @mvpp2_tx_frag_process(%struct.mvpp2_port* %169, %struct.sk_buff* %170, %struct.mvpp2_tx_queue* %171, %struct.mvpp2_tx_queue* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %155
  %176 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %177 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %6, align 8
  %178 = load %struct.mvpp2_tx_desc*, %struct.mvpp2_tx_desc** %9, align 8
  %179 = call i32 @tx_desc_unmap_put(%struct.mvpp2_port* %176, %struct.mvpp2_tx_queue* %177, %struct.mvpp2_tx_desc* %178)
  store i32 0, i32* %13, align 4
  br label %180

180:                                              ; preds = %175, %155
  br label %181

181:                                              ; preds = %180, %140
  br label %182

182:                                              ; preds = %181, %127, %93, %68
  %183 = load i32, i32* %13, align 4
  %184 = icmp sgt i32 %183, 0
  br i1 %184, label %185, label %244

185:                                              ; preds = %182
  %186 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %187 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* %12, align 4
  %190 = call i8* @per_cpu_ptr(i32 %188, i32 %189)
  %191 = bitcast i8* %190 to %struct.mvpp2_pcpu_stats*
  store %struct.mvpp2_pcpu_stats* %191, %struct.mvpp2_pcpu_stats** %16, align 8
  %192 = load %struct.net_device*, %struct.net_device** %4, align 8
  %193 = load i64, i64* %14, align 8
  %194 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %192, i64 %193)
  store %struct.netdev_queue* %194, %struct.netdev_queue** %17, align 8
  %195 = load i32, i32* %13, align 4
  %196 = load %struct.mvpp2_txq_pcpu*, %struct.mvpp2_txq_pcpu** %8, align 8
  %197 = getelementptr inbounds %struct.mvpp2_txq_pcpu, %struct.mvpp2_txq_pcpu* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = sub nsw i32 %198, %195
  store i32 %199, i32* %197, align 4
  %200 = load i32, i32* %13, align 4
  %201 = load %struct.mvpp2_txq_pcpu*, %struct.mvpp2_txq_pcpu** %8, align 8
  %202 = getelementptr inbounds %struct.mvpp2_txq_pcpu, %struct.mvpp2_txq_pcpu* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = add nsw i32 %203, %200
  store i32 %204, i32* %202, align 4
  %205 = load i32, i32* %13, align 4
  %206 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %7, align 8
  %207 = getelementptr inbounds %struct.mvpp2_tx_queue, %struct.mvpp2_tx_queue* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = add nsw i32 %208, %205
  store i32 %209, i32* %207, align 4
  %210 = call i32 (...) @wmb()
  %211 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %212 = load i32, i32* %13, align 4
  %213 = call i32 @mvpp2_aggr_txq_pend_desc_add(%struct.mvpp2_port* %211, i32 %212)
  %214 = load %struct.mvpp2_txq_pcpu*, %struct.mvpp2_txq_pcpu** %8, align 8
  %215 = getelementptr inbounds %struct.mvpp2_txq_pcpu, %struct.mvpp2_txq_pcpu* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.mvpp2_txq_pcpu*, %struct.mvpp2_txq_pcpu** %8, align 8
  %218 = getelementptr inbounds %struct.mvpp2_txq_pcpu, %struct.mvpp2_txq_pcpu* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 4
  %220 = icmp sge i32 %216, %219
  br i1 %220, label %221, label %224

221:                                              ; preds = %185
  %222 = load %struct.netdev_queue*, %struct.netdev_queue** %17, align 8
  %223 = call i32 @netif_tx_stop_queue(%struct.netdev_queue* %222)
  br label %224

224:                                              ; preds = %221, %185
  %225 = load %struct.mvpp2_pcpu_stats*, %struct.mvpp2_pcpu_stats** %16, align 8
  %226 = getelementptr inbounds %struct.mvpp2_pcpu_stats, %struct.mvpp2_pcpu_stats* %225, i32 0, i32 0
  %227 = call i32 @u64_stats_update_begin(i32* %226)
  %228 = load %struct.mvpp2_pcpu_stats*, %struct.mvpp2_pcpu_stats** %16, align 8
  %229 = getelementptr inbounds %struct.mvpp2_pcpu_stats, %struct.mvpp2_pcpu_stats* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %229, align 4
  %232 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %233 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = load %struct.mvpp2_pcpu_stats*, %struct.mvpp2_pcpu_stats** %16, align 8
  %236 = getelementptr inbounds %struct.mvpp2_pcpu_stats, %struct.mvpp2_pcpu_stats* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = sext i32 %237 to i64
  %239 = add nsw i64 %238, %234
  %240 = trunc i64 %239 to i32
  store i32 %240, i32* %236, align 4
  %241 = load %struct.mvpp2_pcpu_stats*, %struct.mvpp2_pcpu_stats** %16, align 8
  %242 = getelementptr inbounds %struct.mvpp2_pcpu_stats, %struct.mvpp2_pcpu_stats* %241, i32 0, i32 0
  %243 = call i32 @u64_stats_update_end(i32* %242)
  br label %252

244:                                              ; preds = %182
  %245 = load %struct.net_device*, %struct.net_device** %4, align 8
  %246 = getelementptr inbounds %struct.net_device, %struct.net_device* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %247, align 4
  %250 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %251 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %250)
  br label %252

252:                                              ; preds = %244, %224
  %253 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %254 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %253, i32 0, i32 3
  %255 = load i32, i32* %254, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %270, label %257

257:                                              ; preds = %252
  %258 = load %struct.mvpp2_txq_pcpu*, %struct.mvpp2_txq_pcpu** %8, align 8
  %259 = getelementptr inbounds %struct.mvpp2_txq_pcpu, %struct.mvpp2_txq_pcpu* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %6, align 8
  %262 = getelementptr inbounds %struct.mvpp2_tx_queue, %struct.mvpp2_tx_queue* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = icmp sge i32 %260, %263
  br i1 %264, label %265, label %270

265:                                              ; preds = %257
  %266 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %267 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %6, align 8
  %268 = load %struct.mvpp2_txq_pcpu*, %struct.mvpp2_txq_pcpu** %8, align 8
  %269 = call i32 @mvpp2_txq_done(%struct.mvpp2_port* %266, %struct.mvpp2_tx_queue* %267, %struct.mvpp2_txq_pcpu* %268)
  br label %270

270:                                              ; preds = %265, %257, %252
  %271 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %272 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %271, i32 0, i32 3
  %273 = load i32, i32* %272, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %306, label %275

275:                                              ; preds = %270
  %276 = load %struct.mvpp2_txq_pcpu*, %struct.mvpp2_txq_pcpu** %8, align 8
  %277 = getelementptr inbounds %struct.mvpp2_txq_pcpu, %struct.mvpp2_txq_pcpu* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* %13, align 4
  %280 = icmp sle i32 %278, %279
  br i1 %280, label %281, label %306

281:                                              ; preds = %275
  %282 = load %struct.mvpp2_txq_pcpu*, %struct.mvpp2_txq_pcpu** %8, align 8
  %283 = getelementptr inbounds %struct.mvpp2_txq_pcpu, %struct.mvpp2_txq_pcpu* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = icmp sgt i32 %284, 0
  br i1 %285, label %286, label %306

286:                                              ; preds = %281
  %287 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %288 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 8
  %290 = load i32, i32* %12, align 4
  %291 = call i8* @per_cpu_ptr(i32 %289, i32 %290)
  %292 = bitcast i8* %291 to %struct.mvpp2_port_pcpu*
  store %struct.mvpp2_port_pcpu* %292, %struct.mvpp2_port_pcpu** %18, align 8
  %293 = load %struct.mvpp2_port_pcpu*, %struct.mvpp2_port_pcpu** %18, align 8
  %294 = getelementptr inbounds %struct.mvpp2_port_pcpu, %struct.mvpp2_port_pcpu* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %305, label %297

297:                                              ; preds = %286
  %298 = load %struct.mvpp2_port_pcpu*, %struct.mvpp2_port_pcpu** %18, align 8
  %299 = getelementptr inbounds %struct.mvpp2_port_pcpu, %struct.mvpp2_port_pcpu* %298, i32 0, i32 0
  store i32 1, i32* %299, align 4
  %300 = load %struct.mvpp2_port_pcpu*, %struct.mvpp2_port_pcpu** %18, align 8
  %301 = getelementptr inbounds %struct.mvpp2_port_pcpu, %struct.mvpp2_port_pcpu* %300, i32 0, i32 1
  %302 = load i32, i32* @MVPP2_TXDONE_HRTIMER_PERIOD_NS, align 4
  %303 = load i32, i32* @HRTIMER_MODE_REL_PINNED_SOFT, align 4
  %304 = call i32 @hrtimer_start(i32* %301, i32 %302, i32 %303)
  br label %305

305:                                              ; preds = %297, %286
  br label %306

306:                                              ; preds = %305, %281, %275, %270
  %307 = load i32, i32* %12, align 4
  %308 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %309 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %308, i32 0, i32 1
  %310 = load %struct.TYPE_8__*, %struct.TYPE_8__** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %310, i32 0, i32 0
  %312 = call i64 @test_bit(i32 %307, i32* %311)
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %323

314:                                              ; preds = %306
  %315 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %316 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %315, i32 0, i32 0
  %317 = load i32*, i32** %316, align 8
  %318 = load i32, i32* %12, align 4
  %319 = zext i32 %318 to i64
  %320 = getelementptr inbounds i32, i32* %317, i64 %319
  %321 = load i64, i64* %11, align 8
  %322 = call i32 @spin_unlock_irqrestore(i32* %320, i64 %321)
  br label %323

323:                                              ; preds = %314, %306
  %324 = load i32, i32* @NETDEV_TX_OK, align 4
  ret i32 %324
}

declare dso_local %struct.mvpp2_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mvpp2_cpu_to_thread(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i8* @per_cpu_ptr(i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i32 @mvpp2_tx_tso(%struct.sk_buff*, %struct.net_device*, %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue*, %struct.mvpp2_txq_pcpu*) #1

declare dso_local %struct.TYPE_7__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @mvpp2_aggr_desc_num_check(%struct.mvpp2_port*, %struct.mvpp2_tx_queue*, i32) #1

declare dso_local i64 @mvpp2_txq_reserved_desc_num_proc(%struct.mvpp2_port*, %struct.mvpp2_tx_queue*, %struct.mvpp2_txq_pcpu*, i32) #1

declare dso_local %struct.mvpp2_tx_desc* @mvpp2_txq_next_desc_get(%struct.mvpp2_tx_queue*) #1

declare dso_local i32 @mvpp2_txdesc_txq_set(%struct.mvpp2_port*, %struct.mvpp2_tx_desc*, i32) #1

declare dso_local i32 @mvpp2_txdesc_size_set(%struct.mvpp2_port*, %struct.mvpp2_tx_desc*, i32) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @dma_map_single(i32, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @mvpp2_txq_desc_put(%struct.mvpp2_tx_queue*) #1

declare dso_local i32 @mvpp2_txdesc_dma_addr_set(%struct.mvpp2_port*, %struct.mvpp2_tx_desc*, i32) #1

declare dso_local i32 @mvpp2_skb_tx_csum(%struct.mvpp2_port*, %struct.sk_buff*) #1

declare dso_local i32 @mvpp2_txdesc_cmd_set(%struct.mvpp2_port*, %struct.mvpp2_tx_desc*, i32) #1

declare dso_local i32 @mvpp2_txq_inc_put(%struct.mvpp2_port*, %struct.mvpp2_txq_pcpu*, %struct.sk_buff*, %struct.mvpp2_tx_desc*) #1

declare dso_local i64 @mvpp2_tx_frag_process(%struct.mvpp2_port*, %struct.sk_buff*, %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue*) #1

declare dso_local i32 @tx_desc_unmap_put(%struct.mvpp2_port*, %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_desc*) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device*, i64) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @mvpp2_aggr_txq_pend_desc_add(%struct.mvpp2_port*, i32) #1

declare dso_local i32 @netif_tx_stop_queue(%struct.netdev_queue*) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @mvpp2_txq_done(%struct.mvpp2_port*, %struct.mvpp2_tx_queue*, %struct.mvpp2_txq_pcpu*) #1

declare dso_local i32 @hrtimer_start(i32*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
