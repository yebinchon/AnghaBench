; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_main.c_atl1e_clean_rx_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_main.c_atl1e_clean_rx_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1e_adapter = type { i32, i32, i32, i32, %struct.atl1e_rx_ring, %struct.net_device* }
%struct.atl1e_rx_ring = type { i64, i64 }
%struct.net_device = type { i32 }
%struct.atl1e_rx_page_desc = type { i64, i64 }
%struct.sk_buff = type { i32, i32 }
%struct.atl1e_rx_page = type { i64*, i64, i64 }
%struct.atl1e_recv_ret_status = type { i64, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [46 x i8] c"rx sequence number error (rx=%d) (expect=%d)\0A\00", align 1
@REG_DEBUG_DATA0 = common dso_local global i32 0, align 4
@RRS_IS_ERR_FRAME = common dso_local global i32 0, align 4
@NETIF_F_RXALL = common dso_local global i32 0, align 4
@RRS_ERR_BAD_CRC = common dso_local global i32 0, align 4
@RRS_ERR_DRIBBLE = common dso_local global i32 0, align 4
@RRS_ERR_CODE = common dso_local global i32 0, align 4
@RRS_ERR_TRUNC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"rx packet desc error %x\0A\00", align 1
@RRS_PKT_SIZE_SHIFT = common dso_local global i64 0, align 8
@RRS_PKT_SIZE_MASK = common dso_local global i64 0, align 8
@NETIF_F_RXFCS = common dso_local global i32 0, align 4
@RRS_IS_VLAN_TAG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"RXD VLAN TAG<RRD>=0x%04x\0A\00", align 1
@ETH_P_8021Q = common dso_local global i32 0, align 4
@atl1e_rx_page_vld_regs = common dso_local global i32** null, align 8
@__AT_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atl1e_adapter*, i64, i32*, i32)* @atl1e_clean_rx_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl1e_clean_rx_irq(%struct.atl1e_adapter* %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.atl1e_adapter*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.atl1e_rx_ring*, align 8
  %11 = alloca %struct.atl1e_rx_page_desc*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.atl1e_rx_page*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.atl1e_recv_ret_status*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct.atl1e_adapter* %0, %struct.atl1e_adapter** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %20 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %5, align 8
  %21 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %20, i32 0, i32 5
  %22 = load %struct.net_device*, %struct.net_device** %21, align 8
  store %struct.net_device* %22, %struct.net_device** %9, align 8
  %23 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %5, align 8
  %24 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %23, i32 0, i32 4
  store %struct.atl1e_rx_ring* %24, %struct.atl1e_rx_ring** %10, align 8
  %25 = load %struct.atl1e_rx_ring*, %struct.atl1e_rx_ring** %10, align 8
  %26 = getelementptr inbounds %struct.atl1e_rx_ring, %struct.atl1e_rx_ring* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.atl1e_rx_page_desc*
  store %struct.atl1e_rx_page_desc* %28, %struct.atl1e_rx_page_desc** %11, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %12, align 8
  %29 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call %struct.atl1e_rx_page* @atl1e_get_rx_page(%struct.atl1e_adapter* %29, i64 %30)
  store %struct.atl1e_rx_page* %31, %struct.atl1e_rx_page** %13, align 8
  %32 = load %struct.atl1e_rx_page*, %struct.atl1e_rx_page** %13, align 8
  %33 = getelementptr inbounds %struct.atl1e_rx_page, %struct.atl1e_rx_page* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %15, align 8
  %36 = load %struct.atl1e_rx_page*, %struct.atl1e_rx_page** %13, align 8
  %37 = getelementptr inbounds %struct.atl1e_rx_page, %struct.atl1e_rx_page* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %15, align 8
  %40 = icmp slt i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i64 @likely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %296

44:                                               ; preds = %4
  br label %45

45:                                               ; preds = %289, %44
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp sge i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %295

51:                                               ; preds = %45
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  %55 = load %struct.atl1e_rx_page*, %struct.atl1e_rx_page** %13, align 8
  %56 = getelementptr inbounds %struct.atl1e_rx_page, %struct.atl1e_rx_page* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.atl1e_rx_page*, %struct.atl1e_rx_page** %13, align 8
  %59 = getelementptr inbounds %struct.atl1e_rx_page, %struct.atl1e_rx_page* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %57, %60
  %62 = inttoptr i64 %61 to %struct.atl1e_recv_ret_status*
  store %struct.atl1e_recv_ret_status* %62, %struct.atl1e_recv_ret_status** %16, align 8
  %63 = load %struct.atl1e_recv_ret_status*, %struct.atl1e_recv_ret_status** %16, align 8
  %64 = getelementptr inbounds %struct.atl1e_recv_ret_status, %struct.atl1e_recv_ret_status* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.atl1e_rx_page_desc*, %struct.atl1e_rx_page_desc** %11, align 8
  %67 = load i64, i64* %6, align 8
  %68 = getelementptr inbounds %struct.atl1e_rx_page_desc, %struct.atl1e_rx_page_desc* %66, i64 %67
  %69 = getelementptr inbounds %struct.atl1e_rx_page_desc, %struct.atl1e_rx_page_desc* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %65, %70
  br i1 %71, label %72, label %103

72:                                               ; preds = %51
  %73 = load %struct.net_device*, %struct.net_device** %9, align 8
  %74 = load %struct.atl1e_recv_ret_status*, %struct.atl1e_recv_ret_status** %16, align 8
  %75 = getelementptr inbounds %struct.atl1e_recv_ret_status, %struct.atl1e_recv_ret_status* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.atl1e_rx_page_desc*, %struct.atl1e_rx_page_desc** %11, align 8
  %78 = load i64, i64* %6, align 8
  %79 = getelementptr inbounds %struct.atl1e_rx_page_desc, %struct.atl1e_rx_page_desc* %77, i64 %78
  %80 = getelementptr inbounds %struct.atl1e_rx_page_desc, %struct.atl1e_rx_page_desc* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 (%struct.net_device*, i8*, i64, ...) @netdev_err(%struct.net_device* %73, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %76, i64 %81)
  %83 = load %struct.atl1e_rx_page_desc*, %struct.atl1e_rx_page_desc** %11, align 8
  %84 = load i64, i64* %6, align 8
  %85 = getelementptr inbounds %struct.atl1e_rx_page_desc, %struct.atl1e_rx_page_desc* %83, i64 %84
  %86 = getelementptr inbounds %struct.atl1e_rx_page_desc, %struct.atl1e_rx_page_desc* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %87, 1
  store i64 %88, i64* %86, align 8
  %89 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %5, align 8
  %90 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %89, i32 0, i32 2
  %91 = load i32, i32* @REG_DEBUG_DATA0, align 4
  %92 = load %struct.atl1e_recv_ret_status*, %struct.atl1e_recv_ret_status** %16, align 8
  %93 = getelementptr inbounds %struct.atl1e_recv_ret_status, %struct.atl1e_recv_ret_status* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = shl i64 %94, 16
  %96 = load %struct.atl1e_rx_page_desc*, %struct.atl1e_rx_page_desc** %11, align 8
  %97 = load i64, i64* %6, align 8
  %98 = getelementptr inbounds %struct.atl1e_rx_page_desc, %struct.atl1e_rx_page_desc* %96, i64 %97
  %99 = getelementptr inbounds %struct.atl1e_rx_page_desc, %struct.atl1e_rx_page_desc* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = or i64 %95, %100
  %102 = call i32 @AT_WRITE_REG(i32* %90, i32 %91, i64 %101)
  br label %297

103:                                              ; preds = %51
  %104 = load %struct.atl1e_rx_page_desc*, %struct.atl1e_rx_page_desc** %11, align 8
  %105 = load i64, i64* %6, align 8
  %106 = getelementptr inbounds %struct.atl1e_rx_page_desc, %struct.atl1e_rx_page_desc* %104, i64 %105
  %107 = getelementptr inbounds %struct.atl1e_rx_page_desc, %struct.atl1e_rx_page_desc* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %108, 1
  store i64 %109, i64* %107, align 8
  %110 = load %struct.atl1e_recv_ret_status*, %struct.atl1e_recv_ret_status** %16, align 8
  %111 = getelementptr inbounds %struct.atl1e_recv_ret_status, %struct.atl1e_recv_ret_status* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @RRS_IS_ERR_FRAME, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %144

116:                                              ; preds = %103
  %117 = load %struct.net_device*, %struct.net_device** %9, align 8
  %118 = getelementptr inbounds %struct.net_device, %struct.net_device* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @NETIF_F_RXALL, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %144, label %123

123:                                              ; preds = %116
  %124 = load %struct.atl1e_recv_ret_status*, %struct.atl1e_recv_ret_status** %16, align 8
  %125 = getelementptr inbounds %struct.atl1e_recv_ret_status, %struct.atl1e_recv_ret_status* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @RRS_ERR_BAD_CRC, align 4
  %128 = load i32, i32* @RRS_ERR_DRIBBLE, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @RRS_ERR_CODE, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* @RRS_ERR_TRUNC, align 4
  %133 = or i32 %131, %132
  %134 = and i32 %126, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %123
  %137 = load %struct.net_device*, %struct.net_device** %9, align 8
  %138 = load %struct.atl1e_recv_ret_status*, %struct.atl1e_recv_ret_status** %16, align 8
  %139 = bitcast %struct.atl1e_recv_ret_status* %138 to i64*
  %140 = getelementptr inbounds i64, i64* %139, i64 1
  %141 = load i64, i64* %140, align 8
  %142 = call i32 (%struct.net_device*, i8*, i64, ...) @netdev_err(%struct.net_device* %137, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %141)
  br label %231

143:                                              ; preds = %123
  br label %144

144:                                              ; preds = %143, %116, %103
  %145 = load %struct.atl1e_recv_ret_status*, %struct.atl1e_recv_ret_status** %16, align 8
  %146 = getelementptr inbounds %struct.atl1e_recv_ret_status, %struct.atl1e_recv_ret_status* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @RRS_PKT_SIZE_SHIFT, align 8
  %149 = ashr i64 %147, %148
  %150 = load i64, i64* @RRS_PKT_SIZE_MASK, align 8
  %151 = and i64 %149, %150
  store i64 %151, i64* %14, align 8
  %152 = load %struct.net_device*, %struct.net_device** %9, align 8
  %153 = getelementptr inbounds %struct.net_device, %struct.net_device* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @NETIF_F_RXFCS, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  %158 = xor i1 %157, true
  %159 = zext i1 %158 to i32
  %160 = call i64 @likely(i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %144
  %163 = load i64, i64* %14, align 8
  %164 = sub nsw i64 %163, 4
  store i64 %164, i64* %14, align 8
  br label %165

165:                                              ; preds = %162, %144
  %166 = load %struct.net_device*, %struct.net_device** %9, align 8
  %167 = load i64, i64* %14, align 8
  %168 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device* %166, i64 %167)
  store %struct.sk_buff* %168, %struct.sk_buff** %12, align 8
  %169 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %170 = icmp eq %struct.sk_buff* %169, null
  br i1 %170, label %171, label %172

171:                                              ; preds = %165
  br label %231

172:                                              ; preds = %165
  %173 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %174 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.atl1e_recv_ret_status*, %struct.atl1e_recv_ret_status** %16, align 8
  %177 = getelementptr inbounds %struct.atl1e_recv_ret_status, %struct.atl1e_recv_ret_status* %176, i64 1
  %178 = bitcast %struct.atl1e_recv_ret_status* %177 to i64*
  %179 = load i64, i64* %14, align 8
  %180 = call i32 @memcpy(i32 %175, i64* %178, i64 %179)
  %181 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %182 = load i64, i64* %14, align 8
  %183 = call i32 @skb_put(%struct.sk_buff* %181, i64 %182)
  %184 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %185 = load %struct.net_device*, %struct.net_device** %9, align 8
  %186 = call i32 @eth_type_trans(%struct.sk_buff* %184, %struct.net_device* %185)
  %187 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %188 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %187, i32 0, i32 0
  store i32 %186, i32* %188, align 4
  %189 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %5, align 8
  %190 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %191 = load %struct.atl1e_recv_ret_status*, %struct.atl1e_recv_ret_status** %16, align 8
  %192 = call i32 @atl1e_rx_checksum(%struct.atl1e_adapter* %189, %struct.sk_buff* %190, %struct.atl1e_recv_ret_status* %191)
  %193 = load %struct.atl1e_recv_ret_status*, %struct.atl1e_recv_ret_status** %16, align 8
  %194 = getelementptr inbounds %struct.atl1e_recv_ret_status, %struct.atl1e_recv_ret_status* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @RRS_IS_VLAN_TAG, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %226

199:                                              ; preds = %172
  %200 = load %struct.atl1e_recv_ret_status*, %struct.atl1e_recv_ret_status** %16, align 8
  %201 = getelementptr inbounds %struct.atl1e_recv_ret_status, %struct.atl1e_recv_ret_status* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 8
  %203 = ashr i32 %202, 4
  %204 = load %struct.atl1e_recv_ret_status*, %struct.atl1e_recv_ret_status** %16, align 8
  %205 = getelementptr inbounds %struct.atl1e_recv_ret_status, %struct.atl1e_recv_ret_status* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 8
  %207 = and i32 %206, 7
  %208 = shl i32 %207, 13
  %209 = or i32 %203, %208
  %210 = load %struct.atl1e_recv_ret_status*, %struct.atl1e_recv_ret_status** %16, align 8
  %211 = getelementptr inbounds %struct.atl1e_recv_ret_status, %struct.atl1e_recv_ret_status* %210, i32 0, i32 4
  %212 = load i32, i32* %211, align 8
  %213 = and i32 %212, 8
  %214 = shl i32 %213, 9
  %215 = or i32 %209, %214
  store i32 %215, i32* %17, align 4
  %216 = load %struct.net_device*, %struct.net_device** %9, align 8
  %217 = load %struct.atl1e_recv_ret_status*, %struct.atl1e_recv_ret_status** %16, align 8
  %218 = getelementptr inbounds %struct.atl1e_recv_ret_status, %struct.atl1e_recv_ret_status* %217, i32 0, i32 4
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @netdev_dbg(%struct.net_device* %216, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %219)
  %221 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %222 = load i32, i32* @ETH_P_8021Q, align 4
  %223 = call i32 @htons(i32 %222)
  %224 = load i32, i32* %17, align 4
  %225 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %221, i32 %223, i32 %224)
  br label %226

