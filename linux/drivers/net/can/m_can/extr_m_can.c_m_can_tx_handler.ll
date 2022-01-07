; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_m_can.c_m_can_tx_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_m_can.c_m_can_tx_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_can_classdev = type { i32, i64, %struct.TYPE_3__, %struct.sk_buff*, %struct.net_device* }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i64 }
%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.canfd_frame = type { i32, i32, i32, i64 }

@CAN_EFF_FLAG = common dso_local global i32 0, align 4
@CAN_EFF_MASK = common dso_local global i32 0, align 4
@TX_BUF_XTD = common dso_local global i32 0, align 4
@CAN_SFF_MASK = common dso_local global i32 0, align 4
@CAN_RTR_FLAG = common dso_local global i32 0, align 4
@TX_BUF_RTR = common dso_local global i32 0, align 4
@M_CAN_FIFO_ID = common dso_local global i32 0, align 4
@M_CAN_FIFO_DLC = common dso_local global i32 0, align 4
@CAN_CTRLMODE_FD = common dso_local global i32 0, align 4
@M_CAN_CCCR = common dso_local global i32 0, align 4
@CCCR_CMR_MASK = common dso_local global i32 0, align 4
@CCCR_CMR_SHIFT = common dso_local global i32 0, align 4
@CANFD_BRS = common dso_local global i32 0, align 4
@CCCR_CMR_CANFD_BRS = common dso_local global i32 0, align 4
@CCCR_CMR_CANFD = common dso_local global i32 0, align 4
@CCCR_CMR_CAN = common dso_local global i32 0, align 4
@M_CAN_TXBTIE = common dso_local global i32 0, align 4
@M_CAN_TXBAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"TX queue active although FIFO is full.\00", align 1
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@M_CAN_TXFQS = common dso_local global i32 0, align 4
@TXFQS_TFQPI_MASK = common dso_local global i32 0, align 4
@TXFQS_TFQPI_SHIFT = common dso_local global i32 0, align 4
@TX_BUF_FDF = common dso_local global i32 0, align 4
@TX_BUF_BRS = common dso_local global i32 0, align 4
@TX_BUF_MM_SHIFT = common dso_local global i32 0, align 4
@TX_BUF_MM_MASK = common dso_local global i32 0, align 4
@TX_BUF_EFC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.m_can_classdev*)* @m_can_tx_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m_can_tx_handler(%struct.m_can_classdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.m_can_classdev*, align 8
  %4 = alloca %struct.canfd_frame*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.m_can_classdev* %0, %struct.m_can_classdev** %3, align 8
  %12 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %13 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %12, i32 0, i32 3
  %14 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.canfd_frame*
  store %struct.canfd_frame* %17, %struct.canfd_frame** %4, align 8
  %18 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %19 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %18, i32 0, i32 4
  %20 = load %struct.net_device*, %struct.net_device** %19, align 8
  store %struct.net_device* %20, %struct.net_device** %5, align 8
  %21 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %22 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %21, i32 0, i32 3
  %23 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  store %struct.sk_buff* %23, %struct.sk_buff** %6, align 8
  %24 = load %struct.canfd_frame*, %struct.canfd_frame** %4, align 8
  %25 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @CAN_EFF_FLAG, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %1
  %31 = load %struct.canfd_frame*, %struct.canfd_frame** %4, align 8
  %32 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @CAN_EFF_MASK, align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* @TX_BUF_XTD, align 4
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %7, align 4
  br label %46

39:                                               ; preds = %1
  %40 = load %struct.canfd_frame*, %struct.canfd_frame** %4, align 8
  %41 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @CAN_SFF_MASK, align 4
  %44 = and i32 %42, %43
  %45 = shl i32 %44, 18
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %39, %30
  %47 = load %struct.canfd_frame*, %struct.canfd_frame** %4, align 8
  %48 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @CAN_RTR_FLAG, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load i32, i32* @TX_BUF_RTR, align 4
  %55 = load i32, i32* %7, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %53, %46
  %58 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %59 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %60, 30
  br i1 %61, label %62, label %162

62:                                               ; preds = %57
  %63 = load %struct.net_device*, %struct.net_device** %5, align 8
  %64 = call i32 @netif_stop_queue(%struct.net_device* %63)
  %65 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %66 = load i32, i32* @M_CAN_FIFO_ID, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @m_can_fifo_write(%struct.m_can_classdev* %65, i32 0, i32 %66, i32 %67)
  %69 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %70 = load i32, i32* @M_CAN_FIFO_DLC, align 4
  %71 = load %struct.canfd_frame*, %struct.canfd_frame** %4, align 8
  %72 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @can_len2dlc(i32 %73)
  %75 = shl i32 %74, 16
  %76 = call i32 @m_can_fifo_write(%struct.m_can_classdev* %69, i32 0, i32 %70, i32 %75)
  store i32 0, i32* %10, align 4
  br label %77

77:                                               ; preds = %97, %62
  %78 = load i32, i32* %10, align 4
  %79 = load %struct.canfd_frame*, %struct.canfd_frame** %4, align 8
  %80 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %100

83:                                               ; preds = %77
  %84 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sdiv i32 %85, 4
  %87 = call i32 @M_CAN_FIFO_DATA(i32 %86)
  %88 = load %struct.canfd_frame*, %struct.canfd_frame** %4, align 8
  %89 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %90, %92
  %94 = inttoptr i64 %93 to i32*
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @m_can_fifo_write(%struct.m_can_classdev* %84, i32 0, i32 %87, i32 %95)
  br label %97

97:                                               ; preds = %83
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, 4
  store i32 %99, i32* %10, align 4
  br label %77

100:                                              ; preds = %77
  %101 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %102 = load %struct.net_device*, %struct.net_device** %5, align 8
  %103 = call i32 @can_put_echo_skb(%struct.sk_buff* %101, %struct.net_device* %102, i32 0)
  %104 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %105 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @CAN_CTRLMODE_FD, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %155

111:                                              ; preds = %100
  %112 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %113 = load i32, i32* @M_CAN_CCCR, align 4
  %114 = call i32 @m_can_read(%struct.m_can_classdev* %112, i32 %113)
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* @CCCR_CMR_MASK, align 4
  %116 = load i32, i32* @CCCR_CMR_SHIFT, align 4
  %117 = shl i32 %115, %116
  %118 = xor i32 %117, -1
  %119 = load i32, i32* %8, align 4
  %120 = and i32 %119, %118
  store i32 %120, i32* %8, align 4
  %121 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %122 = call i64 @can_is_canfd_skb(%struct.sk_buff* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %144

124:                                              ; preds = %111
  %125 = load %struct.canfd_frame*, %struct.canfd_frame** %4, align 8
  %126 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @CANFD_BRS, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %124
  %132 = load i32, i32* @CCCR_CMR_CANFD_BRS, align 4
  %133 = load i32, i32* @CCCR_CMR_SHIFT, align 4
  %134 = shl i32 %132, %133
  %135 = load i32, i32* %8, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %8, align 4
  br label %143

137:                                              ; preds = %124
  %138 = load i32, i32* @CCCR_CMR_CANFD, align 4
  %139 = load i32, i32* @CCCR_CMR_SHIFT, align 4
  %140 = shl i32 %138, %139
  %141 = load i32, i32* %8, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %8, align 4
  br label %143

143:                                              ; preds = %137, %131
  br label %150

144:                                              ; preds = %111
  %145 = load i32, i32* @CCCR_CMR_CAN, align 4
  %146 = load i32, i32* @CCCR_CMR_SHIFT, align 4
  %147 = shl i32 %145, %146
  %148 = load i32, i32* %8, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %8, align 4
  br label %150

150:                                              ; preds = %144, %143
  %151 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %152 = load i32, i32* @M_CAN_CCCR, align 4
  %153 = load i32, i32* %8, align 4
  %154 = call i32 @m_can_write(%struct.m_can_classdev* %151, i32 %152, i32 %153)
  br label %155

155:                                              ; preds = %150, %100
  %156 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %157 = load i32, i32* @M_CAN_TXBTIE, align 4
  %158 = call i32 @m_can_write(%struct.m_can_classdev* %156, i32 %157, i32 1)
  %159 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %160 = load i32, i32* @M_CAN_TXBAR, align 4
  %161 = call i32 @m_can_write(%struct.m_can_classdev* %159, i32 %160, i32 1)
  br label %283

162:                                              ; preds = %57
  %163 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %164 = call i64 @m_can_tx_fifo_full(%struct.m_can_classdev* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %186

166:                                              ; preds = %162
  %167 = load %struct.net_device*, %struct.net_device** %5, align 8
  %168 = call i32 @netif_stop_queue(%struct.net_device* %167)
  %169 = load %struct.net_device*, %struct.net_device** %5, align 8
  %170 = call i32 @netdev_warn(%struct.net_device* %169, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %171 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %172 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %184

175:                                              ; preds = %166
  %176 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %177 = call i32 @kfree_skb(%struct.sk_buff* %176)
  %178 = load %struct.net_device*, %struct.net_device** %5, align 8
  %179 = getelementptr inbounds %struct.net_device, %struct.net_device* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %180, align 4
  %183 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %183, i32* %2, align 4
  br label %285

184:                                              ; preds = %166
  %185 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %185, i32* %2, align 4
  br label %285

186:                                              ; preds = %162
  %187 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %188 = load i32, i32* @M_CAN_TXFQS, align 4
  %189 = call i32 @m_can_read(%struct.m_can_classdev* %187, i32 %188)
  %190 = load i32, i32* @TXFQS_TFQPI_MASK, align 4
  %191 = and i32 %189, %190
  %192 = load i32, i32* @TXFQS_TFQPI_SHIFT, align 4
  %193 = ashr i32 %191, %192
  store i32 %193, i32* %11, align 4
  %194 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %195 = load i32, i32* %11, align 4
  %196 = load i32, i32* @M_CAN_FIFO_ID, align 4
  %197 = load i32, i32* %7, align 4
  %198 = call i32 @m_can_fifo_write(%struct.m_can_classdev* %194, i32 %195, i32 %196, i32 %197)
  store i32 0, i32* %9, align 4
  %199 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %200 = call i64 @can_is_canfd_skb(%struct.sk_buff* %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %217

202:                                              ; preds = %186
  %203 = load i32, i32* @TX_BUF_FDF, align 4
  %204 = load i32, i32* %9, align 4
  %205 = or i32 %204, %203
  store i32 %205, i32* %9, align 4
  %206 = load %struct.canfd_frame*, %struct.canfd_frame** %4, align 8
  %207 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @CANFD_BRS, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %216

212:                                              ; preds = %202
  %213 = load i32, i32* @TX_BUF_BRS, align 4
  %214 = load i32, i32* %9, align 4
  %215 = or i32 %214, %213
  store i32 %215, i32* %9, align 4
  br label %216

216:                                              ; preds = %212, %202
  br label %217

217:                                              ; preds = %216, %186
  %218 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %219 = load i32, i32* %11, align 4
  %220 = load i32, i32* @M_CAN_FIFO_DLC, align 4
  %221 = load i32, i32* %11, align 4
  %222 = load i32, i32* @TX_BUF_MM_SHIFT, align 4
  %223 = shl i32 %221, %222
  %224 = load i32, i32* @TX_BUF_MM_MASK, align 4
  %225 = and i32 %223, %224
  %226 = load %struct.canfd_frame*, %struct.canfd_frame** %4, align 8
  %227 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @can_len2dlc(i32 %228)
  %230 = shl i32 %229, 16
  %231 = or i32 %225, %230
  %232 = load i32, i32* %9, align 4
  %233 = or i32 %231, %232
  %234 = load i32, i32* @TX_BUF_EFC, align 4
  %235 = or i32 %233, %234
  %236 = call i32 @m_can_fifo_write(%struct.m_can_classdev* %218, i32 %219, i32 %220, i32 %235)
  store i32 0, i32* %10, align 4
  br label %237

237:                                              ; preds = %258, %217
  %238 = load i32, i32* %10, align 4
  %239 = load %struct.canfd_frame*, %struct.canfd_frame** %4, align 8
  %240 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = icmp slt i32 %238, %241
  br i1 %242, label %243, label %261

243:                                              ; preds = %237
  %244 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %245 = load i32, i32* %11, align 4
  %246 = load i32, i32* %10, align 4
  %247 = sdiv i32 %246, 4
  %248 = call i32 @M_CAN_FIFO_DATA(i32 %247)
  %249 = load %struct.canfd_frame*, %struct.canfd_frame** %4, align 8
  %250 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %249, i32 0, i32 3
  %251 = load i64, i64* %250, align 8
  %252 = load i32, i32* %10, align 4
  %253 = sext i32 %252 to i64
  %254 = add nsw i64 %251, %253
  %255 = inttoptr i64 %254 to i32*
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @m_can_fifo_write(%struct.m_can_classdev* %244, i32 %245, i32 %248, i32 %256)
  br label %258

258:                                              ; preds = %243
  %259 = load i32, i32* %10, align 4
  %260 = add nsw i32 %259, 4
  store i32 %260, i32* %10, align 4
  br label %237

261:                                              ; preds = %237
  %262 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %263 = load %struct.net_device*, %struct.net_device** %5, align 8
  %264 = load i32, i32* %11, align 4
  %265 = call i32 @can_put_echo_skb(%struct.sk_buff* %262, %struct.net_device* %263, i32 %264)
  %266 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %267 = load i32, i32* @M_CAN_TXBAR, align 4
  %268 = load i32, i32* %11, align 4
  %269 = shl i32 1, %268
  %270 = call i32 @m_can_write(%struct.m_can_classdev* %266, i32 %267, i32 %269)
  %271 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %272 = call i64 @m_can_tx_fifo_full(%struct.m_can_classdev* %271)
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %279, label %274

274:                                              ; preds = %261
  %275 = load %struct.net_device*, %struct.net_device** %5, align 8
  %276 = load i32, i32* %11, align 4
  %277 = call i64 @m_can_next_echo_skb_occupied(%struct.net_device* %275, i32 %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %282

279:                                              ; preds = %274, %261
  %280 = load %struct.net_device*, %struct.net_device** %5, align 8
  %281 = call i32 @netif_stop_queue(%struct.net_device* %280)
  br label %282

282:                                              ; preds = %279, %274
  br label %283

283:                                              ; preds = %282, %155
  %284 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %284, i32* %2, align 4
  br label %285

285:                                              ; preds = %283, %184, %175
  %286 = load i32, i32* %2, align 4
  ret i32 %286
}

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @m_can_fifo_write(%struct.m_can_classdev*, i32, i32, i32) #1

declare dso_local i32 @can_len2dlc(i32) #1

declare dso_local i32 @M_CAN_FIFO_DATA(i32) #1

declare dso_local i32 @can_put_echo_skb(%struct.sk_buff*, %struct.net_device*, i32) #1

declare dso_local i32 @m_can_read(%struct.m_can_classdev*, i32) #1

declare dso_local i64 @can_is_canfd_skb(%struct.sk_buff*) #1

declare dso_local i32 @m_can_write(%struct.m_can_classdev*, i32, i32) #1

declare dso_local i64 @m_can_tx_fifo_full(%struct.m_can_classdev*) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @m_can_next_echo_skb_occupied(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
