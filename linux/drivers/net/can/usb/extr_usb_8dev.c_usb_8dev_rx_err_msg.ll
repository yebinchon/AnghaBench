; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_usb_8dev.c_usb_8dev_rx_err_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_usb_8dev.c_usb_8dev_rx_err_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_8dev_priv = type { %struct.TYPE_9__, %struct.TYPE_10__*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i8* }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.usb_8dev_rx_msg = type { i32* }
%struct.can_frame = type { i32, i32*, i64 }
%struct.sk_buff = type { i32 }

@USB_8DEV_RP_MASK = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_ACTIVE = common dso_local global i8* null, align 8
@CAN_ERR_PROT = common dso_local global i32 0, align 4
@CAN_ERR_PROT_ACTIVE = common dso_local global i32 0, align 4
@CAN_STATE_BUS_OFF = common dso_local global i8* null, align 8
@CAN_ERR_BUSOFF = common dso_local global i32 0, align 4
@CAN_ERR_CRTL = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_WARNING = common dso_local global i8* null, align 8
@CAN_ERR_BUSERROR = common dso_local global i32 0, align 4
@CAN_ERR_ACK = common dso_local global i32 0, align 4
@CAN_ERR_PROT_LOC_CRC_SEQ = common dso_local global i32 0, align 4
@CAN_ERR_PROT_BIT0 = common dso_local global i32 0, align 4
@CAN_ERR_PROT_BIT1 = common dso_local global i32 0, align 4
@CAN_ERR_PROT_FORM = common dso_local global i32 0, align 4
@CAN_ERR_PROT_STUFF = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_RX_OVERFLOW = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_TX_WARNING = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_RX_WARNING = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_PASSIVE = common dso_local global i8* null, align 8
@CAN_ERR_CRTL_TX_PASSIVE = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_RX_PASSIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Unknown status/error message (%d)\0A\00", align 1
@CAN_ERR_PROT_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_8dev_priv*, %struct.usb_8dev_rx_msg*)* @usb_8dev_rx_err_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_8dev_rx_err_msg(%struct.usb_8dev_priv* %0, %struct.usb_8dev_rx_msg* %1) #0 {
  %3 = alloca %struct.usb_8dev_priv*, align 8
  %4 = alloca %struct.usb_8dev_rx_msg*, align 8
  %5 = alloca %struct.can_frame*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device_stats*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.usb_8dev_priv* %0, %struct.usb_8dev_priv** %3, align 8
  store %struct.usb_8dev_rx_msg* %1, %struct.usb_8dev_rx_msg** %4, align 8
  %13 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %3, align 8
  %14 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %13, i32 0, i32 1
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  store %struct.net_device_stats* %16, %struct.net_device_stats** %7, align 8
  %17 = load %struct.usb_8dev_rx_msg*, %struct.usb_8dev_rx_msg** %4, align 8
  %18 = getelementptr inbounds %struct.usb_8dev_rx_msg, %struct.usb_8dev_rx_msg* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = load %struct.usb_8dev_rx_msg*, %struct.usb_8dev_rx_msg** %4, align 8
  %23 = getelementptr inbounds %struct.usb_8dev_rx_msg, %struct.usb_8dev_rx_msg* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @USB_8DEV_RP_MASK, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %9, align 4
  %29 = load %struct.usb_8dev_rx_msg*, %struct.usb_8dev_rx_msg** %4, align 8
  %30 = getelementptr inbounds %struct.usb_8dev_rx_msg, %struct.usb_8dev_rx_msg* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %34 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %3, align 8
  %35 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %34, i32 0, i32 1
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = call %struct.sk_buff* @alloc_can_err_skb(%struct.TYPE_10__* %36, %struct.can_frame** %5)
  store %struct.sk_buff* %37, %struct.sk_buff** %6, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = icmp ne %struct.sk_buff* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %2
  br label %270

41:                                               ; preds = %2
  %42 = load i32, i32* %8, align 4
  switch i32 %42, label %84 [
    i32 130, label %43
    i32 133, label %58
    i32 129, label %78
    i32 134, label %78
    i32 135, label %78
  ]