226:                                              ; preds = %199, %172
  %227 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %5, align 8
  %228 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %227, i32 0, i32 3
  %229 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %230 = call i32 @napi_gro_receive(i32* %228, %struct.sk_buff* %229)
  br label %231

231:                                              ; preds = %226, %171, %136
  %232 = load %struct.atl1e_recv_ret_status*, %struct.atl1e_recv_ret_status** %16, align 8
  %233 = getelementptr inbounds %struct.atl1e_recv_ret_status, %struct.atl1e_recv_ret_status* %232, i32 0, i32 3
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @RRS_PKT_SIZE_SHIFT, align 8
  %236 = ashr i64 %234, %235
  %237 = load i64, i64* @RRS_PKT_SIZE_MASK, align 8
  %238 = and i64 %236, %237
  %239 = add i64 %238, 32
  %240 = add i64 %239, 31
  %241 = and i64 %240, 4294967264
  %242 = load %struct.atl1e_rx_page*, %struct.atl1e_rx_page** %13, align 8
  %243 = getelementptr inbounds %struct.atl1e_rx_page, %struct.atl1e_rx_page* %242, i32 0, i32 1
  %244 = load i64, i64* %243, align 8
  %245 = add i64 %244, %241
  store i64 %245, i64* %243, align 8
  %246 = load %struct.atl1e_rx_page*, %struct.atl1e_rx_page** %13, align 8
  %247 = getelementptr inbounds %struct.atl1e_rx_page, %struct.atl1e_rx_page* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = load %struct.atl1e_rx_ring*, %struct.atl1e_rx_ring** %10, align 8
  %250 = getelementptr inbounds %struct.atl1e_rx_ring, %struct.atl1e_rx_ring* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = icmp sge i64 %248, %251
  br i1 %252, label %253, label %284

