; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_leaf.c_kvaser_usb_leaf_rx_can_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_leaf.c_kvaser_usb_leaf_rx_can_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_usb = type { i64, %struct.TYPE_20__, %struct.kvaser_usb_net_priv**, %struct.TYPE_15__* }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.kvaser_usb_net_priv = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.kvaser_cmd = type { i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_23__, %struct.TYPE_22__, %struct.TYPE_18__ }
%struct.TYPE_23__ = type { i64, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__, %struct.TYPE_16__ }
%struct.TYPE_21__ = type { i64, i32, i64, i32 }
%struct.TYPE_16__ = type { i64* }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64* }
%struct.can_frame = type { i32, i8*, i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Invalid channel number (%d)\0A\00", align 1
@MSG_FLAG_ERROR_FRAME = common dso_local global i32 0, align 4
@CMD_LEAF_LOG_MESSAGE = common dso_local global i64 0, align 8
@MSG_FLAG_NERR = common dso_local global i32 0, align 4
@MSG_FLAG_OVERRUN = common dso_local global i32 0, align 4
@MSG_FLAG_REMOTE_FRAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Unhandled frame (flags: 0x%02x)\0A\00", align 1
@KVASER_EXTENDED_FRAME = common dso_local global i32 0, align 4
@CAN_EFF_MASK = common dso_local global i32 0, align 4
@CAN_EFF_FLAG = common dso_local global i32 0, align 4
@CAN_SFF_MASK = common dso_local global i32 0, align 4
@CAN_RTR_FLAG = common dso_local global i32 0, align 4
@CMD_RX_EXT_MESSAGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvaser_usb*, %struct.kvaser_cmd*)* @kvaser_usb_leaf_rx_can_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvaser_usb_leaf_rx_can_msg(%struct.kvaser_usb* %0, %struct.kvaser_cmd* %1) #0 {
  %3 = alloca %struct.kvaser_usb*, align 8
  %4 = alloca %struct.kvaser_cmd*, align 8
  %5 = alloca %struct.kvaser_usb_net_priv*, align 8
  %6 = alloca %struct.can_frame*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.net_device_stats*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  store %struct.kvaser_usb* %0, %struct.kvaser_usb** %3, align 8
  store %struct.kvaser_cmd* %1, %struct.kvaser_cmd** %4, align 8
  %11 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %12 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %9, align 8
  store i64* null, i64** %10, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %18 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp uge i64 %16, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %23 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %22, i32 0, i32 3
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @dev_err(i32* %25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %26)
  br label %316

28:                                               ; preds = %2
  %29 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %30 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %29, i32 0, i32 2
  %31 = load %struct.kvaser_usb_net_priv**, %struct.kvaser_usb_net_priv*** %30, align 8
  %32 = load i64, i64* %9, align 8
  %33 = getelementptr inbounds %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %31, i64 %32
  %34 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %33, align 8
  store %struct.kvaser_usb_net_priv* %34, %struct.kvaser_usb_net_priv** %5, align 8
  %35 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %5, align 8
  %36 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %35, i32 0, i32 0
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  store %struct.net_device_stats* %38, %struct.net_device_stats** %8, align 8
  %39 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %40 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @MSG_FLAG_ERROR_FRAME, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %28
  %48 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %49 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 129
  br i1 %53, label %54, label %64

54:                                               ; preds = %47
  %55 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %56 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @CMD_LEAF_LOG_MESSAGE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %62 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %63 = call i32 @kvaser_usb_leaf_leaf_rx_error(%struct.kvaser_usb* %61, %struct.kvaser_cmd* %62)
  br label %316

64:                                               ; preds = %54, %47, %28
  %65 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %66 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @MSG_FLAG_ERROR_FRAME, align 4
  %71 = load i32, i32* @MSG_FLAG_NERR, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @MSG_FLAG_OVERRUN, align 4
  %74 = or i32 %72, %73
  %75 = and i32 %69, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %64
  %78 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %5, align 8
  %79 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %80 = call i32 @kvaser_usb_leaf_rx_can_err(%struct.kvaser_usb_net_priv* %78, %struct.kvaser_cmd* %79)
  br label %316