43:                                               ; preds = %41
  %44 = load i8*, i8** @CAN_STATE_ERROR_ACTIVE, align 8
  %45 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %3, align 8
  %46 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  store i8* %44, i8** %47, align 8
  %48 = load i32, i32* @CAN_ERR_PROT, align 4
  %49 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %50 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  %53 = load i32, i32* @CAN_ERR_PROT_ACTIVE, align 4
  %54 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %55 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  store i32 %53, i32* %57, align 4
  br label %102

58:                                               ; preds = %41
  %59 = load i8*, i8** @CAN_STATE_BUS_OFF, align 8
  %60 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %3, align 8
  %61 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  store i8* %59, i8** %62, align 8
  %63 = load i32, i32* @CAN_ERR_BUSOFF, align 4
  %64 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %65 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  %68 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %3, align 8
  %69 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  %74 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %3, align 8
  %75 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %74, i32 0, i32 1
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = call i32 @can_bus_off(%struct.TYPE_10__* %76)
  br label %102

78:                                               ; preds = %41, %41, %41
  %79 = load i32, i32* @CAN_ERR_CRTL, align 4
  %80 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %81 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 8
  br label %102

84:                                               ; preds = %41
  %85 = load i8*, i8** @CAN_STATE_ERROR_WARNING, align 8
  %86 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %3, align 8
  %87 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  store i8* %85, i8** %88, align 8
  %89 = load i32, i32* @CAN_ERR_PROT, align 4
  %90 = load i32, i32* @CAN_ERR_BUSERROR, align 4
  %91 = or i32 %89, %90
  %92 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %93 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 8
  %96 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %3, align 8
  %97 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 8
  br label %102

102:                                              ; preds = %84, %78, %58, %43
  %103 = load i32, i32* %8, align 4
  switch i32 %103, label %207 [
    i32 130, label %104
    i32 133, label %104
    i32 138, label %105
    i32 132, label %111
    i32 137, label %117
    i32 136, label %125
    i32 131, label %133
    i32 128, label %141
    i32 129, label %149
    i32 134, label %159
    i32 135, label %183
  ]

104:                                              ; preds = %102, %102
  br label %213

105:                                              ; preds = %102
  %106 = load i32, i32* @CAN_ERR_ACK, align 4
  %107 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %108 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 8
  store i32 1, i32* %12, align 4
  br label %213

111:                                              ; preds = %102
  %112 = load i32, i32* @CAN_ERR_PROT_LOC_CRC_SEQ, align 4
  %113 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %114 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 3
  store i32 %112, i32* %116, align 4
  store i32 1, i32* %11, align 4
  br label %213

117:                                              ; preds = %102
  %118 = load i32, i32* @CAN_ERR_PROT_BIT0, align 4
  %119 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %120 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 2
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %123, %118
  store i32 %124, i32* %122, align 4
  store i32 1, i32* %12, align 4
  br label %213

125:                                              ; preds = %102
  %126 = load i32, i32* @CAN_ERR_PROT_BIT1, align 4
  %127 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %128 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 2
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, %126
  store i32 %132, i32* %130, align 4
  store i32 1, i32* %12, align 4
  br label %213

133:                                              ; preds = %102
  %134 = load i32, i32* @CAN_ERR_PROT_FORM, align 4
  %135 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %136 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 2
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %139, %134
  store i32 %140, i32* %138, align 4
  store i32 1, i32* %11, align 4
  br label %213

141:                                              ; preds = %102
  %142 = load i32, i32* @CAN_ERR_PROT_STUFF, align 4
  %143 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %144 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 2
  %147 = load i32, i32* %146, align 4
  %148 = or i32 %147, %142
  store i32 %148, i32* %146, align 4
  store i32 1, i32* %11, align 4
  br label %213

149:                                              ; preds = %102
  %150 = load i32, i32* @CAN_ERR_CRTL_RX_OVERFLOW, align 4
  %151 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %152 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 1
  store i32 %150, i32* %154, align 4
  %155 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %156 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %156, align 4
  store i32 1, i32* %11, align 4
  br label %213

159:                                              ; preds = %102
  %160 = load i8*, i8** @CAN_STATE_ERROR_WARNING, align 8
  %161 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %3, align 8
  %162 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 1
  store i8* %160, i8** %163, align 8
  %164 = load i32, i32* %10, align 4
  %165 = load i32, i32* %9, align 4
  %166 = icmp sgt i32 %164, %165
  br i1 %166, label %167, label %169