253:                                              ; preds = %231
  %254 = load %struct.atl1e_rx_page*, %struct.atl1e_rx_page** %13, align 8
  %255 = getelementptr inbounds %struct.atl1e_rx_page, %struct.atl1e_rx_page* %254, i32 0, i32 0
  %256 = load i64*, i64** %255, align 8
  store i64 0, i64* %256, align 8
  %257 = load %struct.atl1e_rx_page*, %struct.atl1e_rx_page** %13, align 8
  %258 = getelementptr inbounds %struct.atl1e_rx_page, %struct.atl1e_rx_page* %257, i32 0, i32 1
  store i64 0, i64* %258, align 8
  %259 = load %struct.atl1e_rx_page_desc*, %struct.atl1e_rx_page_desc** %11, align 8
  %260 = load i64, i64* %6, align 8
  %261 = getelementptr inbounds %struct.atl1e_rx_page_desc, %struct.atl1e_rx_page_desc* %259, i64 %260
  %262 = getelementptr inbounds %struct.atl1e_rx_page_desc, %struct.atl1e_rx_page_desc* %261, i32 0, i32 1
  %263 = load i64, i64* %262, align 8
  store i64 %263, i64* %19, align 8
  %264 = load i32**, i32*** @atl1e_rx_page_vld_regs, align 8
  %265 = load i64, i64* %6, align 8
  %266 = getelementptr inbounds i32*, i32** %264, i64 %265
  %267 = load i32*, i32** %266, align 8
  %268 = load i64, i64* %19, align 8
  %269 = getelementptr inbounds i32, i32* %267, i64 %268
  %270 = load i32, i32* %269, align 4
  store i32 %270, i32* %18, align 4
  %271 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %5, align 8
  %272 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %271, i32 0, i32 2
  %273 = load i32, i32* %18, align 4
  %274 = call i32 @AT_WRITE_REGB(i32* %272, i32 %273, i32 1)
  %275 = load %struct.atl1e_rx_page_desc*, %struct.atl1e_rx_page_desc** %11, align 8
  %276 = load i64, i64* %6, align 8
  %277 = getelementptr inbounds %struct.atl1e_rx_page_desc, %struct.atl1e_rx_page_desc* %275, i64 %276
  %278 = getelementptr inbounds %struct.atl1e_rx_page_desc, %struct.atl1e_rx_page_desc* %277, i32 0, i32 1
  %279 = load i64, i64* %278, align 8
  %280 = xor i64 %279, 1
  store i64 %280, i64* %278, align 8
  %281 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %5, align 8
  %282 = load i64, i64* %6, align 8
  %283 = call %struct.atl1e_rx_page* @atl1e_get_rx_page(%struct.atl1e_adapter* %281, i64 %282)
  store %struct.atl1e_rx_page* %283, %struct.atl1e_rx_page** %13, align 8
  br label %284