81:                                               ; preds = %64
  %82 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %83 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @MSG_FLAG_REMOTE_FRAME, align 4
  %88 = xor i32 %87, -1
  %89 = and i32 %86, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %81
  %92 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %5, align 8
  %93 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %92, i32 0, i32 0
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %93, align 8
  %95 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %96 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @netdev_warn(%struct.TYPE_14__* %94, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %99)
  br label %316

101:                                              ; preds = %81
  br label %102

102:                                              ; preds = %101
  br label %103

103:                                              ; preds = %102
  %104 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %105 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  switch i32 %108, label %123 [
    i32 129, label %109
    i32 128, label %116
  ]

109:                                              ; preds = %103
  %110 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %111 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = load i64*, i64** %114, align 8
  store i64* %115, i64** %10, align 8
  br label %123

116:                                              ; preds = %103
  %117 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %118 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 0
  %122 = load i64*, i64** %121, align 8
  store i64* %122, i64** %10, align 8
  br label %123

123:                                              ; preds = %103, %116, %109
  %124 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %5, align 8
  %125 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %124, i32 0, i32 0
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %125, align 8
  %127 = call %struct.sk_buff* @alloc_can_skb(%struct.TYPE_14__* %126, %struct.can_frame** %6)
  store %struct.sk_buff* %127, %struct.sk_buff** %7, align 8
  %128 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %129 = icmp ne %struct.sk_buff* %128, null
  br i1 %129, label %135, label %130

130:                                              ; preds = %123
  %131 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %132 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 4
  br label %316

135:                                              ; preds = %123
  %136 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %137 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp eq i32 %140, 129
  br i1 %141, label %142, label %217

142:                                              ; preds = %135
  %143 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %144 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @CMD_LEAF_LOG_MESSAGE, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %217

148:                                              ; preds = %142
  %149 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %150 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @le32_to_cpu(i32 %154)
  %156 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %157 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %156, i32 0, i32 0
  store i32 %155, i32* %157, align 8
  %158 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %159 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @KVASER_EXTENDED_FRAME, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %172

164:                                              ; preds = %148
  %165 = load i32, i32* @CAN_EFF_MASK, align 4
  %166 = load i32, i32* @CAN_EFF_FLAG, align 4
  %167 = or i32 %165, %166
  %168 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %169 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = and i32 %170, %167
  store i32 %171, i32* %169, align 8
  br label %178

172:                                              ; preds = %148
  %173 = load i32, i32* @CAN_SFF_MASK, align 4
  %174 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %175 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = and i32 %176, %173
  store i32 %177, i32* %175, align 8
  br label %178

178:                                              ; preds = %172, %164
  %179 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %180 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = call i8* @get_can_dlc(i64 %184)
  %186 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %187 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %186, i32 0, i32 1
  store i8* %185, i8** %187, align 8
  %188 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %189 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @MSG_FLAG_REMOTE_FRAME, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %203

197:                                              ; preds = %178
  %198 = load i32, i32* @CAN_RTR_FLAG, align 4
  %199 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %200 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = or i32 %201, %198
  store i32 %202, i32* %200, align 8
  br label %216

203:                                              ; preds = %178
  %204 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %205 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %208 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %210, i32 0, i32 2
  %212 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %213 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %212, i32 0, i32 1
  %214 = load i8*, i8** %213, align 8
  %215 = call i32 @memcpy(i32 %206, i64* %211, i8* %214)
  br label %216

216:                                              ; preds = %203, %197
  br label %300

217:                                              ; preds = %142, %135
  %218 = load i64*, i64** %10, align 8
  %219 = getelementptr inbounds i64, i64* %218, i64 0
  %220 = load i64, i64* %219, align 8
  %221 = and i64 %220, 31
  %222 = shl i64 %221, 6
  %223 = load i64*, i64** %10, align 8
  %224 = getelementptr inbounds i64, i64* %223, i64 1
  %225 = load i64, i64* %224, align 8
  %226 = and i64 %225, 63
  %227 = or i64 %222, %226
  %228 = trunc i64 %227 to i32
  %229 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %230 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %229, i32 0, i32 0
  store i32 %228, i32* %230, align 8
  %231 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %232 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* @CMD_RX_EXT_MESSAGE, align 8
  %235 = icmp eq i64 %233, %234
  br i1 %235, label %236, label %268

