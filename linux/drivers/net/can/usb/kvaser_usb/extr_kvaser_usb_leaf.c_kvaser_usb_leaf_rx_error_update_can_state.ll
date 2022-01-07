; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_leaf.c_kvaser_usb_leaf_rx_error_update_can_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_leaf.c_kvaser_usb_leaf_rx_error_update_can_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_usb_net_priv = type { %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_17__*, %struct.kvaser_usb* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__, i64 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_17__ = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32 }
%struct.kvaser_usb = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.kvaser_usb_err_summary = type { i32, i32, i32, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.can_frame = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Error status: 0x%02x\0A\00", align 1
@M16C_STATE_BUS_OFF = common dso_local global i32 0, align 4
@M16C_STATE_BUS_RESET = common dso_local global i32 0, align 4
@CAN_STATE_BUS_OFF = common dso_local global i32 0, align 4
@M16C_STATE_BUS_PASSIVE = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_PASSIVE = common dso_local global i32 0, align 4
@M16C_STATE_BUS_ERROR = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_WARNING = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_ACTIVE = common dso_local global i32 0, align 4
@USBCAN_ERROR_STATE_TX_ERROR = common dso_local global i32 0, align 4
@USBCAN_ERROR_STATE_RX_ERROR = common dso_local global i32 0, align 4
@USBCAN_ERROR_STATE_BUSERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvaser_usb_net_priv*, %struct.kvaser_usb_err_summary*, %struct.can_frame*)* @kvaser_usb_leaf_rx_error_update_can_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvaser_usb_leaf_rx_error_update_can_state(%struct.kvaser_usb_net_priv* %0, %struct.kvaser_usb_err_summary* %1, %struct.can_frame* %2) #0 {
  %4 = alloca %struct.kvaser_usb_net_priv*, align 8
  %5 = alloca %struct.kvaser_usb_err_summary*, align 8
  %6 = alloca %struct.can_frame*, align 8
  %7 = alloca %struct.kvaser_usb*, align 8
  %8 = alloca %struct.net_device_stats*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.kvaser_usb_net_priv* %0, %struct.kvaser_usb_net_priv** %4, align 8
  store %struct.kvaser_usb_err_summary* %1, %struct.kvaser_usb_err_summary** %5, align 8
  store %struct.can_frame* %2, %struct.can_frame** %6, align 8
  %13 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %4, align 8
  %14 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %13, i32 0, i32 3
  %15 = load %struct.kvaser_usb*, %struct.kvaser_usb** %14, align 8
  store %struct.kvaser_usb* %15, %struct.kvaser_usb** %7, align 8
  %16 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %4, align 8
  %17 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %16, i32 0, i32 2
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  store %struct.net_device_stats* %19, %struct.net_device_stats** %8, align 8
  %20 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %4, align 8
  %21 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %20, i32 0, i32 2
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %23 = load %struct.kvaser_usb_err_summary*, %struct.kvaser_usb_err_summary** %5, align 8
  %24 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @netdev_dbg(%struct.TYPE_17__* %22, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %4, align 8
  %28 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %10, align 4
  %31 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %4, align 8
  %32 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %9, align 4
  %35 = load %struct.kvaser_usb_err_summary*, %struct.kvaser_usb_err_summary** %5, align 8
  %36 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @M16C_STATE_BUS_OFF, align 4
  %39 = load i32, i32* @M16C_STATE_BUS_RESET, align 4
  %40 = or i32 %38, %39
  %41 = and i32 %37, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %3
  %44 = load i32, i32* @CAN_STATE_BUS_OFF, align 4
  store i32 %44, i32* %10, align 4
  br label %101

45:                                               ; preds = %3
  %46 = load %struct.kvaser_usb_err_summary*, %struct.kvaser_usb_err_summary** %5, align 8
  %47 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @M16C_STATE_BUS_PASSIVE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* @CAN_STATE_ERROR_PASSIVE, align 4
  store i32 %53, i32* %10, align 4
  br label %100

54:                                               ; preds = %45
  %55 = load %struct.kvaser_usb_err_summary*, %struct.kvaser_usb_err_summary** %5, align 8
  %56 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @M16C_STATE_BUS_ERROR, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %99

61:                                               ; preds = %54
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @CAN_STATE_BUS_OFF, align 4
  %64 = icmp ult i32 %62, %63
  br i1 %64, label %65, label %98

65:                                               ; preds = %61
  %66 = load %struct.kvaser_usb_err_summary*, %struct.kvaser_usb_err_summary** %5, align 8
  %67 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp sge i32 %68, 128
  br i1 %69, label %75, label %70

70:                                               ; preds = %65
  %71 = load %struct.kvaser_usb_err_summary*, %struct.kvaser_usb_err_summary** %5, align 8
  %72 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = icmp sge i32 %73, 128
  br i1 %74, label %75, label %77

75:                                               ; preds = %70, %65
  %76 = load i32, i32* @CAN_STATE_ERROR_PASSIVE, align 4
  store i32 %76, i32* %10, align 4
  br label %97

77:                                               ; preds = %70
  %78 = load %struct.kvaser_usb_err_summary*, %struct.kvaser_usb_err_summary** %5, align 8
  %79 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp sge i32 %80, 96
  br i1 %81, label %87, label %82

82:                                               ; preds = %77
  %83 = load %struct.kvaser_usb_err_summary*, %struct.kvaser_usb_err_summary** %5, align 8
  %84 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = icmp sge i32 %85, 96
  br i1 %86, label %87, label %89

87:                                               ; preds = %82, %77
  %88 = load i32, i32* @CAN_STATE_ERROR_WARNING, align 4
  store i32 %88, i32* %10, align 4
  br label %96

89:                                               ; preds = %82
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* @CAN_STATE_ERROR_ACTIVE, align 4
  %92 = icmp ugt i32 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = load i32, i32* @CAN_STATE_ERROR_ACTIVE, align 4
  store i32 %94, i32* %10, align 4
  br label %95

95:                                               ; preds = %93, %89
  br label %96

96:                                               ; preds = %95, %87
  br label %97

97:                                               ; preds = %96, %75
  br label %98

98:                                               ; preds = %97, %61
  br label %99

99:                                               ; preds = %98, %54
  br label %100

100:                                              ; preds = %99, %52
  br label %101

101:                                              ; preds = %100, %43
  %102 = load %struct.kvaser_usb_err_summary*, %struct.kvaser_usb_err_summary** %5, align 8
  %103 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %101
  %107 = load i32, i32* @CAN_STATE_ERROR_ACTIVE, align 4
  store i32 %107, i32* %10, align 4
  br label %108

108:                                              ; preds = %106, %101
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %144

112:                                              ; preds = %108
  %113 = load %struct.kvaser_usb_err_summary*, %struct.kvaser_usb_err_summary** %5, align 8
  %114 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.kvaser_usb_err_summary*, %struct.kvaser_usb_err_summary** %5, align 8
  %117 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = icmp sge i32 %115, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %112
  %121 = load i32, i32* %10, align 4
  br label %123

122:                                              ; preds = %112
  br label %123

123:                                              ; preds = %122, %120
  %124 = phi i32 [ %121, %120 ], [ 0, %122 ]
  store i32 %124, i32* %11, align 4
  %125 = load %struct.kvaser_usb_err_summary*, %struct.kvaser_usb_err_summary** %5, align 8
  %126 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.kvaser_usb_err_summary*, %struct.kvaser_usb_err_summary** %5, align 8
  %129 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = icmp sle i32 %127, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %123
  %133 = load i32, i32* %10, align 4
  br label %135

134:                                              ; preds = %123
  br label %135

135:                                              ; preds = %134, %132
  %136 = phi i32 [ %133, %132 ], [ 0, %134 ]
  store i32 %136, i32* %12, align 4
  %137 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %4, align 8
  %138 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %137, i32 0, i32 2
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %138, align 8
  %140 = load %struct.can_frame*, %struct.can_frame** %6, align 8
  %141 = load i32, i32* %11, align 4
  %142 = load i32, i32* %12, align 4
  %143 = call i32 @can_change_state(%struct.TYPE_17__* %139, %struct.can_frame* %140, i32 %141, i32 %142)
  br label %144

144:                                              ; preds = %135, %108
  %145 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %4, align 8
  %146 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %165

150:                                              ; preds = %144
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* @CAN_STATE_BUS_OFF, align 4
  %153 = icmp uge i32 %151, %152
  br i1 %153, label %154, label %165

154:                                              ; preds = %150
  %155 = load i32, i32* %10, align 4
  %156 = load i32, i32* @CAN_STATE_BUS_OFF, align 4
  %157 = icmp ult i32 %155, %156
  br i1 %157, label %158, label %165

158:                                              ; preds = %154
  %159 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %4, align 8
  %160 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %162, align 4
  br label %165

165:                                              ; preds = %158, %154, %150, %144
  %166 = load %struct.kvaser_usb*, %struct.kvaser_usb** %7, align 8
  %167 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  switch i32 %170, label %231 [
    i32 129, label %171
    i32 128, label %189
  ]

171:                                              ; preds = %165
  %172 = load %struct.kvaser_usb_err_summary*, %struct.kvaser_usb_err_summary** %5, align 8
  %173 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %172, i32 0, i32 4
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %188

177:                                              ; preds = %171
  %178 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %4, align 8
  %179 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %181, align 4
  %184 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %185 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %185, align 4
  br label %188

188:                                              ; preds = %177, %171
  br label %231

189:                                              ; preds = %165
  %190 = load %struct.kvaser_usb_err_summary*, %struct.kvaser_usb_err_summary** %5, align 8
  %191 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %190, i32 0, i32 3
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @USBCAN_ERROR_STATE_TX_ERROR, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %202

197:                                              ; preds = %189
  %198 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %199 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %199, align 4
  br label %202

202:                                              ; preds = %197, %189
  %203 = load %struct.kvaser_usb_err_summary*, %struct.kvaser_usb_err_summary** %5, align 8
  %204 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %203, i32 0, i32 3
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @USBCAN_ERROR_STATE_RX_ERROR, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %202
  %211 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %212 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %212, align 4
  br label %215

215:                                              ; preds = %210, %202
  %216 = load %struct.kvaser_usb_err_summary*, %struct.kvaser_usb_err_summary** %5, align 8
  %217 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %216, i32 0, i32 3
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @USBCAN_ERROR_STATE_BUSERROR, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %230

223:                                              ; preds = %215
  %224 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %4, align 8
  %225 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %227, align 4
  br label %230

230:                                              ; preds = %223, %215
  br label %231

231:                                              ; preds = %165, %230, %188
  %232 = load %struct.kvaser_usb_err_summary*, %struct.kvaser_usb_err_summary** %5, align 8
  %233 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %4, align 8
  %236 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %236, i32 0, i32 0
  store i32 %234, i32* %237, align 8
  %238 = load %struct.kvaser_usb_err_summary*, %struct.kvaser_usb_err_summary** %5, align 8
  %239 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %4, align 8
  %242 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %242, i32 0, i32 1
  store i32 %240, i32* %243, align 4
  ret void
}

declare dso_local i32 @netdev_dbg(%struct.TYPE_17__*, i8*, i32) #1

declare dso_local i32 @can_change_state(%struct.TYPE_17__*, %struct.can_frame*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