167:                                              ; preds = %159
  %168 = load i32, i32* @CAN_ERR_CRTL_TX_WARNING, align 4
  br label %171

169:                                              ; preds = %159
  %170 = load i32, i32* @CAN_ERR_CRTL_RX_WARNING, align 4
  br label %171

171:                                              ; preds = %169, %167
  %172 = phi i32 [ %168, %167 ], [ %170, %169 ]
  %173 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %174 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %173, i32 0, i32 1
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 1
  store i32 %172, i32* %176, align 4
  %177 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %3, align 8
  %178 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %180, align 4
  br label %213

183:                                              ; preds = %102
  %184 = load i8*, i8** @CAN_STATE_ERROR_PASSIVE, align 8
  %185 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %3, align 8
  %186 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 1
  store i8* %184, i8** %187, align 8
  %188 = load i32, i32* %10, align 4
  %189 = load i32, i32* %9, align 4
  %190 = icmp sgt i32 %188, %189
  br i1 %190, label %191, label %193

191:                                              ; preds = %183
  %192 = load i32, i32* @CAN_ERR_CRTL_TX_PASSIVE, align 4
  br label %195

193:                                              ; preds = %183
  %194 = load i32, i32* @CAN_ERR_CRTL_RX_PASSIVE, align 4
  br label %195

195:                                              ; preds = %193, %191
  %196 = phi i32 [ %192, %191 ], [ %194, %193 ]
  %197 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %198 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %197, i32 0, i32 1
  %199 = load i32*, i32** %198, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 1
  store i32 %196, i32* %200, align 4
  %201 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %3, align 8
  %202 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %204, align 8
  br label %213

207:                                              ; preds = %102
  %208 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %3, align 8
  %209 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %208, i32 0, i32 1
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %209, align 8
  %211 = load i32, i32* %8, align 4
  %212 = call i32 @netdev_warn(%struct.TYPE_10__* %210, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %211)
  br label %213

213:                                              ; preds = %207, %195, %171, %149, %141, %133, %125, %117, %111, %105, %104
  %214 = load i32, i32* %12, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %228

216:                                              ; preds = %213
  %217 = load i32, i32* @CAN_ERR_PROT_TX, align 4
  %218 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %219 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %218, i32 0, i32 1
  %220 = load i32*, i32** %219, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 2
  %222 = load i32, i32* %221, align 4
  %223 = or i32 %222, %217
  store i32 %223, i32* %221, align 4
  %224 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %225 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %225, align 4
  br label %228

228:                                              ; preds = %216, %213
  %229 = load i32, i32* %11, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %236

231:                                              ; preds = %228
  %232 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %233 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %233, align 4
  br label %236

236:                                              ; preds = %231, %228
  %237 = load i32, i32* %10, align 4
  %238 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %239 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %238, i32 0, i32 1
  %240 = load i32*, i32** %239, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 6
  store i32 %237, i32* %241, align 4
  %242 = load i32, i32* %9, align 4
  %243 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %244 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %243, i32 0, i32 1
  %245 = load i32*, i32** %244, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 7
  store i32 %242, i32* %246, align 4
  %247 = load i32, i32* %10, align 4
  %248 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %3, align 8
  %249 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 0
  store i32 %247, i32* %250, align 8
  %251 = load i32, i32* %9, align 4
  %252 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %3, align 8
  %253 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %253, i32 0, i32 1
  store i32 %251, i32* %254, align 4
  %255 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %256 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %256, align 4
  %259 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %260 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %259, i32 0, i32 2
  %261 = load i64, i64* %260, align 8
  %262 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %263 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = sext i32 %264 to i64
  %266 = add nsw i64 %265, %261
  %267 = trunc i64 %266 to i32
  store i32 %267, i32* %263, align 4
  %268 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %269 = call i32 @netif_rx(%struct.sk_buff* %268)
  br label %270

270:                                              ; preds = %236, %40
  ret void
}

declare dso_local %struct.sk_buff* @alloc_can_err_skb(%struct.TYPE_10__*, %struct.can_frame**) #1

declare dso_local i32 @can_bus_off(%struct.TYPE_10__*) #1

declare dso_local i32 @netdev_warn(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
