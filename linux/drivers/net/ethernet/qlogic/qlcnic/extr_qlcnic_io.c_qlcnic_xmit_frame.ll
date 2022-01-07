; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_io.c_qlcnic_xmit_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_io.c_qlcnic_xmit_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32, i32, i64 }
%struct.net_device = type { i32 }
%struct.qlcnic_adapter = type { i32, %struct.TYPE_7__, i64, i32, %struct.pci_dev*, %struct.qlcnic_host_tx_ring*, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.pci_dev = type { i32 }
%struct.qlcnic_host_tx_ring = type { i64, i64, %struct.TYPE_6__, %struct.qlcnic_cmd_buffer*, %struct.cmd_desc_type0*, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.qlcnic_cmd_buffer = type { i32, %struct.qlcnic_skb_frag*, %struct.sk_buff* }
%struct.qlcnic_skb_frag = type { i32, i32 }
%struct.cmd_desc_type0 = type { i8*, i8*, i8*, i8*, i32* }
%struct.ethhdr = type { i32 }
%struct.TYPE_8__ = type { i32, i32* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64 }

@__QLCNIC_DEV_UP = common dso_local global i32 0, align 4
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@QLCNIC_MACSPOOF = common dso_local global i32 0, align 4
@QLCNIC_MAX_FRAGS_PER_TX = common dso_local global i32 0, align 4
@TX_STOP_THRESH = common dso_local global i64 0, align 8
@ETH_P_IP = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i64 0, align 8
@ETH_P_IPV6 = common dso_local global i64 0, align 8
@NETDEV_TX_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_xmit_frame(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.qlcnic_adapter*, align 8
  %7 = alloca %struct.qlcnic_host_tx_ring*, align 8
  %8 = alloca %struct.qlcnic_cmd_buffer*, align 8
  %9 = alloca %struct.qlcnic_skb_frag*, align 8
  %10 = alloca %struct.cmd_desc_type0*, align 8
  %11 = alloca %struct.cmd_desc_type0*, align 8
  %12 = alloca %struct.pci_dev*, align 8
  %13 = alloca %struct.ethhdr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = call %struct.qlcnic_adapter* @netdev_priv(%struct.net_device* %22)
  store %struct.qlcnic_adapter* %23, %struct.qlcnic_adapter** %6, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %21, align 4
  %24 = load i32, i32* @__QLCNIC_DEV_UP, align 4
  %25 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %26 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %25, i32 0, i32 7
  %27 = call i32 @test_bit(i32 %24, i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %2
  %30 = load %struct.net_device*, %struct.net_device** %5, align 8
  %31 = call i32 @netif_tx_stop_all_queues(%struct.net_device* %30)
  %32 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %32, i32* %3, align 4
  br label %390

33:                                               ; preds = %2
  %34 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %35 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @QLCNIC_MACSPOOF, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %33
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to %struct.ethhdr*
  store %struct.ethhdr* %44, %struct.ethhdr** %13, align 8
  %45 = load %struct.ethhdr*, %struct.ethhdr** %13, align 8
  %46 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %49 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @ether_addr_equal(i32 %47, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %40
  br label %381

54:                                               ; preds = %40
  br label %55

55:                                               ; preds = %54, %33
  %56 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %57 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %56, i32 0, i32 5
  %58 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %57, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %60 = call i64 @skb_get_queue_mapping(%struct.sk_buff* %59)
  %61 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %58, i64 %60
  store %struct.qlcnic_host_tx_ring* %61, %struct.qlcnic_host_tx_ring** %7, align 8
  %62 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %7, align 8
  %63 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %19, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %66 = call %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff* %65)
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %16, align 4
  %70 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %71 = call i32 @skb_is_gso(%struct.sk_buff* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %112, label %73

73:                                               ; preds = %55
  %74 = load i32, i32* %16, align 4
  %75 = load i32, i32* @QLCNIC_MAX_FRAGS_PER_TX, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %77, label %112

77:                                               ; preds = %73
  store i32 0, i32* %14, align 4
  br label %78

78:                                               ; preds = %97, %77
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* %16, align 4
  %81 = load i32, i32* @QLCNIC_MAX_FRAGS_PER_TX, align 4
  %82 = sub nsw i32 %80, %81
  %83 = icmp slt i32 %79, %82
  br i1 %83, label %84, label %100

84:                                               ; preds = %78
  %85 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %86 = call %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff* %85)
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %14, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = call i64 @skb_frag_size(i32* %91)
  %93 = load i32, i32* %17, align 4
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %94, %92
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %17, align 4
  br label %97

97:                                               ; preds = %84
  %98 = load i32, i32* %14, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %14, align 4
  br label %78

100:                                              ; preds = %78
  %101 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %102 = load i32, i32* %17, align 4
  %103 = call i32 @__pskb_pull_tail(%struct.sk_buff* %101, i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %100
  br label %381

106:                                              ; preds = %100
  %107 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %108 = call %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff* %107)
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = add nsw i32 1, %110
  store i32 %111, i32* %16, align 4
  br label %112

112:                                              ; preds = %106, %73, %55
  %113 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %7, align 8
  %114 = call i64 @qlcnic_tx_avail(%struct.qlcnic_host_tx_ring* %113)
  %115 = load i64, i64* @TX_STOP_THRESH, align 8
  %116 = icmp sle i64 %114, %115
  %117 = zext i1 %116 to i32
  %118 = call i64 @unlikely(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %142

120:                                              ; preds = %112
  %121 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %7, align 8
  %122 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @netif_tx_stop_queue(i32 %123)
  %125 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %7, align 8
  %126 = call i64 @qlcnic_tx_avail(%struct.qlcnic_host_tx_ring* %125)
  %127 = load i64, i64* @TX_STOP_THRESH, align 8
  %128 = icmp sgt i64 %126, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %120
  %130 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %7, align 8
  %131 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @netif_tx_start_queue(i32 %132)
  br label %141

134:                                              ; preds = %120
  %135 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %7, align 8
  %136 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %137, align 8
  %140 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %140, i32* %3, align 4
  br label %390

141:                                              ; preds = %129
  br label %142

142:                                              ; preds = %141, %112
  %143 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %7, align 8
  %144 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  store i64 %145, i64* %18, align 8
  %146 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %7, align 8
  %147 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %146, i32 0, i32 3
  %148 = load %struct.qlcnic_cmd_buffer*, %struct.qlcnic_cmd_buffer** %147, align 8
  %149 = load i64, i64* %18, align 8
  %150 = getelementptr inbounds %struct.qlcnic_cmd_buffer, %struct.qlcnic_cmd_buffer* %148, i64 %149
  store %struct.qlcnic_cmd_buffer* %150, %struct.qlcnic_cmd_buffer** %8, align 8
  %151 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %152 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %151, i32 0, i32 4
  %153 = load %struct.pci_dev*, %struct.pci_dev** %152, align 8
  store %struct.pci_dev* %153, %struct.pci_dev** %12, align 8
  %154 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %7, align 8
  %155 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %154, i32 0, i32 4
  %156 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %155, align 8
  %157 = load i64, i64* %18, align 8
  %158 = getelementptr inbounds %struct.cmd_desc_type0, %struct.cmd_desc_type0* %156, i64 %157
  store %struct.cmd_desc_type0* %158, %struct.cmd_desc_type0** %11, align 8
  %159 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %7, align 8
  %160 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %159, i32 0, i32 4
  %161 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %160, align 8
  %162 = load i64, i64* %18, align 8
  %163 = getelementptr inbounds %struct.cmd_desc_type0, %struct.cmd_desc_type0* %161, i64 %162
  store %struct.cmd_desc_type0* %163, %struct.cmd_desc_type0** %10, align 8
  %164 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %10, align 8
  %165 = bitcast %struct.cmd_desc_type0* %164 to i32*
  %166 = call i32 @qlcnic_clear_cmddesc(i32* %165)
  %167 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %168 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %169 = load %struct.qlcnic_cmd_buffer*, %struct.qlcnic_cmd_buffer** %8, align 8
  %170 = call i64 @qlcnic_map_tx_skb(%struct.pci_dev* %167, %struct.sk_buff* %168, %struct.qlcnic_cmd_buffer* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %142
  %173 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %174 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %175, align 4
  br label %381

178:                                              ; preds = %142
  %179 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %180 = load %struct.qlcnic_cmd_buffer*, %struct.qlcnic_cmd_buffer** %8, align 8
  %181 = getelementptr inbounds %struct.qlcnic_cmd_buffer, %struct.qlcnic_cmd_buffer* %180, i32 0, i32 2
  store %struct.sk_buff* %179, %struct.sk_buff** %181, align 8
  %182 = load i32, i32* %16, align 4
  %183 = load %struct.qlcnic_cmd_buffer*, %struct.qlcnic_cmd_buffer** %8, align 8
  %184 = getelementptr inbounds %struct.qlcnic_cmd_buffer, %struct.qlcnic_cmd_buffer* %183, i32 0, i32 0
  store i32 %182, i32* %184, align 8
  %185 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %11, align 8
  %186 = load i32, i32* %16, align 4
  %187 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %188 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = call i32 @qlcnic_set_tx_frags_len(%struct.cmd_desc_type0* %185, i32 %186, i64 %189)
  %191 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %11, align 8
  %192 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %193 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @qlcnic_set_tx_port(%struct.cmd_desc_type0* %191, i32 %194)
  store i32 0, i32* %14, align 4
  br label %196

196:                                              ; preds = %274, %178
  %197 = load i32, i32* %14, align 4
  %198 = load i32, i32* %16, align 4
  %199 = icmp slt i32 %197, %198
  br i1 %199, label %200, label %277

200:                                              ; preds = %196
  %201 = load i32, i32* %14, align 4
  %202 = srem i32 %201, 4
  store i32 %202, i32* %15, align 4
  %203 = load i32, i32* %15, align 4
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %227

205:                                              ; preds = %200
  %206 = load i32, i32* %14, align 4
  %207 = icmp sgt i32 %206, 0
  br i1 %207, label %208, label %227

208:                                              ; preds = %205
  %209 = load i64, i64* %18, align 8
  %210 = load i64, i64* %19, align 8
  %211 = call i8* @get_next_index(i64 %209, i64 %210)
  %212 = ptrtoint i8* %211 to i64
  store i64 %212, i64* %18, align 8
  %213 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %7, align 8
  %214 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %213, i32 0, i32 4
  %215 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %214, align 8
  %216 = load i64, i64* %18, align 8
  %217 = getelementptr inbounds %struct.cmd_desc_type0, %struct.cmd_desc_type0* %215, i64 %216
  store %struct.cmd_desc_type0* %217, %struct.cmd_desc_type0** %10, align 8
  %218 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %10, align 8
  %219 = bitcast %struct.cmd_desc_type0* %218 to i32*
  %220 = call i32 @qlcnic_clear_cmddesc(i32* %219)
  %221 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %7, align 8
  %222 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %221, i32 0, i32 3
  %223 = load %struct.qlcnic_cmd_buffer*, %struct.qlcnic_cmd_buffer** %222, align 8
  %224 = load i64, i64* %18, align 8
  %225 = getelementptr inbounds %struct.qlcnic_cmd_buffer, %struct.qlcnic_cmd_buffer* %223, i64 %224
  %226 = getelementptr inbounds %struct.qlcnic_cmd_buffer, %struct.qlcnic_cmd_buffer* %225, i32 0, i32 2
  store %struct.sk_buff* null, %struct.sk_buff** %226, align 8
  br label %227

227:                                              ; preds = %208, %205, %200
  %228 = load %struct.qlcnic_cmd_buffer*, %struct.qlcnic_cmd_buffer** %8, align 8
  %229 = getelementptr inbounds %struct.qlcnic_cmd_buffer, %struct.qlcnic_cmd_buffer* %228, i32 0, i32 1
  %230 = load %struct.qlcnic_skb_frag*, %struct.qlcnic_skb_frag** %229, align 8
  %231 = load i32, i32* %14, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.qlcnic_skb_frag, %struct.qlcnic_skb_frag* %230, i64 %232
  store %struct.qlcnic_skb_frag* %233, %struct.qlcnic_skb_frag** %9, align 8
  %234 = load %struct.qlcnic_skb_frag*, %struct.qlcnic_skb_frag** %9, align 8
  %235 = getelementptr inbounds %struct.qlcnic_skb_frag, %struct.qlcnic_skb_frag* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @cpu_to_le16(i32 %236)
  %238 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %10, align 8
  %239 = getelementptr inbounds %struct.cmd_desc_type0, %struct.cmd_desc_type0* %238, i32 0, i32 4
  %240 = load i32*, i32** %239, align 8
  %241 = load i32, i32* %15, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  store i32 %237, i32* %243, align 4
  %244 = load i32, i32* %15, align 4
  switch i32 %244, label %273 [
    i32 0, label %245
    i32 1, label %252
    i32 2, label %259
    i32 3, label %266
  ]

245:                                              ; preds = %227
  %246 = load %struct.qlcnic_skb_frag*, %struct.qlcnic_skb_frag** %9, align 8
  %247 = getelementptr inbounds %struct.qlcnic_skb_frag, %struct.qlcnic_skb_frag* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = call i8* @cpu_to_le64(i32 %248)
  %250 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %10, align 8
  %251 = getelementptr inbounds %struct.cmd_desc_type0, %struct.cmd_desc_type0* %250, i32 0, i32 3
  store i8* %249, i8** %251, align 8
  br label %273

252:                                              ; preds = %227
  %253 = load %struct.qlcnic_skb_frag*, %struct.qlcnic_skb_frag** %9, align 8
  %254 = getelementptr inbounds %struct.qlcnic_skb_frag, %struct.qlcnic_skb_frag* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = call i8* @cpu_to_le64(i32 %255)
  %257 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %10, align 8
  %258 = getelementptr inbounds %struct.cmd_desc_type0, %struct.cmd_desc_type0* %257, i32 0, i32 2
  store i8* %256, i8** %258, align 8
  br label %273

259:                                              ; preds = %227
  %260 = load %struct.qlcnic_skb_frag*, %struct.qlcnic_skb_frag** %9, align 8
  %261 = getelementptr inbounds %struct.qlcnic_skb_frag, %struct.qlcnic_skb_frag* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = call i8* @cpu_to_le64(i32 %262)
  %264 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %10, align 8
  %265 = getelementptr inbounds %struct.cmd_desc_type0, %struct.cmd_desc_type0* %264, i32 0, i32 1
  store i8* %263, i8** %265, align 8
  br label %273

266:                                              ; preds = %227
  %267 = load %struct.qlcnic_skb_frag*, %struct.qlcnic_skb_frag** %9, align 8
  %268 = getelementptr inbounds %struct.qlcnic_skb_frag, %struct.qlcnic_skb_frag* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = call i8* @cpu_to_le64(i32 %269)
  %271 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %10, align 8
  %272 = getelementptr inbounds %struct.cmd_desc_type0, %struct.cmd_desc_type0* %271, i32 0, i32 0
  store i8* %270, i8** %272, align 8
  br label %273

273:                                              ; preds = %227, %266, %259, %252, %245
  br label %274

274:                                              ; preds = %273
  %275 = load i32, i32* %14, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %14, align 4
  br label %196

277:                                              ; preds = %196
  %278 = load i64, i64* %18, align 8
  %279 = load i64, i64* %19, align 8
  %280 = call i8* @get_next_index(i64 %278, i64 %279)
  %281 = ptrtoint i8* %280 to i64
  %282 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %7, align 8
  %283 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %282, i32 0, i32 1
  store i64 %281, i64* %283, align 8
  %284 = call i32 (...) @smp_mb()
  %285 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %286 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %285, i32 0, i32 2
  %287 = load i32, i32* %286, align 4
  %288 = call i64 @ntohs(i32 %287)
  store i64 %288, i64* %20, align 8
  %289 = load i64, i64* %20, align 8
  %290 = load i64, i64* @ETH_P_IP, align 8
  %291 = icmp eq i64 %289, %290
  br i1 %291, label %292, label %300

292:                                              ; preds = %277
  %293 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %294 = call %struct.TYPE_10__* @ip_hdr(%struct.sk_buff* %293)
  %295 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = load i64, i64* @IPPROTO_UDP, align 8
  %298 = icmp eq i64 %296, %297
  %299 = zext i1 %298 to i32
  store i32 %299, i32* %21, align 4
  br label %313

300:                                              ; preds = %277
  %301 = load i64, i64* %20, align 8
  %302 = load i64, i64* @ETH_P_IPV6, align 8
  %303 = icmp eq i64 %301, %302
  br i1 %303, label %304, label %312

304:                                              ; preds = %300
  %305 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %306 = call %struct.TYPE_9__* @ipv6_hdr(%struct.sk_buff* %305)
  %307 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = load i64, i64* @IPPROTO_UDP, align 8
  %310 = icmp eq i64 %308, %309
  %311 = zext i1 %310 to i32
  store i32 %311, i32* %21, align 4
  br label %312

312:                                              ; preds = %304, %300
  br label %313

313:                                              ; preds = %312, %292
  %314 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %315 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 8
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %325

318:                                              ; preds = %313
  %319 = load i32, i32* %21, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %325

321:                                              ; preds = %318
  %322 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %323 = call i32 @qlcnic_encap_tx_offload(%struct.qlcnic_adapter* %322)
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %335, label %325

325:                                              ; preds = %321, %318, %313
  %326 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %327 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %11, align 8
  %328 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %329 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %7, align 8
  %330 = call i32 @qlcnic_tx_pkt(%struct.qlcnic_adapter* %326, %struct.cmd_desc_type0* %327, %struct.sk_buff* %328, %struct.qlcnic_host_tx_ring* %329)
  %331 = call i64 @unlikely(i32 %330)
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %334

333:                                              ; preds = %325
  br label %376

334:                                              ; preds = %325
  br label %345

335:                                              ; preds = %321
  %336 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %337 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %11, align 8
  %338 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %339 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %7, align 8
  %340 = call i32 @qlcnic_tx_encap_pkt(%struct.qlcnic_adapter* %336, %struct.cmd_desc_type0* %337, %struct.sk_buff* %338, %struct.qlcnic_host_tx_ring* %339)
  %341 = call i64 @unlikely(i32 %340)
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %343, label %344

343:                                              ; preds = %335
  br label %376

344:                                              ; preds = %335
  br label %345

345:                                              ; preds = %344, %334
  %346 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %347 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %346, i32 0, i32 2
  %348 = load i64, i64* %347, align 8
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %356

350:                                              ; preds = %345
  %351 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %352 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %11, align 8
  %353 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %354 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %7, align 8
  %355 = call i32 @qlcnic_send_filter(%struct.qlcnic_adapter* %351, %struct.cmd_desc_type0* %352, %struct.sk_buff* %353, %struct.qlcnic_host_tx_ring* %354)
  br label %356

356:                                              ; preds = %350, %345
  %357 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %358 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %357, i32 0, i32 0
  %359 = load i64, i64* %358, align 8
  %360 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %7, align 8
  %361 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %360, i32 0, i32 2
  %362 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %361, i32 0, i32 1
  %363 = load i32, i32* %362, align 4
  %364 = sext i32 %363 to i64
  %365 = add nsw i64 %364, %359
  %366 = trunc i64 %365 to i32
  store i32 %366, i32* %362, align 4
  %367 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %7, align 8
  %368 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %367, i32 0, i32 2
  %369 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 8
  %371 = add nsw i32 %370, 1
  store i32 %371, i32* %369, align 8
  %372 = call i32 (...) @wmb()
  %373 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %7, align 8
  %374 = call i32 @qlcnic_update_cmd_producer(%struct.qlcnic_host_tx_ring* %373)
  %375 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %375, i32* %3, align 4
  br label %390

376:                                              ; preds = %343, %333
  %377 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %378 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %379 = load %struct.qlcnic_cmd_buffer*, %struct.qlcnic_cmd_buffer** %8, align 8
  %380 = call i32 @qlcnic_unmap_buffers(%struct.pci_dev* %377, %struct.sk_buff* %378, %struct.qlcnic_cmd_buffer* %379)
  br label %381

381:                                              ; preds = %376, %172, %105, %53
  %382 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %383 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %382, i32 0, i32 1
  %384 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 4
  %386 = add nsw i32 %385, 1
  store i32 %386, i32* %384, align 4
  %387 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %388 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %387)
  %389 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %389, i32* %3, align 4
  br label %390

390:                                              ; preds = %381, %356, %134, %29
  %391 = load i32, i32* %3, align 4
  ret i32 %391
}

declare dso_local %struct.qlcnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @netif_tx_stop_all_queues(%struct.net_device*) #1

declare dso_local i32 @ether_addr_equal(i32, i32) #1

declare dso_local i64 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i64 @skb_frag_size(i32*) #1

declare dso_local i32 @__pskb_pull_tail(%struct.sk_buff*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @qlcnic_tx_avail(%struct.qlcnic_host_tx_ring*) #1

declare dso_local i32 @netif_tx_stop_queue(i32) #1

declare dso_local i32 @netif_tx_start_queue(i32) #1

declare dso_local i32 @qlcnic_clear_cmddesc(i32*) #1

declare dso_local i64 @qlcnic_map_tx_skb(%struct.pci_dev*, %struct.sk_buff*, %struct.qlcnic_cmd_buffer*) #1

declare dso_local i32 @qlcnic_set_tx_frags_len(%struct.cmd_desc_type0*, i32, i64) #1

declare dso_local i32 @qlcnic_set_tx_port(%struct.cmd_desc_type0*, i32) #1

declare dso_local i8* @get_next_index(i64, i64) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local %struct.TYPE_10__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_9__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @qlcnic_encap_tx_offload(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_tx_pkt(%struct.qlcnic_adapter*, %struct.cmd_desc_type0*, %struct.sk_buff*, %struct.qlcnic_host_tx_ring*) #1

declare dso_local i32 @qlcnic_tx_encap_pkt(%struct.qlcnic_adapter*, %struct.cmd_desc_type0*, %struct.sk_buff*, %struct.qlcnic_host_tx_ring*) #1

declare dso_local i32 @qlcnic_send_filter(%struct.qlcnic_adapter*, %struct.cmd_desc_type0*, %struct.sk_buff*, %struct.qlcnic_host_tx_ring*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @qlcnic_update_cmd_producer(%struct.qlcnic_host_tx_ring*) #1

declare dso_local i32 @qlcnic_unmap_buffers(%struct.pci_dev*, %struct.sk_buff*, %struct.qlcnic_cmd_buffer*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
