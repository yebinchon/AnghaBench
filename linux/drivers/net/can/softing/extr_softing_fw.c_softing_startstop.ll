; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/softing/extr_softing_fw.c_softing_startstop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/softing/extr_softing_fw.c_softing_startstop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.softing = type { %struct.net_device**, %struct.TYPE_14__, i32*, %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_9__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.softing_priv = type { i32, i32, %struct.TYPE_13__, %struct.TYPE_8__, %struct.softing* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__, i32, %struct.can_bittiming }
%struct.TYPE_12__ = type { i32 }
%struct.can_bittiming = type { i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i64, i64, i64 }
%struct.can_frame = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@CAN_STATE_STOPPED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"err_reporting flag differs for busses\0A\00", align 1
@DPRAM_FCT_PARAM = common dso_local global i32 0, align 4
@CAN_CTRLMODE_3_SAMPLES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"initialize_chip[0]\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"set_mode[0]\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"set_filter[0]\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"set_output[0]\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"initialize_chip[1]\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"set_mode[1]\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"set_filter[1]\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"set_output[1]\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"initialize_interface\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"enable_fifo\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"fifo_tx_ack[0]\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"fifo_tx_ack[1]\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"start_chip\00", align 1
@DPRAM_INFO_BUSSTATE = common dso_local global i64 0, align 8
@DPRAM_INFO_BUSSTATE2 = common dso_local global i64 0, align 8
@DPRAM_V2_IRQ_TOHOST = common dso_local global i64 0, align 8
@CAN_ERR_FLAG = common dso_local global i32 0, align 4
@CAN_ERR_RESTARTED = common dso_local global i32 0, align 4
@CAN_ERR_DLC = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_ACTIVE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @softing_startstop(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.softing*, align 8
  %8 = alloca %struct.softing_priv*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.can_frame, align 4
  %14 = alloca %struct.can_bittiming*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = call %struct.softing_priv* @netdev_priv(%struct.net_device* %15)
  store %struct.softing_priv* %16, %struct.softing_priv** %8, align 8
  %17 = load %struct.softing_priv*, %struct.softing_priv** %8, align 8
  %18 = getelementptr inbounds %struct.softing_priv, %struct.softing_priv* %17, i32 0, i32 4
  %19 = load %struct.softing*, %struct.softing** %18, align 8
  store %struct.softing* %19, %struct.softing** %7, align 8
  %20 = load %struct.softing*, %struct.softing** %7, align 8
  %21 = getelementptr inbounds %struct.softing, %struct.softing* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %773

28:                                               ; preds = %2
  %29 = load %struct.softing*, %struct.softing** %7, align 8
  %30 = getelementptr inbounds %struct.softing, %struct.softing* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = call i32 @mutex_lock_interruptible(i32* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %773

37:                                               ; preds = %28
  store i32 0, i32* %10, align 4
  %38 = load %struct.net_device*, %struct.net_device** %4, align 8
  %39 = icmp ne %struct.net_device* %38, null
  br i1 %39, label %40, label %50

40:                                               ; preds = %37
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load %struct.softing_priv*, %struct.softing_priv** %8, align 8
  %45 = getelementptr inbounds %struct.softing_priv, %struct.softing_priv* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = shl i32 1, %46
  %48 = load i32, i32* %10, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %43, %40, %37
  store i32 0, i32* %11, align 4
  br label %51

51:                                               ; preds = %108, %50
  %52 = load i32, i32* %11, align 4
  %53 = load %struct.softing*, %struct.softing** %7, align 8
  %54 = getelementptr inbounds %struct.softing, %struct.softing* %53, i32 0, i32 0
  %55 = load %struct.net_device**, %struct.net_device*** %54, align 8
  %56 = call i32 @ARRAY_SIZE(%struct.net_device** %55)
  %57 = icmp slt i32 %52, %56
  br i1 %57, label %58, label %111

58:                                               ; preds = %51
  %59 = load %struct.softing*, %struct.softing** %7, align 8
  %60 = getelementptr inbounds %struct.softing, %struct.softing* %59, i32 0, i32 0
  %61 = load %struct.net_device**, %struct.net_device*** %60, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.net_device*, %struct.net_device** %61, i64 %63
  %65 = load %struct.net_device*, %struct.net_device** %64, align 8
  store %struct.net_device* %65, %struct.net_device** %9, align 8
  %66 = load %struct.net_device*, %struct.net_device** %9, align 8
  %67 = icmp ne %struct.net_device* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %58
  br label %108

69:                                               ; preds = %58
  %70 = load %struct.net_device*, %struct.net_device** %9, align 8
  %71 = call %struct.softing_priv* @netdev_priv(%struct.net_device* %70)
  store %struct.softing_priv* %71, %struct.softing_priv** %8, align 8
  %72 = load %struct.net_device*, %struct.net_device** %4, align 8
  %73 = load %struct.net_device*, %struct.net_device** %9, align 8
  %74 = icmp ne %struct.net_device* %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load %struct.net_device*, %struct.net_device** %9, align 8
  %77 = call i32 @netif_stop_queue(%struct.net_device* %76)
  br label %78

78:                                               ; preds = %75, %69
  %79 = load %struct.net_device*, %struct.net_device** %9, align 8
  %80 = call i64 @netif_running(%struct.net_device* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %103

82:                                               ; preds = %78
  %83 = load %struct.net_device*, %struct.net_device** %4, align 8
  %84 = load %struct.net_device*, %struct.net_device** %9, align 8
  %85 = icmp ne %struct.net_device* %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  %87 = load i32, i32* %11, align 4
  %88 = shl i32 1, %87
  %89 = load i32, i32* %10, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %10, align 4
  br label %91

91:                                               ; preds = %86, %82
  %92 = load %struct.softing_priv*, %struct.softing_priv** %8, align 8
  %93 = getelementptr inbounds %struct.softing_priv, %struct.softing_priv* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 2
  store i64 0, i64* %94, align 8
  %95 = load %struct.softing_priv*, %struct.softing_priv** %8, align 8
  %96 = getelementptr inbounds %struct.softing_priv, %struct.softing_priv* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  store i64 0, i64* %97, align 8
  %98 = load %struct.softing_priv*, %struct.softing_priv** %8, align 8
  %99 = getelementptr inbounds %struct.softing_priv, %struct.softing_priv* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  store i64 0, i64* %100, align 8
  %101 = load %struct.net_device*, %struct.net_device** %9, align 8
  %102 = call i32 @close_candev(%struct.net_device* %101)
  br label %103

103:                                              ; preds = %91, %78
  %104 = load i32, i32* @CAN_STATE_STOPPED, align 4
  %105 = load %struct.softing_priv*, %struct.softing_priv** %8, align 8
  %106 = getelementptr inbounds %struct.softing_priv, %struct.softing_priv* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 2
  store i32 %104, i32* %107, align 8
  br label %108

108:                                              ; preds = %103, %68
  %109 = load i32, i32* %11, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %11, align 4
  br label %51

111:                                              ; preds = %51
  %112 = load %struct.softing*, %struct.softing** %7, align 8
  %113 = getelementptr inbounds %struct.softing, %struct.softing* %112, i32 0, i32 5
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  store i64 0, i64* %114, align 8
  %115 = load %struct.softing*, %struct.softing** %7, align 8
  %116 = call i32 @softing_enable_irq(%struct.softing* %115, i32 0)
  %117 = load %struct.softing*, %struct.softing** %7, align 8
  %118 = call i32 @softing_reset_chip(%struct.softing* %117)
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* %6, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %111
  br label %738

122:                                              ; preds = %111
  %123 = load i32, i32* %10, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %122
  br label %730

126:                                              ; preds = %122
  %127 = load i32, i32* %10, align 4
  %128 = and i32 %127, 1
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %154

130:                                              ; preds = %126
  %131 = load i32, i32* %10, align 4
  %132 = and i32 %131, 2
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %154

134:                                              ; preds = %130
  %135 = load %struct.softing*, %struct.softing** %7, align 8
  %136 = getelementptr inbounds %struct.softing, %struct.softing* %135, i32 0, i32 0
  %137 = load %struct.net_device**, %struct.net_device*** %136, align 8
  %138 = getelementptr inbounds %struct.net_device*, %struct.net_device** %137, i64 0
  %139 = load %struct.net_device*, %struct.net_device** %138, align 8
  %140 = call i64 @softing_error_reporting(%struct.net_device* %139)
  %141 = load %struct.softing*, %struct.softing** %7, align 8
  %142 = getelementptr inbounds %struct.softing, %struct.softing* %141, i32 0, i32 0
  %143 = load %struct.net_device**, %struct.net_device*** %142, align 8
  %144 = getelementptr inbounds %struct.net_device*, %struct.net_device** %143, i64 1
  %145 = load %struct.net_device*, %struct.net_device** %144, align 8
  %146 = call i64 @softing_error_reporting(%struct.net_device* %145)
  %147 = icmp ne i64 %140, %146
  br i1 %147, label %148, label %154

148:                                              ; preds = %134
  %149 = load %struct.softing*, %struct.softing** %7, align 8
  %150 = getelementptr inbounds %struct.softing, %struct.softing* %149, i32 0, i32 4
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  %153 = call i32 @dev_alert(i32* %152, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %735

154:                                              ; preds = %134, %130, %126
  store i32 0, i32* %12, align 4
  %155 = load i32, i32* %10, align 4
  %156 = and i32 %155, 1
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %339

158:                                              ; preds = %154
  %159 = load %struct.softing*, %struct.softing** %7, align 8
  %160 = getelementptr inbounds %struct.softing, %struct.softing* %159, i32 0, i32 0
  %161 = load %struct.net_device**, %struct.net_device*** %160, align 8
  %162 = getelementptr inbounds %struct.net_device*, %struct.net_device** %161, i64 0
  %163 = load %struct.net_device*, %struct.net_device** %162, align 8
  store %struct.net_device* %163, %struct.net_device** %9, align 8
  %164 = load %struct.net_device*, %struct.net_device** %9, align 8
  %165 = call %struct.softing_priv* @netdev_priv(%struct.net_device* %164)
  store %struct.softing_priv* %165, %struct.softing_priv** %8, align 8
  %166 = load %struct.net_device*, %struct.net_device** %9, align 8
  %167 = call i64 @softing_error_reporting(%struct.net_device* %166)
  %168 = load i32, i32* %12, align 4
  %169 = sext i32 %168 to i64
  %170 = add nsw i64 %169, %167
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %12, align 4
  %172 = load %struct.softing_priv*, %struct.softing_priv** %8, align 8
  %173 = getelementptr inbounds %struct.softing_priv, %struct.softing_priv* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 3
  store %struct.can_bittiming* %174, %struct.can_bittiming** %14, align 8
  %175 = load %struct.can_bittiming*, %struct.can_bittiming** %14, align 8
  %176 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.softing*, %struct.softing** %7, align 8
  %179 = getelementptr inbounds %struct.softing, %struct.softing* %178, i32 0, i32 2
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* @DPRAM_FCT_PARAM, align 4
  %182 = add nsw i32 %181, 2
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %180, i64 %183
  %185 = call i32 @iowrite16(i32 %177, i32* %184)
  %186 = load %struct.can_bittiming*, %struct.can_bittiming** %14, align 8
  %187 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.softing*, %struct.softing** %7, align 8
  %190 = getelementptr inbounds %struct.softing, %struct.softing* %189, i32 0, i32 2
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* @DPRAM_FCT_PARAM, align 4
  %193 = add nsw i32 %192, 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %191, i64 %194
  %196 = call i32 @iowrite16(i32 %188, i32* %195)
  %197 = load %struct.can_bittiming*, %struct.can_bittiming** %14, align 8
  %198 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.can_bittiming*, %struct.can_bittiming** %14, align 8
  %201 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 4
  %203 = add nsw i32 %199, %202
  %204 = load %struct.softing*, %struct.softing** %7, align 8
  %205 = getelementptr inbounds %struct.softing, %struct.softing* %204, i32 0, i32 2
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* @DPRAM_FCT_PARAM, align 4
  %208 = add nsw i32 %207, 6
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %206, i64 %209
  %211 = call i32 @iowrite16(i32 %203, i32* %210)
  %212 = load %struct.can_bittiming*, %struct.can_bittiming** %14, align 8
  %213 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %212, i32 0, i32 4
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.softing*, %struct.softing** %7, align 8
  %216 = getelementptr inbounds %struct.softing, %struct.softing* %215, i32 0, i32 2
  %217 = load i32*, i32** %216, align 8
  %218 = load i32, i32* @DPRAM_FCT_PARAM, align 4
  %219 = add nsw i32 %218, 8
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %217, i64 %220
  %222 = call i32 @iowrite16(i32 %214, i32* %221)
  %223 = load %struct.softing_priv*, %struct.softing_priv** %8, align 8
  %224 = getelementptr inbounds %struct.softing_priv, %struct.softing_priv* %223, i32 0, i32 2
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* @CAN_CTRLMODE_3_SAMPLES, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  %230 = zext i1 %229 to i64
  %231 = select i1 %229, i32 1, i32 0
  %232 = load %struct.softing*, %struct.softing** %7, align 8
  %233 = getelementptr inbounds %struct.softing, %struct.softing* %232, i32 0, i32 2
  %234 = load i32*, i32** %233, align 8
  %235 = load i32, i32* @DPRAM_FCT_PARAM, align 4
  %236 = add nsw i32 %235, 10
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %234, i64 %237
  %239 = call i32 @iowrite16(i32 %231, i32* %238)
  %240 = load %struct.softing*, %struct.softing** %7, align 8
  %241 = call i32 @softing_fct_cmd(%struct.softing* %240, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 %241, i32* %6, align 4
  %242 = load i32, i32* %6, align 4
  %243 = icmp slt i32 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %158
  br label %738

245:                                              ; preds = %158
  %246 = load %struct.softing*, %struct.softing** %7, align 8
  %247 = getelementptr inbounds %struct.softing, %struct.softing* %246, i32 0, i32 2
  %248 = load i32*, i32** %247, align 8
  %249 = load i32, i32* @DPRAM_FCT_PARAM, align 4
  %250 = add nsw i32 %249, 2
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %248, i64 %251
  %253 = call i32 @iowrite16(i32 0, i32* %252)
  %254 = load %struct.softing*, %struct.softing** %7, align 8
  %255 = getelementptr inbounds %struct.softing, %struct.softing* %254, i32 0, i32 2
  %256 = load i32*, i32** %255, align 8
  %257 = load i32, i32* @DPRAM_FCT_PARAM, align 4
  %258 = add nsw i32 %257, 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %256, i64 %259
  %261 = call i32 @iowrite16(i32 0, i32* %260)
  %262 = load %struct.softing*, %struct.softing** %7, align 8
  %263 = call i32 @softing_fct_cmd(%struct.softing* %262, i32 3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i32 %263, i32* %6, align 4
  %264 = load i32, i32* %6, align 4
  %265 = icmp slt i32 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %245
  br label %738

267:                                              ; preds = %245
  %268 = load %struct.softing*, %struct.softing** %7, align 8
  %269 = getelementptr inbounds %struct.softing, %struct.softing* %268, i32 0, i32 2
  %270 = load i32*, i32** %269, align 8
  %271 = load i32, i32* @DPRAM_FCT_PARAM, align 4
  %272 = add nsw i32 %271, 2
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %270, i64 %273
  %275 = call i32 @iowrite16(i32 0, i32* %274)
  %276 = load %struct.softing*, %struct.softing** %7, align 8
  %277 = getelementptr inbounds %struct.softing, %struct.softing* %276, i32 0, i32 2
  %278 = load i32*, i32** %277, align 8
  %279 = load i32, i32* @DPRAM_FCT_PARAM, align 4
  %280 = add nsw i32 %279, 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %278, i64 %281
  %283 = call i32 @iowrite16(i32 2047, i32* %282)
  %284 = load %struct.softing*, %struct.softing** %7, align 8
  %285 = getelementptr inbounds %struct.softing, %struct.softing* %284, i32 0, i32 2
  %286 = load i32*, i32** %285, align 8
  %287 = load i32, i32* @DPRAM_FCT_PARAM, align 4
  %288 = add nsw i32 %287, 6
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %286, i64 %289
  %291 = call i32 @iowrite16(i32 0, i32* %290)
  %292 = load %struct.softing*, %struct.softing** %7, align 8
  %293 = getelementptr inbounds %struct.softing, %struct.softing* %292, i32 0, i32 2
  %294 = load i32*, i32** %293, align 8
  %295 = load i32, i32* @DPRAM_FCT_PARAM, align 4
  %296 = add nsw i32 %295, 8
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %294, i64 %297
  %299 = call i32 @iowrite16(i32 65535, i32* %298)
  %300 = load %struct.softing*, %struct.softing** %7, align 8
  %301 = getelementptr inbounds %struct.softing, %struct.softing* %300, i32 0, i32 2
  %302 = load i32*, i32** %301, align 8
  %303 = load i32, i32* @DPRAM_FCT_PARAM, align 4
  %304 = add nsw i32 %303, 10
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i32, i32* %302, i64 %305
  %307 = call i32 @iowrite16(i32 0, i32* %306)
  %308 = load %struct.softing*, %struct.softing** %7, align 8
  %309 = getelementptr inbounds %struct.softing, %struct.softing* %308, i32 0, i32 2
  %310 = load i32*, i32** %309, align 8
  %311 = load i32, i32* @DPRAM_FCT_PARAM, align 4
  %312 = add nsw i32 %311, 12
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i32, i32* %310, i64 %313
  %315 = call i32 @iowrite16(i32 8191, i32* %314)
  %316 = load %struct.softing*, %struct.softing** %7, align 8
  %317 = call i32 @softing_fct_cmd(%struct.softing* %316, i32 7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i32 %317, i32* %6, align 4
  %318 = load i32, i32* %6, align 4
  %319 = icmp slt i32 %318, 0
  br i1 %319, label %320, label %321

320:                                              ; preds = %267
  br label %738

321:                                              ; preds = %267
  %322 = load %struct.softing_priv*, %struct.softing_priv** %8, align 8
  %323 = getelementptr inbounds %struct.softing_priv, %struct.softing_priv* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 4
  %325 = load %struct.softing*, %struct.softing** %7, align 8
  %326 = getelementptr inbounds %struct.softing, %struct.softing* %325, i32 0, i32 2
  %327 = load i32*, i32** %326, align 8
  %328 = load i32, i32* @DPRAM_FCT_PARAM, align 4
  %329 = add nsw i32 %328, 2
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i32, i32* %327, i64 %330
  %332 = call i32 @iowrite16(i32 %324, i32* %331)
  %333 = load %struct.softing*, %struct.softing** %7, align 8
  %334 = call i32 @softing_fct_cmd(%struct.softing* %333, i32 5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  store i32 %334, i32* %6, align 4
  %335 = load i32, i32* %6, align 4
  %336 = icmp slt i32 %335, 0
  br i1 %336, label %337, label %338

337:                                              ; preds = %321
  br label %738

338:                                              ; preds = %321
  br label %339

339:                                              ; preds = %338, %154
  %340 = load i32, i32* %10, align 4
  %341 = and i32 %340, 2
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %524

343:                                              ; preds = %339
  %344 = load %struct.softing*, %struct.softing** %7, align 8
  %345 = getelementptr inbounds %struct.softing, %struct.softing* %344, i32 0, i32 0
  %346 = load %struct.net_device**, %struct.net_device*** %345, align 8
  %347 = getelementptr inbounds %struct.net_device*, %struct.net_device** %346, i64 1
  %348 = load %struct.net_device*, %struct.net_device** %347, align 8
  store %struct.net_device* %348, %struct.net_device** %9, align 8
  %349 = load %struct.net_device*, %struct.net_device** %9, align 8
  %350 = call %struct.softing_priv* @netdev_priv(%struct.net_device* %349)
  store %struct.softing_priv* %350, %struct.softing_priv** %8, align 8
  %351 = load %struct.net_device*, %struct.net_device** %9, align 8
  %352 = call i64 @softing_error_reporting(%struct.net_device* %351)
  %353 = load i32, i32* %12, align 4
  %354 = sext i32 %353 to i64
  %355 = add nsw i64 %354, %352
  %356 = trunc i64 %355 to i32
  store i32 %356, i32* %12, align 4
  %357 = load %struct.softing_priv*, %struct.softing_priv** %8, align 8
  %358 = getelementptr inbounds %struct.softing_priv, %struct.softing_priv* %357, i32 0, i32 2
  %359 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %358, i32 0, i32 3
  store %struct.can_bittiming* %359, %struct.can_bittiming** %14, align 8
  %360 = load %struct.can_bittiming*, %struct.can_bittiming** %14, align 8
  %361 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 4
  %363 = load %struct.softing*, %struct.softing** %7, align 8
  %364 = getelementptr inbounds %struct.softing, %struct.softing* %363, i32 0, i32 2
  %365 = load i32*, i32** %364, align 8
  %366 = load i32, i32* @DPRAM_FCT_PARAM, align 4
  %367 = add nsw i32 %366, 2
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i32, i32* %365, i64 %368
  %370 = call i32 @iowrite16(i32 %362, i32* %369)
  %371 = load %struct.can_bittiming*, %struct.can_bittiming** %14, align 8
  %372 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %371, i32 0, i32 1
  %373 = load i32, i32* %372, align 4
  %374 = load %struct.softing*, %struct.softing** %7, align 8
  %375 = getelementptr inbounds %struct.softing, %struct.softing* %374, i32 0, i32 2
  %376 = load i32*, i32** %375, align 8
  %377 = load i32, i32* @DPRAM_FCT_PARAM, align 4
  %378 = add nsw i32 %377, 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds i32, i32* %376, i64 %379
  %381 = call i32 @iowrite16(i32 %373, i32* %380)
  %382 = load %struct.can_bittiming*, %struct.can_bittiming** %14, align 8
  %383 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %382, i32 0, i32 2
  %384 = load i32, i32* %383, align 4
  %385 = load %struct.can_bittiming*, %struct.can_bittiming** %14, align 8
  %386 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %385, i32 0, i32 3
  %387 = load i32, i32* %386, align 4
  %388 = add nsw i32 %384, %387
  %389 = load %struct.softing*, %struct.softing** %7, align 8
  %390 = getelementptr inbounds %struct.softing, %struct.softing* %389, i32 0, i32 2
  %391 = load i32*, i32** %390, align 8
  %392 = load i32, i32* @DPRAM_FCT_PARAM, align 4
  %393 = add nsw i32 %392, 6
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds i32, i32* %391, i64 %394
  %396 = call i32 @iowrite16(i32 %388, i32* %395)
  %397 = load %struct.can_bittiming*, %struct.can_bittiming** %14, align 8
  %398 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %397, i32 0, i32 4
  %399 = load i32, i32* %398, align 4
  %400 = load %struct.softing*, %struct.softing** %7, align 8
  %401 = getelementptr inbounds %struct.softing, %struct.softing* %400, i32 0, i32 2
  %402 = load i32*, i32** %401, align 8
  %403 = load i32, i32* @DPRAM_FCT_PARAM, align 4
  %404 = add nsw i32 %403, 8
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i32, i32* %402, i64 %405
  %407 = call i32 @iowrite16(i32 %399, i32* %406)
  %408 = load %struct.softing_priv*, %struct.softing_priv** %8, align 8
  %409 = getelementptr inbounds %struct.softing_priv, %struct.softing_priv* %408, i32 0, i32 2
  %410 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %409, i32 0, i32 0
  %411 = load i32, i32* %410, align 8
  %412 = load i32, i32* @CAN_CTRLMODE_3_SAMPLES, align 4
  %413 = and i32 %411, %412
  %414 = icmp ne i32 %413, 0
  %415 = zext i1 %414 to i64
  %416 = select i1 %414, i32 1, i32 0
  %417 = load %struct.softing*, %struct.softing** %7, align 8
  %418 = getelementptr inbounds %struct.softing, %struct.softing* %417, i32 0, i32 2
  %419 = load i32*, i32** %418, align 8
  %420 = load i32, i32* @DPRAM_FCT_PARAM, align 4
  %421 = add nsw i32 %420, 10
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds i32, i32* %419, i64 %422
  %424 = call i32 @iowrite16(i32 %416, i32* %423)
  %425 = load %struct.softing*, %struct.softing** %7, align 8
  %426 = call i32 @softing_fct_cmd(%struct.softing* %425, i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  store i32 %426, i32* %6, align 4
  %427 = load i32, i32* %6, align 4
  %428 = icmp slt i32 %427, 0
  br i1 %428, label %429, label %430

429:                                              ; preds = %343
  br label %738

430:                                              ; preds = %343
  %431 = load %struct.softing*, %struct.softing** %7, align 8
  %432 = getelementptr inbounds %struct.softing, %struct.softing* %431, i32 0, i32 2
  %433 = load i32*, i32** %432, align 8
  %434 = load i32, i32* @DPRAM_FCT_PARAM, align 4
  %435 = add nsw i32 %434, 2
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds i32, i32* %433, i64 %436
  %438 = call i32 @iowrite16(i32 0, i32* %437)
  %439 = load %struct.softing*, %struct.softing** %7, align 8
  %440 = getelementptr inbounds %struct.softing, %struct.softing* %439, i32 0, i32 2
  %441 = load i32*, i32** %440, align 8
  %442 = load i32, i32* @DPRAM_FCT_PARAM, align 4
  %443 = add nsw i32 %442, 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds i32, i32* %441, i64 %444
  %446 = call i32 @iowrite16(i32 0, i32* %445)
  %447 = load %struct.softing*, %struct.softing** %7, align 8
  %448 = call i32 @softing_fct_cmd(%struct.softing* %447, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  store i32 %448, i32* %6, align 4
  %449 = load i32, i32* %6, align 4
  %450 = icmp slt i32 %449, 0
  br i1 %450, label %451, label %452

451:                                              ; preds = %430
  br label %738

452:                                              ; preds = %430
  %453 = load %struct.softing*, %struct.softing** %7, align 8
  %454 = getelementptr inbounds %struct.softing, %struct.softing* %453, i32 0, i32 2
  %455 = load i32*, i32** %454, align 8
  %456 = load i32, i32* @DPRAM_FCT_PARAM, align 4
  %457 = add nsw i32 %456, 2
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds i32, i32* %455, i64 %458
  %460 = call i32 @iowrite16(i32 0, i32* %459)
  %461 = load %struct.softing*, %struct.softing** %7, align 8
  %462 = getelementptr inbounds %struct.softing, %struct.softing* %461, i32 0, i32 2
  %463 = load i32*, i32** %462, align 8
  %464 = load i32, i32* @DPRAM_FCT_PARAM, align 4
  %465 = add nsw i32 %464, 4
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds i32, i32* %463, i64 %466
  %468 = call i32 @iowrite16(i32 2047, i32* %467)
  %469 = load %struct.softing*, %struct.softing** %7, align 8
  %470 = getelementptr inbounds %struct.softing, %struct.softing* %469, i32 0, i32 2
  %471 = load i32*, i32** %470, align 8
  %472 = load i32, i32* @DPRAM_FCT_PARAM, align 4
  %473 = add nsw i32 %472, 6
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds i32, i32* %471, i64 %474
  %476 = call i32 @iowrite16(i32 0, i32* %475)
  %477 = load %struct.softing*, %struct.softing** %7, align 8
  %478 = getelementptr inbounds %struct.softing, %struct.softing* %477, i32 0, i32 2
  %479 = load i32*, i32** %478, align 8
  %480 = load i32, i32* @DPRAM_FCT_PARAM, align 4
  %481 = add nsw i32 %480, 8
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds i32, i32* %479, i64 %482
  %484 = call i32 @iowrite16(i32 65535, i32* %483)
  %485 = load %struct.softing*, %struct.softing** %7, align 8
  %486 = getelementptr inbounds %struct.softing, %struct.softing* %485, i32 0, i32 2
  %487 = load i32*, i32** %486, align 8
  %488 = load i32, i32* @DPRAM_FCT_PARAM, align 4
  %489 = add nsw i32 %488, 10
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds i32, i32* %487, i64 %490
  %492 = call i32 @iowrite16(i32 0, i32* %491)
  %493 = load %struct.softing*, %struct.softing** %7, align 8
  %494 = getelementptr inbounds %struct.softing, %struct.softing* %493, i32 0, i32 2
  %495 = load i32*, i32** %494, align 8
  %496 = load i32, i32* @DPRAM_FCT_PARAM, align 4
  %497 = add nsw i32 %496, 12
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds i32, i32* %495, i64 %498
  %500 = call i32 @iowrite16(i32 8191, i32* %499)
  %501 = load %struct.softing*, %struct.softing** %7, align 8
  %502 = call i32 @softing_fct_cmd(%struct.softing* %501, i32 8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  store i32 %502, i32* %6, align 4
  %503 = load i32, i32* %6, align 4
  %504 = icmp slt i32 %503, 0
  br i1 %504, label %505, label %506

505:                                              ; preds = %452
  br label %738

506:                                              ; preds = %452
  %507 = load %struct.softing_priv*, %struct.softing_priv** %8, align 8
  %508 = getelementptr inbounds %struct.softing_priv, %struct.softing_priv* %507, i32 0, i32 1
  %509 = load i32, i32* %508, align 4
  %510 = load %struct.softing*, %struct.softing** %7, align 8
  %511 = getelementptr inbounds %struct.softing, %struct.softing* %510, i32 0, i32 2
  %512 = load i32*, i32** %511, align 8
  %513 = load i32, i32* @DPRAM_FCT_PARAM, align 4
  %514 = add nsw i32 %513, 2
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds i32, i32* %512, i64 %515
  %517 = call i32 @iowrite16(i32 %509, i32* %516)
  %518 = load %struct.softing*, %struct.softing** %7, align 8
  %519 = call i32 @softing_fct_cmd(%struct.softing* %518, i32 6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  store i32 %519, i32* %6, align 4
  %520 = load i32, i32* %6, align 4
  %521 = icmp slt i32 %520, 0
  br i1 %521, label %522, label %523

522:                                              ; preds = %506
  br label %738

523:                                              ; preds = %506
  br label %524

524:                                              ; preds = %523, %339
  %525 = load %struct.softing*, %struct.softing** %7, align 8
  %526 = getelementptr inbounds %struct.softing, %struct.softing* %525, i32 0, i32 2
  %527 = load i32*, i32** %526, align 8
  %528 = load i32, i32* @DPRAM_FCT_PARAM, align 4
  %529 = add nsw i32 %528, 2
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds i32, i32* %527, i64 %530
  %532 = call i32 @iowrite16(i32 1, i32* %531)
  %533 = load %struct.softing*, %struct.softing** %7, align 8
  %534 = getelementptr inbounds %struct.softing, %struct.softing* %533, i32 0, i32 2
  %535 = load i32*, i32** %534, align 8
  %536 = load i32, i32* @DPRAM_FCT_PARAM, align 4
  %537 = add nsw i32 %536, 4
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds i32, i32* %535, i64 %538
  %540 = call i32 @iowrite16(i32 1, i32* %539)
  %541 = load %struct.softing*, %struct.softing** %7, align 8
  %542 = getelementptr inbounds %struct.softing, %struct.softing* %541, i32 0, i32 2
  %543 = load i32*, i32** %542, align 8
  %544 = load i32, i32* @DPRAM_FCT_PARAM, align 4
  %545 = add nsw i32 %544, 6
  %546 = sext i32 %545 to i64
  %547 = getelementptr inbounds i32, i32* %543, i64 %546
  %548 = call i32 @iowrite16(i32 1, i32* %547)
  %549 = load %struct.softing*, %struct.softing** %7, align 8
  %550 = getelementptr inbounds %struct.softing, %struct.softing* %549, i32 0, i32 2
  %551 = load i32*, i32** %550, align 8
  %552 = load i32, i32* @DPRAM_FCT_PARAM, align 4
  %553 = add nsw i32 %552, 8
  %554 = sext i32 %553 to i64
  %555 = getelementptr inbounds i32, i32* %551, i64 %554
  %556 = call i32 @iowrite16(i32 1, i32* %555)
  %557 = load %struct.softing*, %struct.softing** %7, align 8
  %558 = getelementptr inbounds %struct.softing, %struct.softing* %557, i32 0, i32 2
  %559 = load i32*, i32** %558, align 8
  %560 = load i32, i32* @DPRAM_FCT_PARAM, align 4
  %561 = add nsw i32 %560, 10
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds i32, i32* %559, i64 %562
  %564 = call i32 @iowrite16(i32 1, i32* %563)
  %565 = load %struct.softing*, %struct.softing** %7, align 8
  %566 = getelementptr inbounds %struct.softing, %struct.softing* %565, i32 0, i32 2
  %567 = load i32*, i32** %566, align 8
  %568 = load i32, i32* @DPRAM_FCT_PARAM, align 4
  %569 = add nsw i32 %568, 12
  %570 = sext i32 %569 to i64
  %571 = getelementptr inbounds i32, i32* %567, i64 %570
  %572 = call i32 @iowrite16(i32 1, i32* %571)
  %573 = load %struct.softing*, %struct.softing** %7, align 8
  %574 = getelementptr inbounds %struct.softing, %struct.softing* %573, i32 0, i32 2
  %575 = load i32*, i32** %574, align 8
  %576 = load i32, i32* @DPRAM_FCT_PARAM, align 4
  %577 = add nsw i32 %576, 14
  %578 = sext i32 %577 to i64
  %579 = getelementptr inbounds i32, i32* %575, i64 %578
  %580 = call i32 @iowrite16(i32 1, i32* %579)
  %581 = load %struct.softing*, %struct.softing** %7, align 8
  %582 = getelementptr inbounds %struct.softing, %struct.softing* %581, i32 0, i32 2
  %583 = load i32*, i32** %582, align 8
  %584 = load i32, i32* @DPRAM_FCT_PARAM, align 4
  %585 = add nsw i32 %584, 16
  %586 = sext i32 %585 to i64
  %587 = getelementptr inbounds i32, i32* %583, i64 %586
  %588 = call i32 @iowrite16(i32 1, i32* %587)
  %589 = load %struct.softing*, %struct.softing** %7, align 8
  %590 = getelementptr inbounds %struct.softing, %struct.softing* %589, i32 0, i32 2
  %591 = load i32*, i32** %590, align 8
  %592 = load i32, i32* @DPRAM_FCT_PARAM, align 4
  %593 = add nsw i32 %592, 18
  %594 = sext i32 %593 to i64
  %595 = getelementptr inbounds i32, i32* %591, i64 %594
  %596 = call i32 @iowrite16(i32 1, i32* %595)
  %597 = load %struct.softing*, %struct.softing** %7, align 8
  %598 = getelementptr inbounds %struct.softing, %struct.softing* %597, i32 0, i32 2
  %599 = load i32*, i32** %598, align 8
  %600 = load i32, i32* @DPRAM_FCT_PARAM, align 4
  %601 = add nsw i32 %600, 20
  %602 = sext i32 %601 to i64
  %603 = getelementptr inbounds i32, i32* %599, i64 %602
  %604 = call i32 @iowrite16(i32 1, i32* %603)
  %605 = load %struct.softing*, %struct.softing** %7, align 8
  %606 = call i32 @softing_fct_cmd(%struct.softing* %605, i32 17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  store i32 %606, i32* %6, align 4
  %607 = load i32, i32* %6, align 4
  %608 = icmp slt i32 %607, 0
  br i1 %608, label %609, label %610

609:                                              ; preds = %524
  br label %738

610:                                              ; preds = %524
  %611 = load %struct.softing*, %struct.softing** %7, align 8
  %612 = call i32 @softing_fct_cmd(%struct.softing* %611, i32 36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  store i32 %612, i32* %6, align 4
  %613 = load i32, i32* %6, align 4
  %614 = icmp slt i32 %613, 0
  br i1 %614, label %615, label %616

615:                                              ; preds = %610
  br label %738

616:                                              ; preds = %610
  %617 = load %struct.softing*, %struct.softing** %7, align 8
  %618 = call i32 @softing_fct_cmd(%struct.softing* %617, i32 13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  store i32 %618, i32* %6, align 4
  %619 = load i32, i32* %6, align 4
  %620 = icmp slt i32 %619, 0
  br i1 %620, label %621, label %622

621:                                              ; preds = %616
  br label %738

622:                                              ; preds = %616
  %623 = load %struct.softing*, %struct.softing** %7, align 8
  %624 = call i32 @softing_fct_cmd(%struct.softing* %623, i32 14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  store i32 %624, i32* %6, align 4
  %625 = load i32, i32* %6, align 4
  %626 = icmp slt i32 %625, 0
  br i1 %626, label %627, label %628

627:                                              ; preds = %622
  br label %738

628:                                              ; preds = %622
  %629 = load %struct.softing*, %struct.softing** %7, align 8
  %630 = call i32 @softing_fct_cmd(%struct.softing* %629, i32 11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  store i32 %630, i32* %6, align 4
  %631 = load i32, i32* %6, align 4
  %632 = icmp slt i32 %631, 0
  br i1 %632, label %633, label %634

633:                                              ; preds = %628
  br label %738

634:                                              ; preds = %628
  %635 = load %struct.softing*, %struct.softing** %7, align 8
  %636 = getelementptr inbounds %struct.softing, %struct.softing* %635, i32 0, i32 2
  %637 = load i32*, i32** %636, align 8
  %638 = load i64, i64* @DPRAM_INFO_BUSSTATE, align 8
  %639 = getelementptr inbounds i32, i32* %637, i64 %638
  %640 = call i32 @iowrite8(i32 0, i32* %639)
  %641 = load %struct.softing*, %struct.softing** %7, align 8
  %642 = getelementptr inbounds %struct.softing, %struct.softing* %641, i32 0, i32 2
  %643 = load i32*, i32** %642, align 8
  %644 = load i64, i64* @DPRAM_INFO_BUSSTATE2, align 8
  %645 = getelementptr inbounds i32, i32* %643, i64 %644
  %646 = call i32 @iowrite8(i32 0, i32* %645)
  %647 = load %struct.softing*, %struct.softing** %7, align 8
  %648 = getelementptr inbounds %struct.softing, %struct.softing* %647, i32 0, i32 3
  %649 = load %struct.TYPE_11__*, %struct.TYPE_11__** %648, align 8
  %650 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %649, i32 0, i32 0
  %651 = load i32, i32* %650, align 4
  %652 = icmp slt i32 %651, 2
  br i1 %652, label %653, label %661

653:                                              ; preds = %634
  %654 = load %struct.softing*, %struct.softing** %7, align 8
  %655 = getelementptr inbounds %struct.softing, %struct.softing* %654, i32 0, i32 2
  %656 = load i32*, i32** %655, align 8
  %657 = load i64, i64* @DPRAM_V2_IRQ_TOHOST, align 8
  %658 = getelementptr inbounds i32, i32* %656, i64 %657
  %659 = call i32 @iowrite8(i32 0, i32* %658)
  %660 = call i32 (...) @wmb()
  br label %661

661:                                              ; preds = %653, %634
  %662 = load %struct.softing*, %struct.softing** %7, align 8
  %663 = call i32 @softing_initialize_timestamp(%struct.softing* %662)
  %664 = call i32 @memset(%struct.can_frame* %13, i32 0, i32 8)
  %665 = load i32, i32* @CAN_ERR_FLAG, align 4
  %666 = load i32, i32* @CAN_ERR_RESTARTED, align 4
  %667 = or i32 %665, %666
  %668 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %13, i32 0, i32 0
  store i32 %667, i32* %668, align 4
  %669 = load i32, i32* @CAN_ERR_DLC, align 4
  %670 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %13, i32 0, i32 1
  store i32 %669, i32* %670, align 4
  store i32 0, i32* %11, align 4
  br label %671

671:                                              ; preds = %720, %661
  %672 = load i32, i32* %11, align 4
  %673 = load %struct.softing*, %struct.softing** %7, align 8
  %674 = getelementptr inbounds %struct.softing, %struct.softing* %673, i32 0, i32 0
  %675 = load %struct.net_device**, %struct.net_device*** %674, align 8
  %676 = call i32 @ARRAY_SIZE(%struct.net_device** %675)
  %677 = icmp slt i32 %672, %676
  br i1 %677, label %678, label %723

678:                                              ; preds = %671
  %679 = load i32, i32* %10, align 4
  %680 = load i32, i32* %11, align 4
  %681 = shl i32 1, %680
  %682 = and i32 %679, %681
  %683 = icmp ne i32 %682, 0
  br i1 %683, label %685, label %684

684:                                              ; preds = %678
  br label %720

685:                                              ; preds = %678
  %686 = load %struct.softing*, %struct.softing** %7, align 8
  %687 = getelementptr inbounds %struct.softing, %struct.softing* %686, i32 0, i32 0
  %688 = load %struct.net_device**, %struct.net_device*** %687, align 8
  %689 = load i32, i32* %11, align 4
  %690 = sext i32 %689 to i64
  %691 = getelementptr inbounds %struct.net_device*, %struct.net_device** %688, i64 %690
  %692 = load %struct.net_device*, %struct.net_device** %691, align 8
  store %struct.net_device* %692, %struct.net_device** %9, align 8
  %693 = load %struct.net_device*, %struct.net_device** %9, align 8
  %694 = icmp ne %struct.net_device* %693, null
  br i1 %694, label %696, label %695

695:                                              ; preds = %685
  br label %720

696:                                              ; preds = %685
  %697 = load %struct.net_device*, %struct.net_device** %9, align 8
  %698 = call %struct.softing_priv* @netdev_priv(%struct.net_device* %697)
  store %struct.softing_priv* %698, %struct.softing_priv** %8, align 8
  %699 = load i32, i32* @CAN_STATE_ERROR_ACTIVE, align 4
  %700 = load %struct.softing_priv*, %struct.softing_priv** %8, align 8
  %701 = getelementptr inbounds %struct.softing_priv, %struct.softing_priv* %700, i32 0, i32 2
  %702 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %701, i32 0, i32 2
  store i32 %699, i32* %702, align 8
  %703 = load %struct.net_device*, %struct.net_device** %9, align 8
  %704 = call i32 @open_candev(%struct.net_device* %703)
  %705 = load %struct.net_device*, %struct.net_device** %4, align 8
  %706 = load %struct.net_device*, %struct.net_device** %9, align 8
  %707 = icmp ne %struct.net_device* %705, %706
  br i1 %707, label %708, label %717

708:                                              ; preds = %696
  %709 = load %struct.net_device*, %struct.net_device** %9, align 8
  %710 = call i32 @softing_netdev_rx(%struct.net_device* %709, %struct.can_frame* %13, i32 0)
  %711 = load %struct.softing_priv*, %struct.softing_priv** %8, align 8
  %712 = getelementptr inbounds %struct.softing_priv, %struct.softing_priv* %711, i32 0, i32 2
  %713 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %712, i32 0, i32 1
  %714 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %713, i32 0, i32 0
  %715 = load i32, i32* %714, align 4
  %716 = add nsw i32 %715, 1
  store i32 %716, i32* %714, align 4
  br label %717

717:                                              ; preds = %708, %696
  %718 = load %struct.net_device*, %struct.net_device** %9, align 8
  %719 = call i32 @netif_wake_queue(%struct.net_device* %718)
  br label %720

720:                                              ; preds = %717, %695, %684
  %721 = load i32, i32* %11, align 4
  %722 = add nsw i32 %721, 1
  store i32 %722, i32* %11, align 4
  br label %671

723:                                              ; preds = %671
  %724 = load %struct.softing*, %struct.softing** %7, align 8
  %725 = call i32 @softing_enable_irq(%struct.softing* %724, i32 1)
  store i32 %725, i32* %6, align 4
  %726 = load i32, i32* %6, align 4
  %727 = icmp ne i32 %726, 0
  br i1 %727, label %728, label %729

728:                                              ; preds = %723
  br label %738

729:                                              ; preds = %723
  br label %730

730:                                              ; preds = %729, %125
  %731 = load %struct.softing*, %struct.softing** %7, align 8
  %732 = getelementptr inbounds %struct.softing, %struct.softing* %731, i32 0, i32 1
  %733 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %732, i32 0, i32 0
  %734 = call i32 @mutex_unlock(i32* %733)
  store i32 0, i32* %3, align 4
  br label %773

735:                                              ; preds = %148
  %736 = load i32, i32* @EINVAL, align 4
  %737 = sub nsw i32 0, %736
  store i32 %737, i32* %6, align 4
  br label %738

738:                                              ; preds = %735, %728, %633, %627, %621, %615, %609, %522, %505, %451, %429, %337, %320, %266, %244, %121
  %739 = load %struct.softing*, %struct.softing** %7, align 8
  %740 = call i32 @softing_enable_irq(%struct.softing* %739, i32 0)
  %741 = load %struct.softing*, %struct.softing** %7, align 8
  %742 = call i32 @softing_reset_chip(%struct.softing* %741)
  %743 = load %struct.softing*, %struct.softing** %7, align 8
  %744 = getelementptr inbounds %struct.softing, %struct.softing* %743, i32 0, i32 1
  %745 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %744, i32 0, i32 0
  %746 = call i32 @mutex_unlock(i32* %745)
  store i32 0, i32* %11, align 4
  br label %747

747:                                              ; preds = %768, %738
  %748 = load i32, i32* %11, align 4
  %749 = load %struct.softing*, %struct.softing** %7, align 8
  %750 = getelementptr inbounds %struct.softing, %struct.softing* %749, i32 0, i32 0
  %751 = load %struct.net_device**, %struct.net_device*** %750, align 8
  %752 = call i32 @ARRAY_SIZE(%struct.net_device** %751)
  %753 = icmp slt i32 %748, %752
  br i1 %753, label %754, label %771

754:                                              ; preds = %747
  %755 = load %struct.softing*, %struct.softing** %7, align 8
  %756 = getelementptr inbounds %struct.softing, %struct.softing* %755, i32 0, i32 0
  %757 = load %struct.net_device**, %struct.net_device*** %756, align 8
  %758 = load i32, i32* %11, align 4
  %759 = sext i32 %758 to i64
  %760 = getelementptr inbounds %struct.net_device*, %struct.net_device** %757, i64 %759
  %761 = load %struct.net_device*, %struct.net_device** %760, align 8
  store %struct.net_device* %761, %struct.net_device** %9, align 8
  %762 = load %struct.net_device*, %struct.net_device** %9, align 8
  %763 = icmp ne %struct.net_device* %762, null
  br i1 %763, label %765, label %764

764:                                              ; preds = %754
  br label %768

765:                                              ; preds = %754
  %766 = load %struct.net_device*, %struct.net_device** %9, align 8
  %767 = call i32 @dev_close(%struct.net_device* %766)
  br label %768

768:                                              ; preds = %765, %764
  %769 = load i32, i32* %11, align 4
  %770 = add nsw i32 %769, 1
  store i32 %770, i32* %11, align 4
  br label %747

771:                                              ; preds = %747
  %772 = load i32, i32* %6, align 4
  store i32 %772, i32* %3, align 4
  br label %773

773:                                              ; preds = %771, %730, %35, %25
  %774 = load i32, i32* %3, align 4
  ret i32 %774
}

declare dso_local %struct.softing_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.net_device**) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @close_candev(%struct.net_device*) #1

declare dso_local i32 @softing_enable_irq(%struct.softing*, i32) #1

declare dso_local i32 @softing_reset_chip(%struct.softing*) #1

declare dso_local i64 @softing_error_reporting(%struct.net_device*) #1

declare dso_local i32 @dev_alert(i32*, i8*) #1

declare dso_local i32 @iowrite16(i32, i32*) #1

declare dso_local i32 @softing_fct_cmd(%struct.softing*, i32, i8*) #1

declare dso_local i32 @iowrite8(i32, i32*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @softing_initialize_timestamp(%struct.softing*) #1

declare dso_local i32 @memset(%struct.can_frame*, i32, i32) #1

declare dso_local i32 @open_candev(%struct.net_device*) #1

declare dso_local i32 @softing_netdev_rx(%struct.net_device*, %struct.can_frame*, i32) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_close(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
