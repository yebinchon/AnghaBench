; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_usb.c_mwifiex_usb_aggr_tx_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_usb.c_mwifiex_usb_aggr_tx_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i64 }
%struct.sk_buff = type { i32*, i32 }
%struct.mwifiex_tx_param = type { i64 }
%struct.usb_tx_data_port = type { i64, i32, %struct.TYPE_6__, %struct.urb_context*, i32 }
%struct.TYPE_6__ = type { i64, i64, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i64, i32 }
%struct.urb_context = type { i32 }
%struct.txpd = type { i32 }

@MWIFIEX_TxPD_POWER_MGMT_NULL_PACKET = common dso_local global i32 0, align 4
@MWIFIEX_USB_TX_AGGR_TMO_MIN = common dso_local global i8* null, align 8
@jiffies = common dso_local global i64 0, align 8
@MWIFIEX_USB_TX_AGGR_TMO_MAX = common dso_local global i64 0, align 8
@MWIFIEX_TX_DATA_URB = common dso_local global i64 0, align 8
@MWIFIEX_TYPE_AGGR_DATA_V2 = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_adapter*, i32, %struct.sk_buff*, %struct.mwifiex_tx_param*, %struct.usb_tx_data_port*)* @mwifiex_usb_aggr_tx_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_usb_aggr_tx_data(%struct.mwifiex_adapter* %0, i32 %1, %struct.sk_buff* %2, %struct.mwifiex_tx_param* %3, %struct.usb_tx_data_port* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mwifiex_adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.mwifiex_tx_param*, align 8
  %11 = alloca %struct.usb_tx_data_port*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca %struct.urb_context*, align 8
  %17 = alloca %struct.txpd*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %9, align 8
  store %struct.mwifiex_tx_param* %3, %struct.mwifiex_tx_param** %10, align 8
  store %struct.usb_tx_data_port* %4, %struct.usb_tx_data_port** %11, align 8
  %24 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %7, align 8
  %25 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %14, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %15, align 8
  store %struct.urb_context* null, %struct.urb_context** %16, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %7, align 8
  %32 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %30, i64 %34
  %36 = bitcast i32* %35 to %struct.txpd*
  store %struct.txpd* %36, %struct.txpd** %17, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %37 = load i32, i32* %14, align 4
  %38 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %14, align 4
  %42 = sub nsw i32 %41, 1
  %43 = and i32 %40, %42
  %44 = sub nsw i32 %37, %43
  %45 = load i32, i32* %14, align 4
  %46 = srem i32 %44, %45
  store i32 %46, i32* %13, align 4
  %47 = load %struct.mwifiex_tx_param*, %struct.mwifiex_tx_param** %10, align 8
  %48 = icmp ne %struct.mwifiex_tx_param* %47, null
  br i1 %48, label %49, label %109

49:                                               ; preds = %5
  %50 = load %struct.mwifiex_tx_param*, %struct.mwifiex_tx_param** %10, align 8
  %51 = getelementptr inbounds %struct.mwifiex_tx_param, %struct.mwifiex_tx_param* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %109

54:                                               ; preds = %49
  %55 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %11, align 8
  %56 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %58, %62
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %63, %65
  %67 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %7, align 8
  %68 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp sgt i64 %66, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %54
  store i32 1, i32* %18, align 4
  store i32 1, i32* %21, align 4
  br label %108

73:                                               ; preds = %54
  store i32 1, i32* %20, align 4
  %74 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %11, align 8
  %75 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %79 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %77, %81
  %83 = load i32, i32* %13, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %82, %84
  %86 = load %struct.mwifiex_tx_param*, %struct.mwifiex_tx_param** %10, align 8
  %87 = getelementptr inbounds %struct.mwifiex_tx_param, %struct.mwifiex_tx_param* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %85, %88
  %90 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %7, align 8
  %91 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp sgt i64 %89, %93
  br i1 %94, label %106, label %95

95:                                               ; preds = %73
  %96 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %11, align 8
  %97 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %99, 2
  %101 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %7, align 8
  %102 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = icmp sgt i64 %100, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %95, %73
  store i32 1, i32* %18, align 4
  br label %107

107:                                              ; preds = %106, %95
  br label %108

108:                                              ; preds = %107, %72
  br label %138

109:                                              ; preds = %49, %5
  %110 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %11, align 8
  %111 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp sgt i64 %113, 0
  br i1 %114, label %115, label %136

115:                                              ; preds = %109
  %116 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %11, align 8
  %117 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %121 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = add nsw i64 %119, %123
  %125 = load i32, i32* %13, align 4
  %126 = sext i32 %125 to i64
  %127 = add nsw i64 %124, %126
  %128 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %7, align 8
  %129 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = icmp sgt i64 %127, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %115
  store i32 1, i32* %19, align 4
  br label %135

134:                                              ; preds = %115
  store i32 1, i32* %20, align 4
  br label %135

135:                                              ; preds = %134, %133
  store i32 1, i32* %18, align 4
  br label %137

136:                                              ; preds = %109
  store i32 1, i32* %19, align 4
  br label %137

137:                                              ; preds = %136, %135
  br label %138

138:                                              ; preds = %137, %108
  %139 = load %struct.txpd*, %struct.txpd** %17, align 8
  %140 = getelementptr inbounds %struct.txpd, %struct.txpd* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @MWIFIEX_TxPD_POWER_MGMT_NULL_PACKET, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %163

145:                                              ; preds = %138
  %146 = load i32, i32* %20, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %157

148:                                              ; preds = %145
  %149 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %11, align 8
  %150 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 3
  %152 = call i64 @skb_queue_empty(i32* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %148
  store i32 0, i32* %20, align 4
  store i32 0, i32* %18, align 4
  store i32 1, i32* %19, align 4
  br label %156

155:                                              ; preds = %148
  store i32 1, i32* %18, align 4
  br label %156

156:                                              ; preds = %155, %154
  br label %162

157:                                              ; preds = %145
  %158 = load i32, i32* %21, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %157
  store i32 1, i32* %19, align 4
  store i32 0, i32* %21, align 4
  br label %161

161:                                              ; preds = %160, %157
  br label %162

162:                                              ; preds = %161, %156
  br label %163

163:                                              ; preds = %162, %138
  %164 = load i32, i32* %20, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %249

166:                                              ; preds = %163
  %167 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %11, align 8
  %168 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 3
  %170 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %171 = call i32 @skb_queue_tail(i32* %169, %struct.sk_buff* %170)
  %172 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %173 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* %13, align 4
  %176 = add nsw i32 %174, %175
  %177 = sext i32 %176 to i64
  %178 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %11, align 8
  %179 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = add nsw i64 %181, %177
  store i64 %182, i64* %180, align 8
  %183 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %11, align 8
  %184 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = add nsw i64 %186, 1
  store i64 %187, i64* %185, align 8
  %188 = load i32, i32* %18, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %166
  br label %250

191:                                              ; preds = %166
  %192 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %11, align 8
  %193 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %223, label %198

198:                                              ; preds = %191
  %199 = load i8*, i8** @MWIFIEX_USB_TX_AGGR_TMO_MIN, align 8
  %200 = ptrtoint i8* %199 to i64
  %201 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %11, align 8
  %202 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 1
  store i64 %200, i64* %204, align 8
  %205 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %11, align 8
  %206 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 2
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  store i64 %209, i64* %22, align 8
  %210 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %11, align 8
  %211 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 2
  %214 = load i64, i64* @jiffies, align 8
  %215 = load i64, i64* %22, align 8
  %216 = call i64 @msecs_to_jiffies(i64 %215)
  %217 = add nsw i64 %214, %216
  %218 = call i32 @mod_timer(i32* %213, i64 %217)
  %219 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %11, align 8
  %220 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %219, i32 0, i32 2
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 2
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 0
  store i32 1, i32* %222, align 8
  br label %248

223:                                              ; preds = %191
  %224 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %11, align 8
  %225 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %224, i32 0, i32 2
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 2
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @MWIFIEX_USB_TX_AGGR_TMO_MAX, align 8
  %230 = icmp slt i64 %228, %229
  br i1 %230, label %231, label %247

231:                                              ; preds = %223
  %232 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %11, align 8
  %233 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %232, i32 0, i32 2
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 2
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = add nsw i64 %236, 1
  store i64 %237, i64* %235, align 8
  store i64 %237, i64* %22, align 8
  %238 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %11, align 8
  %239 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %238, i32 0, i32 2
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 2
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %240, i32 0, i32 2
  %242 = load i64, i64* @jiffies, align 8
  %243 = load i64, i64* %22, align 8
  %244 = call i64 @msecs_to_jiffies(i64 %243)
  %245 = add nsw i64 %242, %244
  %246 = call i32 @mod_timer(i32* %241, i64 %245)
  br label %247

247:                                              ; preds = %231, %223
  br label %248

248:                                              ; preds = %247, %198
  br label %249

249:                                              ; preds = %248, %163
  br label %250

250:                                              ; preds = %249, %190
  %251 = load i32, i32* %18, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %282

253:                                              ; preds = %250
  %254 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %7, align 8
  %255 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %11, align 8
  %256 = call i32 @mwifiex_usb_prepare_tx_aggr_skb(%struct.mwifiex_adapter* %254, %struct.usb_tx_data_port* %255, %struct.sk_buff** %15)
  store i32 %256, i32* %23, align 4
  %257 = load i32, i32* %23, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %281, label %259

259:                                              ; preds = %253
  %260 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %11, align 8
  %261 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %260, i32 0, i32 3
  %262 = load %struct.urb_context*, %struct.urb_context** %261, align 8
  %263 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %11, align 8
  %264 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = add nsw i64 %265, 1
  store i64 %266, i64* %264, align 8
  %267 = getelementptr inbounds %struct.urb_context, %struct.urb_context* %262, i64 %265
  store %struct.urb_context* %267, %struct.urb_context** %16, align 8
  %268 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %7, align 8
  %269 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %11, align 8
  %270 = load i32, i32* %8, align 4
  %271 = load %struct.urb_context*, %struct.urb_context** %16, align 8
  %272 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %273 = call i32 @mwifiex_usb_construct_send_urb(%struct.mwifiex_adapter* %268, %struct.usb_tx_data_port* %269, i32 %270, %struct.urb_context* %271, %struct.sk_buff* %272)
  store i32 %273, i32* %23, align 4
  %274 = load i32, i32* %23, align 4
  %275 = icmp eq i32 %274, -1
  br i1 %275, label %276, label %280

276:                                              ; preds = %259
  %277 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %7, align 8
  %278 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %279 = call i32 @mwifiex_write_data_complete(%struct.mwifiex_adapter* %277, %struct.sk_buff* %278, i32 0, i32 -1)
  br label %280

280:                                              ; preds = %276, %259
  br label %281

281:                                              ; preds = %280, %253
  br label %282

282:                                              ; preds = %281, %250
  %283 = load i32, i32* %19, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %340

285:                                              ; preds = %282
  %286 = load i32, i32* %18, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %311

288:                                              ; preds = %285
  %289 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %11, align 8
  %290 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %289, i32 0, i32 4
  %291 = call i64 @atomic_read(i32* %290)
  %292 = load i64, i64* @MWIFIEX_TX_DATA_URB, align 8
  %293 = icmp sge i64 %291, %292
  br i1 %293, label %294, label %301

294:                                              ; preds = %288
  %295 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %11, align 8
  %296 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %295, i32 0, i32 1
  store i32 1, i32* %296, align 8
  %297 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %7, align 8
  %298 = call i32 @mwifiex_usb_data_sent(%struct.mwifiex_adapter* %297)
  %299 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %7, align 8
  %300 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %299, i32 0, i32 1
  store i32 %298, i32* %300, align 4
  store i32 1, i32* %21, align 4
  br label %341

301:                                              ; preds = %288
  %302 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %11, align 8
  %303 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %302, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  %305 = load i64, i64* @MWIFIEX_TX_DATA_URB, align 8
  %306 = icmp sge i64 %304, %305
  br i1 %306, label %307, label %310

307:                                              ; preds = %301
  %308 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %11, align 8
  %309 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %308, i32 0, i32 0
  store i64 0, i64* %309, align 8
  br label %310

310:                                              ; preds = %307, %301
  br label %311

311:                                              ; preds = %310, %285
  %312 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %313 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %312, i32 0, i32 0
  %314 = load i32*, i32** %313, align 8
  store i32* %314, i32** %12, align 8
  %315 = load i32, i32* @MWIFIEX_TYPE_AGGR_DATA_V2, align 4
  %316 = or i32 %315, 128
  %317 = call i32 @cpu_to_le16(i32 %316)
  %318 = load i32*, i32** %12, align 8
  %319 = getelementptr inbounds i32, i32* %318, i64 2
  store i32 %317, i32* %319, align 4
  %320 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %321 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 8
  %323 = call i32 @cpu_to_le16(i32 %322)
  %324 = load i32*, i32** %12, align 8
  store i32 %323, i32* %324, align 4
  %325 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %325, %struct.sk_buff** %15, align 8
  %326 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %11, align 8
  %327 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %326, i32 0, i32 3
  %328 = load %struct.urb_context*, %struct.urb_context** %327, align 8
  %329 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %11, align 8
  %330 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %329, i32 0, i32 0
  %331 = load i64, i64* %330, align 8
  %332 = add nsw i64 %331, 1
  store i64 %332, i64* %330, align 8
  %333 = getelementptr inbounds %struct.urb_context, %struct.urb_context* %328, i64 %331
  store %struct.urb_context* %333, %struct.urb_context** %16, align 8
  %334 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %7, align 8
  %335 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %11, align 8
  %336 = load i32, i32* %8, align 4
  %337 = load %struct.urb_context*, %struct.urb_context** %16, align 8
  %338 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %339 = call i32 @mwifiex_usb_construct_send_urb(%struct.mwifiex_adapter* %334, %struct.usb_tx_data_port* %335, i32 %336, %struct.urb_context* %337, %struct.sk_buff* %338)
  store i32 %339, i32* %6, align 4
  br label %401

340:                                              ; preds = %282
  br label %341

341:                                              ; preds = %340, %294
  %342 = load i32, i32* %21, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %398

344:                                              ; preds = %341
  %345 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %11, align 8
  %346 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %345, i32 0, i32 2
  %347 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %346, i32 0, i32 3
  %348 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %349 = call i32 @skb_queue_tail(i32* %347, %struct.sk_buff* %348)
  %350 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %351 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 8
  %353 = load i32, i32* %13, align 4
  %354 = add nsw i32 %352, %353
  %355 = sext i32 %354 to i64
  %356 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %11, align 8
  %357 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %356, i32 0, i32 2
  %358 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %357, i32 0, i32 0
  %359 = load i64, i64* %358, align 8
  %360 = add nsw i64 %359, %355
  store i64 %360, i64* %358, align 8
  %361 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %11, align 8
  %362 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %361, i32 0, i32 2
  %363 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %362, i32 0, i32 1
  %364 = load i64, i64* %363, align 8
  %365 = add nsw i64 %364, 1
  store i64 %365, i64* %363, align 8
  %366 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %11, align 8
  %367 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %366, i32 0, i32 2
  %368 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %367, i32 0, i32 2
  %369 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 8
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %397, label %372

372:                                              ; preds = %344
  %373 = load i8*, i8** @MWIFIEX_USB_TX_AGGR_TMO_MIN, align 8
  %374 = ptrtoint i8* %373 to i64
  %375 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %11, align 8
  %376 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %375, i32 0, i32 2
  %377 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %376, i32 0, i32 2
  %378 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %377, i32 0, i32 1
  store i64 %374, i64* %378, align 8
  %379 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %11, align 8
  %380 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %379, i32 0, i32 2
  %381 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %380, i32 0, i32 2
  %382 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %381, i32 0, i32 1
  %383 = load i64, i64* %382, align 8
  store i64 %383, i64* %22, align 8
  %384 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %11, align 8
  %385 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %384, i32 0, i32 2
  %386 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %385, i32 0, i32 2
  %387 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %386, i32 0, i32 2
  %388 = load i64, i64* @jiffies, align 8
  %389 = load i64, i64* %22, align 8
  %390 = call i64 @msecs_to_jiffies(i64 %389)
  %391 = add nsw i64 %388, %390
  %392 = call i32 @mod_timer(i32* %387, i64 %391)
  %393 = load %struct.usb_tx_data_port*, %struct.usb_tx_data_port** %11, align 8
  %394 = getelementptr inbounds %struct.usb_tx_data_port, %struct.usb_tx_data_port* %393, i32 0, i32 2
  %395 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %394, i32 0, i32 2
  %396 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %395, i32 0, i32 0
  store i32 1, i32* %396, align 8
  br label %397

397:                                              ; preds = %372, %344
  br label %398

398:                                              ; preds = %397, %341
  %399 = load i32, i32* @EINPROGRESS, align 4
  %400 = sub nsw i32 0, %399
  store i32 %400, i32* %6, align 4
  br label %401

401:                                              ; preds = %398, %311
  %402 = load i32, i32* %6, align 4
  ret i32 %402
}

declare dso_local i64 @skb_queue_empty(i32*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i64) #1

declare dso_local i32 @mwifiex_usb_prepare_tx_aggr_skb(%struct.mwifiex_adapter*, %struct.usb_tx_data_port*, %struct.sk_buff**) #1

declare dso_local i32 @mwifiex_usb_construct_send_urb(%struct.mwifiex_adapter*, %struct.usb_tx_data_port*, i32, %struct.urb_context*, %struct.sk_buff*) #1

declare dso_local i32 @mwifiex_write_data_complete(%struct.mwifiex_adapter*, %struct.sk_buff*, i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @mwifiex_usb_data_sent(%struct.mwifiex_adapter*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
