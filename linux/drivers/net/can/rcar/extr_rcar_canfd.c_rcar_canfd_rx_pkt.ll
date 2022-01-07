; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/rcar/extr_rcar_canfd.c_rcar_canfd_rx_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/rcar/extr_rcar_canfd.c_rcar_canfd_rx_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_canfd_channel = type { i32, %struct.TYPE_7__*, i32, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.canfd_frame = type { i32, i8*, i32 }
%struct.sk_buff = type { i32 }
%struct.can_frame = type { i32 }

@RCANFD_RFFIFO_IDX = common dso_local global i32 0, align 4
@CAN_CTRLMODE_FD = common dso_local global i32 0, align 4
@RCANFD_RFFDSTS_RFFDF = common dso_local global i32 0, align 4
@RCANFD_RFID_RFIDE = common dso_local global i32 0, align 4
@CAN_EFF_MASK = common dso_local global i32 0, align 4
@CAN_EFF_FLAG = common dso_local global i32 0, align 4
@CAN_SFF_MASK = common dso_local global i32 0, align 4
@RCANFD_RFFDSTS_RFESI = common dso_local global i32 0, align 4
@CANFD_ESI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"ESI Error\0A\00", align 1
@RCANFD_RFID_RFRTR = common dso_local global i32 0, align 4
@CAN_RTR_FLAG = common dso_local global i32 0, align 4
@RCANFD_RFFDSTS_RFBRS = common dso_local global i32 0, align 4
@CANFD_BRS = common dso_local global i32 0, align 4
@CAN_LED_EVENT_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcar_canfd_channel*)* @rcar_canfd_rx_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_canfd_rx_pkt(%struct.rcar_canfd_channel* %0) #0 {
  %2 = alloca %struct.rcar_canfd_channel*, align 8
  %3 = alloca %struct.net_device_stats*, align 8
  %4 = alloca %struct.canfd_frame*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rcar_canfd_channel* %0, %struct.rcar_canfd_channel** %2, align 8
  %11 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %2, align 8
  %12 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %11, i32 0, i32 1
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  store %struct.net_device_stats* %14, %struct.net_device_stats** %3, align 8
  store i32 0, i32* %6, align 4
  %15 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %2, align 8
  %16 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @RCANFD_RFFIFO_IDX, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %10, align 4
  %21 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %2, align 8
  %22 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @CAN_CTRLMODE_FD, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %63