236:                                              ; preds = %217
  %237 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %238 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = shl i32 %239, 18
  store i32 %240, i32* %238, align 8
  %241 = load i64*, i64** %10, align 8
  %242 = getelementptr inbounds i64, i64* %241, i64 2
  %243 = load i64, i64* %242, align 8
  %244 = and i64 %243, 15
  %245 = shl i64 %244, 14
  %246 = load i64*, i64** %10, align 8
  %247 = getelementptr inbounds i64, i64* %246, i64 3
  %248 = load i64, i64* %247, align 8
  %249 = and i64 %248, 255
  %250 = shl i64 %249, 6
  %251 = or i64 %245, %250
  %252 = load i64*, i64** %10, align 8
  %253 = getelementptr inbounds i64, i64* %252, i64 4
  %254 = load i64, i64* %253, align 8
  %255 = and i64 %254, 63
  %256 = or i64 %251, %255
  %257 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %258 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = sext i32 %259 to i64
  %261 = or i64 %260, %256
  %262 = trunc i64 %261 to i32
  store i32 %262, i32* %258, align 8
  %263 = load i32, i32* @CAN_EFF_FLAG, align 4
  %264 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %265 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = or i32 %266, %263
  store i32 %267, i32* %265, align 8
  br label %268

268:                                              ; preds = %236, %217
  %269 = load i64*, i64** %10, align 8
  %270 = getelementptr inbounds i64, i64* %269, i64 5
  %271 = load i64, i64* %270, align 8
  %272 = call i8* @get_can_dlc(i64 %271)
  %273 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %274 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %273, i32 0, i32 1
  store i8* %272, i8** %274, align 8
  %275 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %276 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %275, i32 0, i32 1
  %277 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 8
  %280 = load i32, i32* @MSG_FLAG_REMOTE_FRAME, align 4
  %281 = and i32 %279, %280
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %289

283:                                              ; preds = %268
  %284 = load i32, i32* @CAN_RTR_FLAG, align 4
  %285 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %286 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = or i32 %287, %284
  store i32 %288, i32* %286, align 8
  br label %299

289:                                              ; preds = %268
  %290 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %291 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %290, i32 0, i32 2
  %292 = load i32, i32* %291, align 8
  %293 = load i64*, i64** %10, align 8
  %294 = getelementptr inbounds i64, i64* %293, i64 6
  %295 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %296 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %295, i32 0, i32 1
  %297 = load i8*, i8** %296, align 8
  %298 = call i32 @memcpy(i32 %292, i64* %294, i8* %297)
  br label %299

299:                                              ; preds = %289, %283
  br label %300

300:                                              ; preds = %299, %216
  %301 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %302 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %302, align 4
  %305 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %306 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %305, i32 0, i32 1
  %307 = load i8*, i8** %306, align 8
  %308 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %309 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr i8, i8* %307, i64 %311
  %313 = ptrtoint i8* %312 to i32
  store i32 %313, i32* %309, align 4
  %314 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %315 = call i32 @netif_rx(%struct.sk_buff* %314)
  br label %316

316:                                              ; preds = %300, %130, %91, %77, %60, %21
  ret void
}

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i32 @kvaser_usb_leaf_leaf_rx_error(%struct.kvaser_usb*, %struct.kvaser_cmd*) #1

declare dso_local i32 @kvaser_usb_leaf_rx_can_err(%struct.kvaser_usb_net_priv*, %struct.kvaser_cmd*) #1

declare dso_local i32 @netdev_warn(%struct.TYPE_14__*, i8*, i32) #1

declare dso_local %struct.sk_buff* @alloc_can_skb(%struct.TYPE_14__*, %struct.can_frame**) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i8* @get_can_dlc(i64) #1

declare dso_local i32 @memcpy(i32, i64*, i8*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