284:                                              ; preds = %253, %231
  %285 = load %struct.atl1e_rx_page*, %struct.atl1e_rx_page** %13, align 8
  %286 = getelementptr inbounds %struct.atl1e_rx_page, %struct.atl1e_rx_page* %285, i32 0, i32 0
  %287 = load i64*, i64** %286, align 8
  %288 = load i64, i64* %287, align 8
  store i64 %288, i64* %15, align 8
  br label %289

289:                                              ; preds = %284
  %290 = load %struct.atl1e_rx_page*, %struct.atl1e_rx_page** %13, align 8
  %291 = getelementptr inbounds %struct.atl1e_rx_page, %struct.atl1e_rx_page* %290, i32 0, i32 1
  %292 = load i64, i64* %291, align 8
  %293 = load i64, i64* %15, align 8
  %294 = icmp slt i64 %292, %293
  br i1 %294, label %45, label %295

295:                                              ; preds = %289, %50
  br label %296

296:                                              ; preds = %295, %4
  br label %307

297:                                              ; preds = %72
  %298 = load i32, i32* @__AT_DOWN, align 4
  %299 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %5, align 8
  %300 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %299, i32 0, i32 1
  %301 = call i32 @test_bit(i32 %298, i32* %300)
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %307, label %303

303:                                              ; preds = %297
  %304 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %5, align 8
  %305 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %304, i32 0, i32 0
  %306 = call i32 @schedule_work(i32* %305)
  br label %307

307:                                              ; preds = %296, %303, %297
  ret void
}

declare dso_local %struct.atl1e_rx_page* @atl1e_get_rx_page(%struct.atl1e_adapter*, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i64, ...) #1

declare dso_local i32 @AT_WRITE_REG(i32*, i32, i64) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device*, i64) #1

declare dso_local i32 @memcpy(i32, i64*, i64) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @atl1e_rx_checksum(%struct.atl1e_adapter*, %struct.sk_buff*, %struct.atl1e_recv_ret_status*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @napi_gro_receive(i32*, %struct.sk_buff*) #1

declare dso_local i32 @AT_WRITE_REGB(i32*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