28:                                               ; preds = %1
  %29 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %2, align 8
  %30 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @RCANFD_F_RFID(i32 %32)
  %34 = call i32 @rcar_canfd_read(i32 %31, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %2, align 8
  %36 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @RCANFD_F_RFPTR(i32 %38)
  %40 = call i32 @rcar_canfd_read(i32 %37, i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %2, align 8
  %42 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @RCANFD_F_RFFDSTS(i32 %44)
  %46 = call i32 @rcar_canfd_read(i32 %43, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @RCANFD_RFFDSTS_RFFDF, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %28
  %52 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %2, align 8
  %53 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %52, i32 0, i32 1
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = call %struct.sk_buff* @alloc_canfd_skb(%struct.TYPE_7__* %54, %struct.canfd_frame** %4)
  store %struct.sk_buff* %55, %struct.sk_buff** %5, align 8
  br label %62

56:                                               ; preds = %28
  %57 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %2, align 8
  %58 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %57, i32 0, i32 1
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = bitcast %struct.canfd_frame** %4 to %struct.can_frame**
  %61 = call %struct.sk_buff* @alloc_can_skb(%struct.TYPE_7__* %59, %struct.can_frame** %60)
  store %struct.sk_buff* %61, %struct.sk_buff** %5, align 8
  br label %62

62:                                               ; preds = %56, %51
  br label %81

63:                                               ; preds = %1
  %64 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %2, align 8
  %65 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @RCANFD_C_RFID(i32 %67)
  %69 = call i32 @rcar_canfd_read(i32 %66, i32 %68)
  store i32 %69, i32* %7, align 4
  %70 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %2, align 8
  %71 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @RCANFD_C_RFPTR(i32 %73)
  %75 = call i32 @rcar_canfd_read(i32 %72, i32 %74)
  store i32 %75, i32* %8, align 4
  %76 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %2, align 8
  %77 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %76, i32 0, i32 1
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = bitcast %struct.canfd_frame** %4 to %struct.can_frame**
  %80 = call %struct.sk_buff* @alloc_can_skb(%struct.TYPE_7__* %78, %struct.can_frame** %79)
  store %struct.sk_buff* %80, %struct.sk_buff** %5, align 8
  br label %81

81:                                               ; preds = %63, %62
  %82 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %83 = icmp ne %struct.sk_buff* %82, null
  br i1 %83, label %89, label %84

84:                                               ; preds = %81
  %85 = load %struct.net_device_stats*, %struct.net_device_stats** %3, align 8
  %86 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  br label %232

89:                                               ; preds = %81
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @RCANFD_RFID_RFIDE, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %89
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @CAN_EFF_MASK, align 4
  %97 = and i32 %95, %96
  %98 = load i32, i32* @CAN_EFF_FLAG, align 4
  %99 = or i32 %97, %98
  %100 = load %struct.canfd_frame*, %struct.canfd_frame** %4, align 8
  %101 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  br label %108

102:                                              ; preds = %89
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @CAN_SFF_MASK, align 4
  %105 = and i32 %103, %104
  %106 = load %struct.canfd_frame*, %struct.canfd_frame** %4, align 8
  %107 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  br label %108

108:                                              ; preds = %102, %94
  %109 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %2, align 8
  %110 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @CAN_CTRLMODE_FD, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %182

116:                                              ; preds = %108
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* @RCANFD_RFFDSTS_RFFDF, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %116
  %122 = load i32, i32* %8, align 4
  %123 = call i32 @RCANFD_RFPTR_RFDLC(i32 %122)
  %124 = call i8* @can_dlc2len(i32 %123)
  %125 = load %struct.canfd_frame*, %struct.canfd_frame** %4, align 8
  %126 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %125, i32 0, i32 1
  store i8* %124, i8** %126, align 8
  br label %133

127:                                              ; preds = %116
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @RCANFD_RFPTR_RFDLC(i32 %128)
  %130 = call i8* @get_can_dlc(i32 %129)
  %131 = load %struct.canfd_frame*, %struct.canfd_frame** %4, align 8
  %132 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %131, i32 0, i32 1
  store i8* %130, i8** %132, align 8
  br label %133

133:                                              ; preds = %127, %121
  %134 = load i32, i32* %6, align 4
  %135 = load i32, i32* @RCANFD_RFFDSTS_RFESI, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %148

138:                                              ; preds = %133
  %139 = load i32, i32* @CANFD_ESI, align 4
  %140 = load %struct.canfd_frame*, %struct.canfd_frame** %4, align 8
  %141 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 8
  %144 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %2, align 8
  %145 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %144, i32 0, i32 1
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %145, align 8
  %147 = call i32 @netdev_dbg(%struct.TYPE_7__* %146, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %148

148:                                              ; preds = %138, %133
  %149 = load i32, i32* %6, align 4
  %150 = load i32, i32* @RCANFD_RFFDSTS_RFFDF, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %164, label %153

153:                                              ; preds = %148
  %154 = load i32, i32* %7, align 4
  %155 = load i32, i32* @RCANFD_RFID_RFRTR, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %153
  %159 = load i32, i32* @CAN_RTR_FLAG, align 4
  %160 = load %struct.canfd_frame*, %struct.canfd_frame** %4, align 8
  %161 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = or i32 %162, %159
  store i32 %163, i32* %161, align 8
  br label %181

164:                                              ; preds = %153, %148
  %165 = load i32, i32* %6, align 4
  %166 = load i32, i32* @RCANFD_RFFDSTS_RFBRS, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %164
  %170 = load i32, i32* @CANFD_BRS, align 4
  %171 = load %struct.canfd_frame*, %struct.canfd_frame** %4, align 8
  %172 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = or i32 %173, %170
  store i32 %174, i32* %172, align 8
  br label %175

175:                                              ; preds = %169, %164
  %176 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %2, align 8
  %177 = load %struct.canfd_frame*, %struct.canfd_frame** %4, align 8
  %178 = load i32, i32* %10, align 4
  %179 = call i32 @RCANFD_F_RFDF(i32 %178, i32 0)
  %180 = call i32 @rcar_canfd_get_data(%struct.rcar_canfd_channel* %176, %struct.canfd_frame* %177, i32 %179)
  br label %181

181:                                              ; preds = %175, %158
  br label %205

182:                                              ; preds = %108
  %183 = load i32, i32* %8, align 4
  %184 = call i32 @RCANFD_RFPTR_RFDLC(i32 %183)
  %185 = call i8* @get_can_dlc(i32 %184)
  %186 = load %struct.canfd_frame*, %struct.canfd_frame** %4, align 8
  %187 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %186, i32 0, i32 1
  store i8* %185, i8** %187, align 8
  %188 = load i32, i32* %7, align 4
  %189 = load i32, i32* @RCANFD_RFID_RFRTR, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %182
  %193 = load i32, i32* @CAN_RTR_FLAG, align 4
  %194 = load %struct.canfd_frame*, %struct.canfd_frame** %4, align 8
  %195 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = or i32 %196, %193
  store i32 %197, i32* %195, align 8
  br label %204

198:                                              ; preds = %182
  %199 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %2, align 8
  %200 = load %struct.canfd_frame*, %struct.canfd_frame** %4, align 8
  %201 = load i32, i32* %10, align 4
  %202 = call i32 @RCANFD_C_RFDF(i32 %201, i32 0)
  %203 = call i32 @rcar_canfd_get_data(%struct.rcar_canfd_channel* %199, %struct.canfd_frame* %200, i32 %202)
  br label %204

204:                                              ; preds = %198, %192
  br label %205

205:                                              ; preds = %204, %181
  %206 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %2, align 8
  %207 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* %10, align 4
  %210 = call i32 @RCANFD_RFPCTR(i32 %209)
  %211 = call i32 @rcar_canfd_write(i32 %208, i32 %210, i32 255)
  %212 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %2, align 8
  %213 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %212, i32 0, i32 1
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %213, align 8
  %215 = load i32, i32* @CAN_LED_EVENT_RX, align 4
  %216 = call i32 @can_led_event(%struct.TYPE_7__* %214, i32 %215)
  %217 = load %struct.canfd_frame*, %struct.canfd_frame** %4, align 8
  %218 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %217, i32 0, i32 1
  %219 = load i8*, i8** %218, align 8
  %220 = load %struct.net_device_stats*, %struct.net_device_stats** %3, align 8
  %221 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr i8, i8* %219, i64 %223
  %225 = ptrtoint i8* %224 to i32
  store i32 %225, i32* %221, align 4
  %226 = load %struct.net_device_stats*, %struct.net_device_stats** %3, align 8
  %227 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %227, align 4
  %230 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %231 = call i32 @netif_receive_skb(%struct.sk_buff* %230)
  br label %232

232:                                              ; preds = %205, %84
  ret void
}

declare dso_local i32 @rcar_canfd_read(i32, i32) #1

declare dso_local i32 @RCANFD_F_RFID(i32) #1

declare dso_local i32 @RCANFD_F_RFPTR(i32) #1

declare dso_local i32 @RCANFD_F_RFFDSTS(i32) #1

declare dso_local %struct.sk_buff* @alloc_canfd_skb(%struct.TYPE_7__*, %struct.canfd_frame**) #1

declare dso_local %struct.sk_buff* @alloc_can_skb(%struct.TYPE_7__*, %struct.can_frame**) #1

declare dso_local i32 @RCANFD_C_RFID(i32) #1

declare dso_local i32 @RCANFD_C_RFPTR(i32) #1

declare dso_local i8* @can_dlc2len(i32) #1

declare dso_local i32 @RCANFD_RFPTR_RFDLC(i32) #1

declare dso_local i8* @get_can_dlc(i32) #1

declare dso_local i32 @netdev_dbg(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @rcar_canfd_get_data(%struct.rcar_canfd_channel*, %struct.canfd_frame*, i32) #1

declare dso_local i32 @RCANFD_F_RFDF(i32, i32) #1

declare dso_local i32 @RCANFD_C_RFDF(i32, i32) #1

declare dso_local i32 @rcar_canfd_write(i32, i32, i32) #1

declare dso_local i32 @RCANFD_RFPCTR(i32) #1

declare dso_local i32 @can_led_event(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
