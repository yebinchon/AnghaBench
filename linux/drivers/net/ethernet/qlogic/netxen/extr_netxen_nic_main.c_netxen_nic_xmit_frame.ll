; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_main.c_netxen_nic_xmit_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_main.c_netxen_nic_xmit_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.net_device = type { i32 }
%struct.netxen_adapter = type { %struct.TYPE_3__, i32, %struct.pci_dev*, %struct.nx_host_tx_ring* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.pci_dev = type { i32 }
%struct.nx_host_tx_ring = type { i64, i64, %struct.netxen_cmd_buffer*, %struct.cmd_desc_type0* }
%struct.netxen_cmd_buffer = type { i32, %struct.netxen_skb_frag*, %struct.sk_buff* }
%struct.netxen_skb_frag = type { i32, i32 }
%struct.cmd_desc_type0 = type { i8*, i8*, i8*, i8*, i32* }
%struct.TYPE_4__ = type { i32, i32* }

@NETXEN_MAX_FRAGS_PER_TX = common dso_local global i32 0, align 4
@TX_STOP_THRESH = common dso_local global i64 0, align 8
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @netxen_nic_xmit_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netxen_nic_xmit_frame(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.netxen_adapter*, align 8
  %7 = alloca %struct.nx_host_tx_ring*, align 8
  %8 = alloca %struct.netxen_cmd_buffer*, align 8
  %9 = alloca %struct.netxen_skb_frag*, align 8
  %10 = alloca %struct.cmd_desc_type0*, align 8
  %11 = alloca %struct.cmd_desc_type0*, align 8
  %12 = alloca %struct.pci_dev*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = call %struct.netxen_adapter* @netdev_priv(%struct.net_device* %20)
  store %struct.netxen_adapter* %21, %struct.netxen_adapter** %6, align 8
  %22 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %23 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %22, i32 0, i32 3
  %24 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %23, align 8
  store %struct.nx_host_tx_ring* %24, %struct.nx_host_tx_ring** %7, align 8
  store i32 0, i32* %15, align 4
  %25 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %7, align 8
  %26 = getelementptr inbounds %struct.nx_host_tx_ring, %struct.nx_host_tx_ring* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %19, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %28)
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %18, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = call i32 @skb_is_gso(%struct.sk_buff* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %76, label %36

36:                                               ; preds = %2
  %37 = load i32, i32* %18, align 4
  %38 = load i32, i32* @NETXEN_MAX_FRAGS_PER_TX, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %76

40:                                               ; preds = %36
  store i32 0, i32* %13, align 4
  br label %41

41:                                               ; preds = %61, %40
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %18, align 4
  %44 = load i32, i32* @NETXEN_MAX_FRAGS_PER_TX, align 4
  %45 = sub nsw i32 %43, %44
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %64

47:                                               ; preds = %41
  %48 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %49 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %48)
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32* %54, i32** %16, align 8
  %55 = load i32*, i32** %16, align 8
  %56 = call i64 @skb_frag_size(i32* %55)
  %57 = load i32, i32* %15, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %58, %56
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %15, align 4
  br label %61

61:                                               ; preds = %47
  %62 = load i32, i32* %13, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %13, align 4
  br label %41

64:                                               ; preds = %41
  %65 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %66 = load i32, i32* %15, align 4
  %67 = call i32 @__pskb_pull_tail(%struct.sk_buff* %65, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %64
  br label %254

70:                                               ; preds = %64
  %71 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %72 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %71)
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 1, %74
  store i32 %75, i32* %18, align 4
  br label %76

76:                                               ; preds = %70, %36, %2
  %77 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %7, align 8
  %78 = call i64 @netxen_tx_avail(%struct.nx_host_tx_ring* %77)
  %79 = load i64, i64* @TX_STOP_THRESH, align 8
  %80 = icmp sle i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i64 @unlikely(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %98

84:                                               ; preds = %76
  %85 = load %struct.net_device*, %struct.net_device** %5, align 8
  %86 = call i32 @netif_stop_queue(%struct.net_device* %85)
  %87 = call i32 (...) @smp_mb()
  %88 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %7, align 8
  %89 = call i64 @netxen_tx_avail(%struct.nx_host_tx_ring* %88)
  %90 = load i64, i64* @TX_STOP_THRESH, align 8
  %91 = icmp sgt i64 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %84
  %93 = load %struct.net_device*, %struct.net_device** %5, align 8
  %94 = call i32 @netif_start_queue(%struct.net_device* %93)
  br label %97

95:                                               ; preds = %84
  %96 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %96, i32* %3, align 4
  br label %263

97:                                               ; preds = %92
  br label %98

98:                                               ; preds = %97, %76
  %99 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %7, align 8
  %100 = getelementptr inbounds %struct.nx_host_tx_ring, %struct.nx_host_tx_ring* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  store i64 %101, i64* %17, align 8
  %102 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %7, align 8
  %103 = getelementptr inbounds %struct.nx_host_tx_ring, %struct.nx_host_tx_ring* %102, i32 0, i32 2
  %104 = load %struct.netxen_cmd_buffer*, %struct.netxen_cmd_buffer** %103, align 8
  %105 = load i64, i64* %17, align 8
  %106 = getelementptr inbounds %struct.netxen_cmd_buffer, %struct.netxen_cmd_buffer* %104, i64 %105
  store %struct.netxen_cmd_buffer* %106, %struct.netxen_cmd_buffer** %8, align 8
  %107 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %108 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %107, i32 0, i32 2
  %109 = load %struct.pci_dev*, %struct.pci_dev** %108, align 8
  store %struct.pci_dev* %109, %struct.pci_dev** %12, align 8
  %110 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %111 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %112 = load %struct.netxen_cmd_buffer*, %struct.netxen_cmd_buffer** %8, align 8
  %113 = call i64 @netxen_map_tx_skb(%struct.pci_dev* %110, %struct.sk_buff* %111, %struct.netxen_cmd_buffer* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %98
  br label %254

116:                                              ; preds = %98
  %117 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %118 = load %struct.netxen_cmd_buffer*, %struct.netxen_cmd_buffer** %8, align 8
  %119 = getelementptr inbounds %struct.netxen_cmd_buffer, %struct.netxen_cmd_buffer* %118, i32 0, i32 2
  store %struct.sk_buff* %117, %struct.sk_buff** %119, align 8
  %120 = load i32, i32* %18, align 4
  %121 = load %struct.netxen_cmd_buffer*, %struct.netxen_cmd_buffer** %8, align 8
  %122 = getelementptr inbounds %struct.netxen_cmd_buffer, %struct.netxen_cmd_buffer* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  %123 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %7, align 8
  %124 = getelementptr inbounds %struct.nx_host_tx_ring, %struct.nx_host_tx_ring* %123, i32 0, i32 3
  %125 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %124, align 8
  %126 = load i64, i64* %17, align 8
  %127 = getelementptr inbounds %struct.cmd_desc_type0, %struct.cmd_desc_type0* %125, i64 %126
  store %struct.cmd_desc_type0* %127, %struct.cmd_desc_type0** %10, align 8
  store %struct.cmd_desc_type0* %127, %struct.cmd_desc_type0** %11, align 8
  %128 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %10, align 8
  %129 = bitcast %struct.cmd_desc_type0* %128 to i32*
  %130 = call i32 @netxen_clear_cmddesc(i32* %129)
  %131 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %11, align 8
  %132 = load i32, i32* %18, align 4
  %133 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %134 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @netxen_set_tx_frags_len(%struct.cmd_desc_type0* %131, i32 %132, i64 %135)
  %137 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %11, align 8
  %138 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %139 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @netxen_set_tx_port(%struct.cmd_desc_type0* %137, i32 %140)
  store i32 0, i32* %13, align 4
  br label %142

142:                                              ; preds = %220, %116
  %143 = load i32, i32* %13, align 4
  %144 = load i32, i32* %18, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %223

146:                                              ; preds = %142
  %147 = load i32, i32* %13, align 4
  %148 = srem i32 %147, 4
  store i32 %148, i32* %14, align 4
  %149 = load i32, i32* %14, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %173

151:                                              ; preds = %146
  %152 = load i32, i32* %13, align 4
  %153 = icmp sgt i32 %152, 0
  br i1 %153, label %154, label %173

154:                                              ; preds = %151
  %155 = load i64, i64* %17, align 8
  %156 = load i64, i64* %19, align 8
  %157 = call i8* @get_next_index(i64 %155, i64 %156)
  %158 = ptrtoint i8* %157 to i64
  store i64 %158, i64* %17, align 8
  %159 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %7, align 8
  %160 = getelementptr inbounds %struct.nx_host_tx_ring, %struct.nx_host_tx_ring* %159, i32 0, i32 3
  %161 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %160, align 8
  %162 = load i64, i64* %17, align 8
  %163 = getelementptr inbounds %struct.cmd_desc_type0, %struct.cmd_desc_type0* %161, i64 %162
  store %struct.cmd_desc_type0* %163, %struct.cmd_desc_type0** %10, align 8
  %164 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %10, align 8
  %165 = bitcast %struct.cmd_desc_type0* %164 to i32*
  %166 = call i32 @netxen_clear_cmddesc(i32* %165)
  %167 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %7, align 8
  %168 = getelementptr inbounds %struct.nx_host_tx_ring, %struct.nx_host_tx_ring* %167, i32 0, i32 2
  %169 = load %struct.netxen_cmd_buffer*, %struct.netxen_cmd_buffer** %168, align 8
  %170 = load i64, i64* %17, align 8
  %171 = getelementptr inbounds %struct.netxen_cmd_buffer, %struct.netxen_cmd_buffer* %169, i64 %170
  %172 = getelementptr inbounds %struct.netxen_cmd_buffer, %struct.netxen_cmd_buffer* %171, i32 0, i32 2
  store %struct.sk_buff* null, %struct.sk_buff** %172, align 8
  br label %173

173:                                              ; preds = %154, %151, %146
  %174 = load %struct.netxen_cmd_buffer*, %struct.netxen_cmd_buffer** %8, align 8
  %175 = getelementptr inbounds %struct.netxen_cmd_buffer, %struct.netxen_cmd_buffer* %174, i32 0, i32 1
  %176 = load %struct.netxen_skb_frag*, %struct.netxen_skb_frag** %175, align 8
  %177 = load i32, i32* %13, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.netxen_skb_frag, %struct.netxen_skb_frag* %176, i64 %178
  store %struct.netxen_skb_frag* %179, %struct.netxen_skb_frag** %9, align 8
  %180 = load %struct.netxen_skb_frag*, %struct.netxen_skb_frag** %9, align 8
  %181 = getelementptr inbounds %struct.netxen_skb_frag, %struct.netxen_skb_frag* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @cpu_to_le16(i32 %182)
  %184 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %10, align 8
  %185 = getelementptr inbounds %struct.cmd_desc_type0, %struct.cmd_desc_type0* %184, i32 0, i32 4
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* %14, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  store i32 %183, i32* %189, align 4
  %190 = load i32, i32* %14, align 4
  switch i32 %190, label %219 [
    i32 0, label %191
    i32 1, label %198
    i32 2, label %205
    i32 3, label %212
  ]

191:                                              ; preds = %173
  %192 = load %struct.netxen_skb_frag*, %struct.netxen_skb_frag** %9, align 8
  %193 = getelementptr inbounds %struct.netxen_skb_frag, %struct.netxen_skb_frag* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = call i8* @cpu_to_le64(i32 %194)
  %196 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %10, align 8
  %197 = getelementptr inbounds %struct.cmd_desc_type0, %struct.cmd_desc_type0* %196, i32 0, i32 3
  store i8* %195, i8** %197, align 8
  br label %219

198:                                              ; preds = %173
  %199 = load %struct.netxen_skb_frag*, %struct.netxen_skb_frag** %9, align 8
  %200 = getelementptr inbounds %struct.netxen_skb_frag, %struct.netxen_skb_frag* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = call i8* @cpu_to_le64(i32 %201)
  %203 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %10, align 8
  %204 = getelementptr inbounds %struct.cmd_desc_type0, %struct.cmd_desc_type0* %203, i32 0, i32 2
  store i8* %202, i8** %204, align 8
  br label %219

205:                                              ; preds = %173
  %206 = load %struct.netxen_skb_frag*, %struct.netxen_skb_frag** %9, align 8
  %207 = getelementptr inbounds %struct.netxen_skb_frag, %struct.netxen_skb_frag* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = call i8* @cpu_to_le64(i32 %208)
  %210 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %10, align 8
  %211 = getelementptr inbounds %struct.cmd_desc_type0, %struct.cmd_desc_type0* %210, i32 0, i32 1
  store i8* %209, i8** %211, align 8
  br label %219

212:                                              ; preds = %173
  %213 = load %struct.netxen_skb_frag*, %struct.netxen_skb_frag** %9, align 8
  %214 = getelementptr inbounds %struct.netxen_skb_frag, %struct.netxen_skb_frag* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = call i8* @cpu_to_le64(i32 %215)
  %217 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %10, align 8
  %218 = getelementptr inbounds %struct.cmd_desc_type0, %struct.cmd_desc_type0* %217, i32 0, i32 0
  store i8* %216, i8** %218, align 8
  br label %219

219:                                              ; preds = %173, %212, %205, %198, %191
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %13, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %13, align 4
  br label %142

223:                                              ; preds = %142
  %224 = load i64, i64* %17, align 8
  %225 = load i64, i64* %19, align 8
  %226 = call i8* @get_next_index(i64 %224, i64 %225)
  %227 = ptrtoint i8* %226 to i64
  %228 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %7, align 8
  %229 = getelementptr inbounds %struct.nx_host_tx_ring, %struct.nx_host_tx_ring* %228, i32 0, i32 1
  store i64 %227, i64* %229, align 8
  %230 = load %struct.net_device*, %struct.net_device** %5, align 8
  %231 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %7, align 8
  %232 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %11, align 8
  %233 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %234 = call i32 @netxen_tso_check(%struct.net_device* %230, %struct.nx_host_tx_ring* %231, %struct.cmd_desc_type0* %232, %struct.sk_buff* %233)
  %235 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %236 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %239 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = sext i32 %241 to i64
  %243 = add nsw i64 %242, %237
  %244 = trunc i64 %243 to i32
  store i32 %244, i32* %240, align 8
  %245 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %246 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %247, align 4
  %250 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %251 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %7, align 8
  %252 = call i32 @netxen_nic_update_cmd_producer(%struct.netxen_adapter* %250, %struct.nx_host_tx_ring* %251)
  %253 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %253, i32* %3, align 4
  br label %263

254:                                              ; preds = %115, %69
  %255 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %256 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %257, align 8
  %260 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %261 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %260)
  %262 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %262, i32* %3, align 4
  br label %263

263:                                              ; preds = %254, %223, %95
  %264 = load i32, i32* %3, align 4
  ret i32 %264
}

declare dso_local %struct.netxen_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i64 @skb_frag_size(i32*) #1

declare dso_local i32 @__pskb_pull_tail(%struct.sk_buff*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @netxen_tx_avail(%struct.nx_host_tx_ring*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i64 @netxen_map_tx_skb(%struct.pci_dev*, %struct.sk_buff*, %struct.netxen_cmd_buffer*) #1

declare dso_local i32 @netxen_clear_cmddesc(i32*) #1

declare dso_local i32 @netxen_set_tx_frags_len(%struct.cmd_desc_type0*, i32, i64) #1

declare dso_local i32 @netxen_set_tx_port(%struct.cmd_desc_type0*, i32) #1

declare dso_local i8* @get_next_index(i64, i64) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @netxen_tso_check(%struct.net_device*, %struct.nx_host_tx_ring*, %struct.cmd_desc_type0*, %struct.sk_buff*) #1

declare dso_local i32 @netxen_nic_update_cmd_producer(%struct.netxen_adapter*, %struct.nx_host_tx_ring*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
