; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_leaf.c_kvaser_usb_leaf_rx_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_leaf.c_kvaser_usb_leaf_rx_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_usb = type { i64, %struct.TYPE_13__, %struct.kvaser_usb_net_priv**, %struct.TYPE_10__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.kvaser_usb_net_priv = type { %struct.TYPE_16__*, %struct.TYPE_11__ }
%struct.TYPE_16__ = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.kvaser_usb_err_summary = type { i64, i32, i32, i32, %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.can_frame = type { i32, i64, i32* }
%struct.sk_buff = type { i32 }

@CAN_ERR_FLAG = common dso_local global i32 0, align 4
@CAN_ERR_DLC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Invalid channel number (%d)\0A\00", align 1
@M16C_STATE_BUS_OFF = common dso_local global i32 0, align 4
@M16C_STATE_BUS_RESET = common dso_local global i32 0, align 4
@CMD_STOP_CHIP = common dso_local global i32 0, align 4
@CAN_STATE_BUS_OFF = common dso_local global i32 0, align 4
@CAN_ERR_RESTARTED = common dso_local global i32 0, align 4
@CAN_ERR_BUSERROR = common dso_local global i32 0, align 4
@CAN_ERR_PROT = common dso_local global i32 0, align 4
@M16C_EF_ACKE = common dso_local global i32 0, align 4
@CAN_ERR_PROT_LOC_ACK = common dso_local global i32 0, align 4
@M16C_EF_CRCE = common dso_local global i32 0, align 4
@CAN_ERR_PROT_LOC_CRC_SEQ = common dso_local global i32 0, align 4
@M16C_EF_FORME = common dso_local global i32 0, align 4
@CAN_ERR_PROT_FORM = common dso_local global i32 0, align 4
@M16C_EF_STFE = common dso_local global i32 0, align 4
@CAN_ERR_PROT_STUFF = common dso_local global i32 0, align 4
@M16C_EF_BITE0 = common dso_local global i32 0, align 4
@CAN_ERR_PROT_BIT0 = common dso_local global i32 0, align 4
@M16C_EF_BITE1 = common dso_local global i32 0, align 4
@CAN_ERR_PROT_BIT1 = common dso_local global i32 0, align 4
@M16C_EF_TRE = common dso_local global i32 0, align 4
@CAN_ERR_PROT_TX = common dso_local global i32 0, align 4
@USBCAN_ERROR_STATE_BUSERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvaser_usb*, %struct.kvaser_usb_err_summary*)* @kvaser_usb_leaf_rx_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvaser_usb_leaf_rx_error(%struct.kvaser_usb* %0, %struct.kvaser_usb_err_summary* %1) #0 {
  %3 = alloca %struct.kvaser_usb*, align 8
  %4 = alloca %struct.kvaser_usb_err_summary*, align 8
  %5 = alloca %struct.can_frame*, align 8
  %6 = alloca %struct.can_frame, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.net_device_stats*, align 8
  %9 = alloca %struct.kvaser_usb_net_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.kvaser_usb* %0, %struct.kvaser_usb** %3, align 8
  store %struct.kvaser_usb_err_summary* %1, %struct.kvaser_usb_err_summary** %4, align 8
  %12 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %6, i32 0, i32 0
  %13 = load i32, i32* @CAN_ERR_FLAG, align 4
  store i32 %13, i32* %12, align 8
  %14 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %6, i32 0, i32 1
  %15 = load i64, i64* @CAN_ERR_DLC, align 8
  store i64 %15, i64* %14, align 8
  %16 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %6, i32 0, i32 2
  store i32* null, i32** %16, align 8
  %17 = load %struct.kvaser_usb_err_summary*, %struct.kvaser_usb_err_summary** %4, align 8
  %18 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %21 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp uge i64 %19, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %2
  %25 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %26 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %25, i32 0, i32 3
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load %struct.kvaser_usb_err_summary*, %struct.kvaser_usb_err_summary** %4, align 8
  %30 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @dev_err(i32* %28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %31)
  br label %297

33:                                               ; preds = %2
  %34 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %35 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %34, i32 0, i32 2
  %36 = load %struct.kvaser_usb_net_priv**, %struct.kvaser_usb_net_priv*** %35, align 8
  %37 = load %struct.kvaser_usb_err_summary*, %struct.kvaser_usb_err_summary** %4, align 8
  %38 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %36, i64 %39
  %41 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %40, align 8
  store %struct.kvaser_usb_net_priv* %41, %struct.kvaser_usb_net_priv** %9, align 8
  %42 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %9, align 8
  %43 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %42, i32 0, i32 0
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  store %struct.net_device_stats* %45, %struct.net_device_stats** %8, align 8
  %46 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %9, align 8
  %47 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %10, align 4
  %50 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %9, align 8
  %51 = load %struct.kvaser_usb_err_summary*, %struct.kvaser_usb_err_summary** %4, align 8
  %52 = call i32 @kvaser_usb_leaf_rx_error_update_can_state(%struct.kvaser_usb_net_priv* %50, %struct.kvaser_usb_err_summary* %51, %struct.can_frame* %6)
  %53 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %9, align 8
  %54 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %11, align 4
  %57 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %9, align 8
  %58 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %57, i32 0, i32 0
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %58, align 8
  %60 = call %struct.sk_buff* @alloc_can_err_skb(%struct.TYPE_16__* %59, %struct.can_frame** %5)
  store %struct.sk_buff* %60, %struct.sk_buff** %7, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %62 = icmp ne %struct.sk_buff* %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %33
  %64 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %65 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  br label %297

68:                                               ; preds = %33
  %69 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %70 = call i32 @memcpy(%struct.can_frame* %69, %struct.can_frame* %6, i32 24)
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %123

74:                                               ; preds = %68
  %75 = load %struct.kvaser_usb_err_summary*, %struct.kvaser_usb_err_summary** %4, align 8
  %76 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @M16C_STATE_BUS_OFF, align 4
  %79 = load i32, i32* @M16C_STATE_BUS_RESET, align 4
  %80 = or i32 %78, %79
  %81 = and i32 %77, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %98

83:                                               ; preds = %74
  %84 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %9, align 8
  %85 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %83
  %90 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %9, align 8
  %91 = load i32, i32* @CMD_STOP_CHIP, align 4
  %92 = call i32 @kvaser_usb_leaf_simple_cmd_async(%struct.kvaser_usb_net_priv* %90, i32 %91)
  br label %93

93:                                               ; preds = %89, %83
  %94 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %9, align 8
  %95 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %94, i32 0, i32 0
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %95, align 8
  %97 = call i32 @netif_carrier_off(%struct.TYPE_16__* %96)
  br label %98

98:                                               ; preds = %93, %74
  %99 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %9, align 8
  %100 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %122

104:                                              ; preds = %98
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* @CAN_STATE_BUS_OFF, align 4
  %107 = icmp uge i32 %105, %106
  br i1 %107, label %108, label %122

108:                                              ; preds = %104
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* @CAN_STATE_BUS_OFF, align 4
  %111 = icmp ult i32 %109, %110
  br i1 %111, label %112, label %122

112:                                              ; preds = %108
  %113 = load i32, i32* @CAN_ERR_RESTARTED, align 4
  %114 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %115 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 8
  %118 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %9, align 8
  %119 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %118, i32 0, i32 0
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %119, align 8
  %121 = call i32 @netif_carrier_on(%struct.TYPE_16__* %120)
  br label %122

122:                                              ; preds = %112, %108, %104, %98
  br label %123

123:                                              ; preds = %122, %68
  %124 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %125 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  switch i32 %128, label %267 [
    i32 129, label %129
    i32 128, label %252
  ]

129:                                              ; preds = %123
  %130 = load %struct.kvaser_usb_err_summary*, %struct.kvaser_usb_err_summary** %4, align 8
  %131 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %130, i32 0, i32 5
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %251

135:                                              ; preds = %129
  %136 = load i32, i32* @CAN_ERR_BUSERROR, align 4
  %137 = load i32, i32* @CAN_ERR_PROT, align 4
  %138 = or i32 %136, %137
  %139 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %140 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = or i32 %141, %138
  store i32 %142, i32* %140, align 8
  %143 = load %struct.kvaser_usb_err_summary*, %struct.kvaser_usb_err_summary** %4, align 8
  %144 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %143, i32 0, i32 5
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @M16C_EF_ACKE, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %135
  %151 = load i32, i32* @CAN_ERR_PROT_LOC_ACK, align 4
  %152 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %153 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 3
  store i32 %151, i32* %155, align 4
  br label %156

156:                                              ; preds = %150, %135
  %157 = load %struct.kvaser_usb_err_summary*, %struct.kvaser_usb_err_summary** %4, align 8
  %158 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %157, i32 0, i32 5
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @M16C_EF_CRCE, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %156
  %165 = load i32, i32* @CAN_ERR_PROT_LOC_CRC_SEQ, align 4
  %166 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %167 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %166, i32 0, i32 2
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 3
  store i32 %165, i32* %169, align 4
  br label %170

170:                                              ; preds = %164, %156
  %171 = load %struct.kvaser_usb_err_summary*, %struct.kvaser_usb_err_summary** %4, align 8
  %172 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %171, i32 0, i32 5
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @M16C_EF_FORME, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %186

178:                                              ; preds = %170
  %179 = load i32, i32* @CAN_ERR_PROT_FORM, align 4
  %180 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %181 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %180, i32 0, i32 2
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 2
  %184 = load i32, i32* %183, align 4
  %185 = or i32 %184, %179
  store i32 %185, i32* %183, align 4
  br label %186

186:                                              ; preds = %178, %170
  %187 = load %struct.kvaser_usb_err_summary*, %struct.kvaser_usb_err_summary** %4, align 8
  %188 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %187, i32 0, i32 5
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @M16C_EF_STFE, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %202

194:                                              ; preds = %186
  %195 = load i32, i32* @CAN_ERR_PROT_STUFF, align 4
  %196 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %197 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %196, i32 0, i32 2
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 2
  %200 = load i32, i32* %199, align 4
  %201 = or i32 %200, %195
  store i32 %201, i32* %199, align 4
  br label %202

202:                                              ; preds = %194, %186
  %203 = load %struct.kvaser_usb_err_summary*, %struct.kvaser_usb_err_summary** %4, align 8
  %204 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %203, i32 0, i32 5
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* @M16C_EF_BITE0, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %218

210:                                              ; preds = %202
  %211 = load i32, i32* @CAN_ERR_PROT_BIT0, align 4
  %212 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %213 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %212, i32 0, i32 2
  %214 = load i32*, i32** %213, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 2
  %216 = load i32, i32* %215, align 4
  %217 = or i32 %216, %211
  store i32 %217, i32* %215, align 4
  br label %218

218:                                              ; preds = %210, %202
  %219 = load %struct.kvaser_usb_err_summary*, %struct.kvaser_usb_err_summary** %4, align 8
  %220 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %219, i32 0, i32 5
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* @M16C_EF_BITE1, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %234

226:                                              ; preds = %218
  %227 = load i32, i32* @CAN_ERR_PROT_BIT1, align 4
  %228 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %229 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %228, i32 0, i32 2
  %230 = load i32*, i32** %229, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 2
  %232 = load i32, i32* %231, align 4
  %233 = or i32 %232, %227
  store i32 %233, i32* %231, align 4
  br label %234

234:                                              ; preds = %226, %218
  %235 = load %struct.kvaser_usb_err_summary*, %struct.kvaser_usb_err_summary** %4, align 8
  %236 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %235, i32 0, i32 5
  %237 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* @M16C_EF_TRE, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %250

242:                                              ; preds = %234
  %243 = load i32, i32* @CAN_ERR_PROT_TX, align 4
  %244 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %245 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %244, i32 0, i32 2
  %246 = load i32*, i32** %245, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 2
  %248 = load i32, i32* %247, align 4
  %249 = or i32 %248, %243
  store i32 %249, i32* %247, align 4
  br label %250

250:                                              ; preds = %242, %234
  br label %251

251:                                              ; preds = %250, %129
  br label %267

252:                                              ; preds = %123
  %253 = load %struct.kvaser_usb_err_summary*, %struct.kvaser_usb_err_summary** %4, align 8
  %254 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %253, i32 0, i32 4
  %255 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* @USBCAN_ERROR_STATE_BUSERROR, align 4
  %258 = and i32 %256, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %266

260:                                              ; preds = %252
  %261 = load i32, i32* @CAN_ERR_BUSERROR, align 4
  %262 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %263 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = or i32 %264, %261
  store i32 %265, i32* %263, align 8
  br label %266

266:                                              ; preds = %260, %252
  br label %267

267:                                              ; preds = %123, %266, %251
  %268 = load %struct.kvaser_usb_err_summary*, %struct.kvaser_usb_err_summary** %4, align 8
  %269 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %268, i32 0, i32 3
  %270 = load i32, i32* %269, align 8
  %271 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %272 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %271, i32 0, i32 2
  %273 = load i32*, i32** %272, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 6
  store i32 %270, i32* %274, align 4
  %275 = load %struct.kvaser_usb_err_summary*, %struct.kvaser_usb_err_summary** %4, align 8
  %276 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %279 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %278, i32 0, i32 2
  %280 = load i32*, i32** %279, align 8
  %281 = getelementptr inbounds i32, i32* %280, i64 7
  store i32 %277, i32* %281, align 4
  %282 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %283 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %283, align 4
  %286 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %287 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %286, i32 0, i32 1
  %288 = load i64, i64* %287, align 8
  %289 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %290 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = sext i32 %291 to i64
  %293 = add nsw i64 %292, %288
  %294 = trunc i64 %293 to i32
  store i32 %294, i32* %290, align 4
  %295 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %296 = call i32 @netif_rx(%struct.sk_buff* %295)
  br label %297

297:                                              ; preds = %267, %63, %24
  ret void
}

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i32 @kvaser_usb_leaf_rx_error_update_can_state(%struct.kvaser_usb_net_priv*, %struct.kvaser_usb_err_summary*, %struct.can_frame*) #1

declare dso_local %struct.sk_buff* @alloc_can_err_skb(%struct.TYPE_16__*, %struct.can_frame**) #1

declare dso_local i32 @memcpy(%struct.can_frame*, %struct.can_frame*, i32) #1

declare dso_local i32 @kvaser_usb_leaf_simple_cmd_async(%struct.kvaser_usb_net_priv*, i32) #1

declare dso_local i32 @netif_carrier_off(%struct.TYPE_16__*) #1

declare dso_local i32 @netif_carrier_on(%struct.TYPE_16__*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
