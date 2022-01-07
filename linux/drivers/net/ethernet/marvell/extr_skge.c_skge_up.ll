; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_skge_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_skge_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, i32, i32 }
%struct.skge_port = type { i32, i64, i64, i32, i32*, %struct.TYPE_4__, %struct.TYPE_4__, i32, i32, %struct.skge_hw* }
%struct.TYPE_4__ = type { i32, i64, i64, i32 }
%struct.skge_hw = type { i32, i32, i32, %struct.TYPE_5__*, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ifup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"enabling interface\0A\00", align 1
@RX_BUF_SIZE = common dso_local global i64 0, align 8
@ETH_HLEN = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"pci_alloc_consistent region crosses 4G boundary\0A\00", align 1
@skge_intr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Unable to allocate interrupt %d error: %d\0A\00", align 1
@rxqaddr = common dso_local global i32* null, align 8
@txqaddr = common dso_local global i32* null, align 8
@Q_CSR = common dso_local global i32 0, align 4
@CSR_START = common dso_local global i32 0, align 4
@CSR_IRQ_CL_F = common dso_local global i32 0, align 4
@LED_MODE_ON = common dso_local global i32 0, align 4
@portmask = common dso_local global i32* null, align 8
@B0_IMSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @skge_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skge_up(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.skge_port*, align 8
  %5 = alloca %struct.skge_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = call %struct.skge_port* @netdev_priv(%struct.net_device* %12)
  store %struct.skge_port* %13, %struct.skge_port** %4, align 8
  %14 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %15 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %14, i32 0, i32 9
  %16 = load %struct.skge_hw*, %struct.skge_hw** %15, align 8
  store %struct.skge_hw* %16, %struct.skge_hw** %5, align 8
  %17 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %18 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %6, align 4
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @is_valid_ether_addr(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %357

28:                                               ; preds = %1
  %29 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %30 = load i32, i32* @ifup, align 4
  %31 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %32 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %31, i32 0, i32 8
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @netif_info(%struct.skge_port* %29, i32 %30, i32 %33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.net_device*, %struct.net_device** %3, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @RX_BUF_SIZE, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %28
  %41 = load %struct.net_device*, %struct.net_device** %3, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @ETH_HLEN, align 8
  %45 = add nsw i64 %43, %44
  %46 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %47 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  br label %52

48:                                               ; preds = %28
  %49 = load i64, i64* @RX_BUF_SIZE, align 8
  %50 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %51 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  br label %52

52:                                               ; preds = %48, %40
  %53 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %54 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %53, i32 0, i32 5
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 4
  store i64 %58, i64* %9, align 8
  %59 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %60 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %59, i32 0, i32 6
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = mul i64 %63, 4
  store i64 %64, i64* %10, align 8
  %65 = load i64, i64* %10, align 8
  %66 = load i64, i64* %9, align 8
  %67 = add i64 %65, %66
  %68 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %69 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %68, i32 0, i32 2
  store i64 %67, i64* %69, align 8
  %70 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %71 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %70, i32 0, i32 3
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %74 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %77 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %76, i32 0, i32 3
  %78 = call i32* @pci_alloc_consistent(%struct.TYPE_5__* %72, i64 %75, i32* %77)
  %79 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %80 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %79, i32 0, i32 4
  store i32* %78, i32** %80, align 8
  %81 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %82 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %81, i32 0, i32 4
  %83 = load i32*, i32** %82, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %52
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %2, align 4
  br label %357

88:                                               ; preds = %52
  %89 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %90 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = and i32 %91, 7
  %93 = call i32 @BUG_ON(i32 %92)
  %94 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %95 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = call i64 @upper_32_bits(i32 %96)
  %98 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %99 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %103 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = add i64 %101, %104
  %106 = trunc i64 %105 to i32
  %107 = call i64 @upper_32_bits(i32 %106)
  %108 = icmp ne i64 %97, %107
  br i1 %108, label %109, label %117

109:                                              ; preds = %88
  %110 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %111 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %110, i32 0, i32 3
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 1
  %114 = call i32 @dev_err(i32* %113, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %11, align 4
  br label %338

117:                                              ; preds = %88
  %118 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %119 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %118, i32 0, i32 5
  %120 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %121 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %120, i32 0, i32 4
  %122 = load i32*, i32** %121, align 8
  %123 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %124 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = sext i32 %125 to i64
  %127 = call i32 @skge_ring_alloc(%struct.TYPE_4__* %119, i32* %122, i64 %126)
  store i32 %127, i32* %11, align 4
  %128 = load i32, i32* %11, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %117
  br label %338

131:                                              ; preds = %117
  %132 = load %struct.net_device*, %struct.net_device** %3, align 8
  %133 = call i32 @skge_rx_fill(%struct.net_device* %132)
  store i32 %133, i32* %11, align 4
  %134 = load i32, i32* %11, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %131
  br label %330

137:                                              ; preds = %131
  %138 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %139 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %138, i32 0, i32 6
  %140 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %141 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %140, i32 0, i32 4
  %142 = load i32*, i32** %141, align 8
  %143 = load i64, i64* %9, align 8
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  %145 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %146 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = sext i32 %147 to i64
  %149 = load i64, i64* %9, align 8
  %150 = add i64 %148, %149
  %151 = call i32 @skge_ring_alloc(%struct.TYPE_4__* %139, i32* %144, i64 %150)
  store i32 %151, i32* %11, align 4
  %152 = load i32, i32* %11, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %137
  br label %330

155:                                              ; preds = %137
  %156 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %157 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = icmp eq i32 %158, 1
  br i1 %159, label %160, label %185

160:                                              ; preds = %155
  %161 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %162 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %161, i32 0, i32 3
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @skge_intr, align 4
  %167 = load i32, i32* @IRQF_SHARED, align 4
  %168 = load %struct.net_device*, %struct.net_device** %3, align 8
  %169 = getelementptr inbounds %struct.net_device, %struct.net_device* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %172 = call i32 @request_irq(i32 %165, i32 %166, i32 %167, i32 %170, %struct.skge_hw* %171)
  store i32 %172, i32* %11, align 4
  %173 = load i32, i32* %11, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %184

175:                                              ; preds = %160
  %176 = load %struct.net_device*, %struct.net_device** %3, align 8
  %177 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %178 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %177, i32 0, i32 3
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* %11, align 4
  %183 = call i32 @netdev_err(%struct.net_device* %176, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %181, i32 %182)
  br label %324

184:                                              ; preds = %160
  br label %185

185:                                              ; preds = %184, %155
  %186 = load %struct.net_device*, %struct.net_device** %3, align 8
  %187 = call i32 @netif_carrier_off(%struct.net_device* %186)
  %188 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %189 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %188, i32 0, i32 6
  %190 = call i32 @spin_lock_bh(i32* %189)
  %191 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %192 = call i64 @is_genesis(%struct.skge_hw* %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %185
  %195 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %196 = load i32, i32* %6, align 4
  %197 = call i32 @genesis_mac_init(%struct.skge_hw* %195, i32 %196)
  br label %202

198:                                              ; preds = %185
  %199 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %200 = load i32, i32* %6, align 4
  %201 = call i32 @yukon_mac_init(%struct.skge_hw* %199, i32 %200)
  br label %202

202:                                              ; preds = %198, %194
  %203 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %204 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %203, i32 0, i32 6
  %205 = call i32 @spin_unlock_bh(i32* %204)
  %206 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %207 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %210 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = sub nsw i32 %208, %211
  %213 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %214 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = mul nsw i32 %215, 2
  %217 = sdiv i32 %212, %216
  store i32 %217, i32* %7, align 4
  %218 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %219 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* %7, align 4
  %222 = mul nsw i32 2, %221
  %223 = load i32, i32* %6, align 4
  %224 = mul nsw i32 %222, %223
  %225 = add nsw i32 %220, %224
  store i32 %225, i32* %8, align 4
  %226 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %227 = load i32*, i32** @rxqaddr, align 8
  %228 = load i32, i32* %6, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* %8, align 4
  %233 = load i32, i32* %7, align 4
  %234 = call i32 @skge_ramset(%struct.skge_hw* %226, i32 %231, i32 %232, i32 %233)
  %235 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %236 = load i32*, i32** @rxqaddr, align 8
  %237 = load i32, i32* %6, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %242 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %241, i32 0, i32 5
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 1
  %244 = load i64, i64* %243, align 8
  %245 = call i32 @skge_qset(%struct.skge_port* %235, i32 %240, i64 %244)
  %246 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %247 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %246, i32 0, i32 6
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 2
  %249 = load i64, i64* %248, align 8
  %250 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %251 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %250, i32 0, i32 6
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  %254 = icmp ne i64 %249, %253
  %255 = zext i1 %254 to i32
  %256 = call i32 @BUG_ON(i32 %255)
  %257 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %258 = load i32*, i32** @txqaddr, align 8
  %259 = load i32, i32* %6, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %258, i64 %260
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* %8, align 4
  %264 = load i32, i32* %7, align 4
  %265 = add nsw i32 %263, %264
  %266 = load i32, i32* %7, align 4
  %267 = call i32 @skge_ramset(%struct.skge_hw* %257, i32 %262, i32 %265, i32 %266)
  %268 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %269 = load i32*, i32** @txqaddr, align 8
  %270 = load i32, i32* %6, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %269, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %275 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %274, i32 0, i32 6
  %276 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %275, i32 0, i32 2
  %277 = load i64, i64* %276, align 8
  %278 = call i32 @skge_qset(%struct.skge_port* %268, i32 %273, i64 %277)
  %279 = call i32 (...) @wmb()
  %280 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %281 = load i32*, i32** @rxqaddr, align 8
  %282 = load i32, i32* %6, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %281, i64 %283
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* @Q_CSR, align 4
  %287 = call i32 @Q_ADDR(i32 %285, i32 %286)
  %288 = load i32, i32* @CSR_START, align 4
  %289 = load i32, i32* @CSR_IRQ_CL_F, align 4
  %290 = or i32 %288, %289
  %291 = call i32 @skge_write8(%struct.skge_hw* %280, i32 %287, i32 %290)
  %292 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %293 = load i32, i32* @LED_MODE_ON, align 4
  %294 = call i32 @skge_led(%struct.skge_port* %292, i32 %293)
  %295 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %296 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %295, i32 0, i32 4
  %297 = call i32 @spin_lock_irq(i32* %296)
  %298 = load i32*, i32** @portmask, align 8
  %299 = load i32, i32* %6, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32, i32* %298, i64 %300
  %302 = load i32, i32* %301, align 4
  %303 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %304 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %303, i32 0, i32 5
  %305 = load i32, i32* %304, align 4
  %306 = or i32 %305, %302
  store i32 %306, i32* %304, align 4
  %307 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %308 = load i32, i32* @B0_IMSK, align 4
  %309 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %310 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %309, i32 0, i32 5
  %311 = load i32, i32* %310, align 4
  %312 = call i32 @skge_write32(%struct.skge_hw* %307, i32 %308, i32 %311)
  %313 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %314 = load i32, i32* @B0_IMSK, align 4
  %315 = call i32 @skge_read32(%struct.skge_hw* %313, i32 %314)
  %316 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %317 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %316, i32 0, i32 4
  %318 = call i32 @spin_unlock_irq(i32* %317)
  %319 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %320 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %319, i32 0, i32 7
  %321 = call i32 @napi_enable(i32* %320)
  %322 = load %struct.net_device*, %struct.net_device** %3, align 8
  %323 = call i32 @skge_set_multicast(%struct.net_device* %322)
  store i32 0, i32* %2, align 4
  br label %357

324:                                              ; preds = %175
  %325 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %326 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %325, i32 0, i32 6
  %327 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %326, i32 0, i32 3
  %328 = load i32, i32* %327, align 8
  %329 = call i32 @kfree(i32 %328)
  br label %330

330:                                              ; preds = %324, %154, %136
  %331 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %332 = call i32 @skge_rx_clean(%struct.skge_port* %331)
  %333 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %334 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %333, i32 0, i32 5
  %335 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %334, i32 0, i32 3
  %336 = load i32, i32* %335, align 8
  %337 = call i32 @kfree(i32 %336)
  br label %338

338:                                              ; preds = %330, %130, %109
  %339 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %340 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %339, i32 0, i32 3
  %341 = load %struct.TYPE_5__*, %struct.TYPE_5__** %340, align 8
  %342 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %343 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %342, i32 0, i32 2
  %344 = load i64, i64* %343, align 8
  %345 = trunc i64 %344 to i32
  %346 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %347 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %346, i32 0, i32 4
  %348 = load i32*, i32** %347, align 8
  %349 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %350 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %349, i32 0, i32 3
  %351 = load i32, i32* %350, align 8
  %352 = sext i32 %351 to i64
  %353 = call i32 @pci_free_consistent(%struct.TYPE_5__* %341, i32 %345, i32* %348, i64 %352)
  %354 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %355 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %354, i32 0, i32 4
  store i32* null, i32** %355, align 8
  %356 = load i32, i32* %11, align 4
  store i32 %356, i32* %2, align 4
  br label %357

357:                                              ; preds = %338, %202, %85, %25
  %358 = load i32, i32* %2, align 4
  ret i32 %358
}

declare dso_local %struct.skge_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @netif_info(%struct.skge_port*, i32, i32, i8*) #1

declare dso_local i32* @pci_alloc_consistent(%struct.TYPE_5__*, i64, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @upper_32_bits(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @skge_ring_alloc(%struct.TYPE_4__*, i32*, i64) #1

declare dso_local i32 @skge_rx_fill(%struct.net_device*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.skge_hw*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32, i32) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @is_genesis(%struct.skge_hw*) #1

declare dso_local i32 @genesis_mac_init(%struct.skge_hw*, i32) #1

declare dso_local i32 @yukon_mac_init(%struct.skge_hw*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @skge_ramset(%struct.skge_hw*, i32, i32, i32) #1

declare dso_local i32 @skge_qset(%struct.skge_port*, i32, i64) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @skge_write8(%struct.skge_hw*, i32, i32) #1

declare dso_local i32 @Q_ADDR(i32, i32) #1

declare dso_local i32 @skge_led(%struct.skge_port*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @skge_write32(%struct.skge_hw*, i32, i32) #1

declare dso_local i32 @skge_read32(%struct.skge_hw*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @skge_set_multicast(%struct.net_device*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @skge_rx_clean(%struct.skge_port*) #1

declare dso_local i32 @pci_free_consistent(%struct.TYPE_5__*, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
