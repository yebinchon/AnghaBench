; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_sun4i_can.c_sun4i_can_err.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_sun4i_can.c_sun4i_can_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32, i32, i32, i32 }
%struct.sun4ican_priv = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.can_frame = type { i32*, i32, i64 }
%struct.sk_buff = type { i32 }

@SUN4I_REG_ERRC_ADDR = common dso_local global i64 0, align 8
@SUN4I_INT_DATA_OR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"data overrun interrupt\0A\00", align 1
@CAN_ERR_CRTL = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_RX_OVERFLOW = common dso_local global i32 0, align 4
@SUN4I_CMD_CLEAR_OR_FLAG = common dso_local global i32 0, align 4
@SUN4I_INT_ERR_WRN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"error warning interrupt\0A\00", align 1
@SUN4I_STA_BUS_OFF = common dso_local global i32 0, align 4
@CAN_STATE_BUS_OFF = common dso_local global i32 0, align 4
@SUN4I_STA_ERR_STA = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_WARNING = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_ACTIVE = common dso_local global i32 0, align 4
@SUN4I_INT_BUS_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"bus error interrupt\0A\00", align 1
@SUN4I_REG_STA_ADDR = common dso_local global i64 0, align 8
@CAN_ERR_PROT = common dso_local global i32 0, align 4
@CAN_ERR_BUSERROR = common dso_local global i32 0, align 4
@SUN4I_STA_MASK_ERR = common dso_local global i32 0, align 4
@CAN_ERR_PROT_BIT = common dso_local global i32 0, align 4
@CAN_ERR_PROT_FORM = common dso_local global i32 0, align 4
@CAN_ERR_PROT_STUFF = common dso_local global i32 0, align 4
@SUN4I_STA_ERR_SEG_CODE = common dso_local global i32 0, align 4
@SUN4I_STA_ERR_DIR = common dso_local global i32 0, align 4
@CAN_ERR_PROT_TX = common dso_local global i32 0, align 4
@SUN4I_INT_ERR_PASSIVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"error passive interrupt\0A\00", align 1
@CAN_STATE_ERROR_PASSIVE = common dso_local global i32 0, align 4
@SUN4I_INT_ARB_LOST = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"arbitration lost interrupt\0A\00", align 1
@CAN_ERR_LOSTARB = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @sun4i_can_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_can_err(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sun4ican_priv*, align 8
  %9 = alloca %struct.net_device_stats*, align 8
  %10 = alloca %struct.can_frame*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = call %struct.sun4ican_priv* @netdev_priv(%struct.net_device* %20)
  store %struct.sun4ican_priv* %21, %struct.sun4ican_priv** %8, align 8
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  store %struct.net_device_stats* %23, %struct.net_device_stats** %9, align 8
  %24 = load %struct.sun4ican_priv*, %struct.sun4ican_priv** %8, align 8
  %25 = getelementptr inbounds %struct.sun4ican_priv, %struct.sun4ican_priv* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %12, align 4
  %28 = load %struct.net_device*, %struct.net_device** %5, align 8
  %29 = call %struct.sk_buff* @alloc_can_err_skb(%struct.net_device* %28, %struct.can_frame** %10)
  store %struct.sk_buff* %29, %struct.sk_buff** %11, align 8
  %30 = load %struct.sun4ican_priv*, %struct.sun4ican_priv** %8, align 8
  %31 = getelementptr inbounds %struct.sun4ican_priv, %struct.sun4ican_priv* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SUN4I_REG_ERRC_ADDR, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i8* @readl(i64 %34)
  %36 = ptrtoint i8* %35 to i32
  store i32 %36, i32* %17, align 4
  %37 = load i32, i32* %17, align 4
  %38 = lshr i32 %37, 16
  %39 = and i32 %38, 255
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %17, align 4
  %41 = and i32 %40, 255
  store i32 %41, i32* %16, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %43 = icmp ne %struct.sk_buff* %42, null
  br i1 %43, label %44, label %55

44:                                               ; preds = %3
  %45 = load i32, i32* %16, align 4
  %46 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %47 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 6
  store i32 %45, i32* %49, align 4
  %50 = load i32, i32* %15, align 4
  %51 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %52 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 7
  store i32 %50, i32* %54, align 4
  br label %55

55:                                               ; preds = %44, %3
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @SUN4I_INT_DATA_OR, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %93

60:                                               ; preds = %55
  %61 = load %struct.net_device*, %struct.net_device** %5, align 8
  %62 = call i32 @netdev_dbg(%struct.net_device* %61, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %63 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %64 = call i64 @likely(%struct.sk_buff* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %60
  %67 = load i32, i32* @CAN_ERR_CRTL, align 4
  %68 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %69 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  %72 = load i32, i32* @CAN_ERR_CRTL_RX_OVERFLOW, align 4
  %73 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %74 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  store i32 %72, i32* %76, align 4
  br label %77

77:                                               ; preds = %66, %60
  %78 = load %struct.net_device_stats*, %struct.net_device_stats** %9, align 8
  %79 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 4
  %82 = load %struct.net_device_stats*, %struct.net_device_stats** %9, align 8
  %83 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 4
  %86 = load %struct.net_device*, %struct.net_device** %5, align 8
  %87 = call i32 @set_reset_mode(%struct.net_device* %86)
  %88 = load %struct.net_device*, %struct.net_device** %5, align 8
  %89 = call i32 @set_normal_mode(%struct.net_device* %88)
  %90 = load %struct.sun4ican_priv*, %struct.sun4ican_priv** %8, align 8
  %91 = load i32, i32* @SUN4I_CMD_CLEAR_OR_FLAG, align 4
  %92 = call i32 @sun4i_can_write_cmdreg(%struct.sun4ican_priv* %90, i32 %91)
  br label %93

93:                                               ; preds = %77, %55
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @SUN4I_INT_ERR_WRN, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %118

98:                                               ; preds = %93
  %99 = load %struct.net_device*, %struct.net_device** %5, align 8
  %100 = call i32 @netdev_dbg(%struct.net_device* %99, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @SUN4I_STA_BUS_OFF, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %98
  %106 = load i32, i32* @CAN_STATE_BUS_OFF, align 4
  store i32 %106, i32* %12, align 4
  br label %117

107:                                              ; preds = %98
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* @SUN4I_STA_ERR_STA, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = load i32, i32* @CAN_STATE_ERROR_WARNING, align 4
  store i32 %113, i32* %12, align 4
  br label %116

114:                                              ; preds = %107
  %115 = load i32, i32* @CAN_STATE_ERROR_ACTIVE, align 4
  store i32 %115, i32* %12, align 4
  br label %116

116:                                              ; preds = %114, %112
  br label %117

117:                                              ; preds = %116, %105
  br label %118

118:                                              ; preds = %117, %93
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* @SUN4I_INT_BUS_ERR, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %205

123:                                              ; preds = %118
  %124 = load %struct.net_device*, %struct.net_device** %5, align 8
  %125 = call i32 @netdev_dbg(%struct.net_device* %124, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %126 = load %struct.sun4ican_priv*, %struct.sun4ican_priv** %8, align 8
  %127 = getelementptr inbounds %struct.sun4ican_priv, %struct.sun4ican_priv* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 4
  %132 = load %struct.net_device_stats*, %struct.net_device_stats** %9, align 8
  %133 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %133, align 4
  %136 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %137 = call i64 @likely(%struct.sk_buff* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %204

139:                                              ; preds = %123
  %140 = load %struct.sun4ican_priv*, %struct.sun4ican_priv** %8, align 8
  %141 = getelementptr inbounds %struct.sun4ican_priv, %struct.sun4ican_priv* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @SUN4I_REG_STA_ADDR, align 8
  %144 = add nsw i64 %142, %143
  %145 = call i8* @readl(i64 %144)
  %146 = ptrtoint i8* %145 to i32
  store i32 %146, i32* %18, align 4
  %147 = load i32, i32* @CAN_ERR_PROT, align 4
  %148 = load i32, i32* @CAN_ERR_BUSERROR, align 4
  %149 = or i32 %147, %148
  %150 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %151 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = or i32 %152, %149
  store i32 %153, i32* %151, align 8
  %154 = load i32, i32* %18, align 4
  %155 = load i32, i32* @SUN4I_STA_MASK_ERR, align 4
  %156 = and i32 %154, %155
  switch i32 %156, label %181 [
    i32 130, label %157
    i32 129, label %165
    i32 128, label %173
  ]

157:                                              ; preds = %139
  %158 = load i32, i32* @CAN_ERR_PROT_BIT, align 4
  %159 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %160 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 2
  %163 = load i32, i32* %162, align 4
  %164 = or i32 %163, %158
  store i32 %164, i32* %162, align 4
  br label %190

165:                                              ; preds = %139
  %166 = load i32, i32* @CAN_ERR_PROT_FORM, align 4
  %167 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %168 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 2
  %171 = load i32, i32* %170, align 4
  %172 = or i32 %171, %166
  store i32 %172, i32* %170, align 4
  br label %190

173:                                              ; preds = %139
  %174 = load i32, i32* @CAN_ERR_PROT_STUFF, align 4
  %175 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %176 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %175, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 2
  %179 = load i32, i32* %178, align 4
  %180 = or i32 %179, %174
  store i32 %180, i32* %178, align 4
  br label %190

181:                                              ; preds = %139
  %182 = load i32, i32* %18, align 4
  %183 = load i32, i32* @SUN4I_STA_ERR_SEG_CODE, align 4
  %184 = and i32 %182, %183
  %185 = ashr i32 %184, 16
  %186 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %187 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 3
  store i32 %185, i32* %189, align 4
  br label %190

190:                                              ; preds = %181, %173, %165, %157
  %191 = load i32, i32* %18, align 4
  %192 = load i32, i32* @SUN4I_STA_ERR_DIR, align 4
  %193 = and i32 %191, %192
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %203

195:                                              ; preds = %190
  %196 = load i32, i32* @CAN_ERR_PROT_TX, align 4
  %197 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %198 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %197, i32 0, i32 0
  %199 = load i32*, i32** %198, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 2
  %201 = load i32, i32* %200, align 4
  %202 = or i32 %201, %196
  store i32 %202, i32* %200, align 4
  br label %203

203:                                              ; preds = %195, %190
  br label %204

204:                                              ; preds = %203, %123
  br label %205

205:                                              ; preds = %204, %118
  %206 = load i32, i32* %6, align 4
  %207 = load i32, i32* @SUN4I_INT_ERR_PASSIVE, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %221

210:                                              ; preds = %205
  %211 = load %struct.net_device*, %struct.net_device** %5, align 8
  %212 = call i32 @netdev_dbg(%struct.net_device* %211, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %213 = load i32, i32* %12, align 4
  %214 = load i32, i32* @CAN_STATE_ERROR_PASSIVE, align 4
  %215 = icmp eq i32 %213, %214
  br i1 %215, label %216, label %218

216:                                              ; preds = %210
  %217 = load i32, i32* @CAN_STATE_ERROR_WARNING, align 4
  store i32 %217, i32* %12, align 4
  br label %220

218:                                              ; preds = %210
  %219 = load i32, i32* @CAN_STATE_ERROR_PASSIVE, align 4
  store i32 %219, i32* %12, align 4
  br label %220

220:                                              ; preds = %218, %216
  br label %221

221:                                              ; preds = %220, %205
  %222 = load i32, i32* %6, align 4
  %223 = load i32, i32* @SUN4I_INT_ARB_LOST, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %263

226:                                              ; preds = %221
  %227 = load %struct.net_device*, %struct.net_device** %5, align 8
  %228 = call i32 @netdev_dbg(%struct.net_device* %227, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %229 = load %struct.sun4ican_priv*, %struct.sun4ican_priv** %8, align 8
  %230 = getelementptr inbounds %struct.sun4ican_priv, %struct.sun4ican_priv* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = load i64, i64* @SUN4I_REG_STA_ADDR, align 8
  %233 = add nsw i64 %231, %232
  %234 = call i8* @readl(i64 %233)
  %235 = ptrtoint i8* %234 to i32
  store i32 %235, i32* %19, align 4
  %236 = load %struct.sun4ican_priv*, %struct.sun4ican_priv** %8, align 8
  %237 = getelementptr inbounds %struct.sun4ican_priv, %struct.sun4ican_priv* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %239, align 4
  %242 = load %struct.net_device_stats*, %struct.net_device_stats** %9, align 8
  %243 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %243, align 4
  %246 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %247 = call i64 @likely(%struct.sk_buff* %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %262

249:                                              ; preds = %226
  %250 = load i32, i32* @CAN_ERR_LOSTARB, align 4
  %251 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %252 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 8
  %254 = or i32 %253, %250
  store i32 %254, i32* %252, align 8
  %255 = load i32, i32* %19, align 4
  %256 = ashr i32 %255, 8
  %257 = and i32 %256, 31
  %258 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %259 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %258, i32 0, i32 0
  %260 = load i32*, i32** %259, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 0
  store i32 %257, i32* %261, align 4
  br label %262

262:                                              ; preds = %249, %226
  br label %263

263:                                              ; preds = %262, %221
  %264 = load i32, i32* %12, align 4
  %265 = load %struct.sun4ican_priv*, %struct.sun4ican_priv** %8, align 8
  %266 = getelementptr inbounds %struct.sun4ican_priv, %struct.sun4ican_priv* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = icmp ne i32 %264, %268
  br i1 %269, label %270, label %309

270:                                              ; preds = %263
  %271 = load i32, i32* %16, align 4
  %272 = load i32, i32* %15, align 4
  %273 = icmp uge i32 %271, %272
  br i1 %273, label %274, label %276

274:                                              ; preds = %270
  %275 = load i32, i32* %12, align 4
  br label %277

276:                                              ; preds = %270
  br label %277

277:                                              ; preds = %276, %274
  %278 = phi i32 [ %275, %274 ], [ 0, %276 ]
  store i32 %278, i32* %14, align 4
  %279 = load i32, i32* %16, align 4
  %280 = load i32, i32* %15, align 4
  %281 = icmp ule i32 %279, %280
  br i1 %281, label %282, label %284

282:                                              ; preds = %277
  %283 = load i32, i32* %12, align 4
  br label %285

284:                                              ; preds = %277
  br label %285

285:                                              ; preds = %284, %282
  %286 = phi i32 [ %283, %282 ], [ 0, %284 ]
  store i32 %286, i32* %13, align 4
  %287 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %288 = call i64 @likely(%struct.sk_buff* %287)
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %296

290:                                              ; preds = %285
  %291 = load %struct.net_device*, %struct.net_device** %5, align 8
  %292 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %293 = load i32, i32* %14, align 4
  %294 = load i32, i32* %13, align 4
  %295 = call i32 @can_change_state(%struct.net_device* %291, %struct.can_frame* %292, i32 %293, i32 %294)
  br label %301

296:                                              ; preds = %285
  %297 = load i32, i32* %12, align 4
  %298 = load %struct.sun4ican_priv*, %struct.sun4ican_priv** %8, align 8
  %299 = getelementptr inbounds %struct.sun4ican_priv, %struct.sun4ican_priv* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %299, i32 0, i32 0
  store i32 %297, i32* %300, align 8
  br label %301

301:                                              ; preds = %296, %290
  %302 = load i32, i32* %12, align 4
  %303 = load i32, i32* @CAN_STATE_BUS_OFF, align 4
  %304 = icmp eq i32 %302, %303
  br i1 %304, label %305, label %308

305:                                              ; preds = %301
  %306 = load %struct.net_device*, %struct.net_device** %5, align 8
  %307 = call i32 @can_bus_off(%struct.net_device* %306)
  br label %308

308:                                              ; preds = %305, %301
  br label %309

309:                                              ; preds = %308, %263
  %310 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %311 = call i64 @likely(%struct.sk_buff* %310)
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %329

313:                                              ; preds = %309
  %314 = load %struct.net_device_stats*, %struct.net_device_stats** %9, align 8
  %315 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %315, align 4
  %318 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %319 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %318, i32 0, i32 2
  %320 = load i64, i64* %319, align 8
  %321 = load %struct.net_device_stats*, %struct.net_device_stats** %9, align 8
  %322 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 4
  %324 = sext i32 %323 to i64
  %325 = add nsw i64 %324, %320
  %326 = trunc i64 %325 to i32
  store i32 %326, i32* %322, align 4
  %327 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %328 = call i32 @netif_rx(%struct.sk_buff* %327)
  br label %332

329:                                              ; preds = %309
  %330 = load i32, i32* @ENOMEM, align 4
  %331 = sub nsw i32 0, %330
  store i32 %331, i32* %4, align 4
  br label %333

332:                                              ; preds = %313
  store i32 0, i32* %4, align 4
  br label %333

333:                                              ; preds = %332, %329
  %334 = load i32, i32* %4, align 4
  ret i32 %334
}

declare dso_local %struct.sun4ican_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @alloc_can_err_skb(%struct.net_device*, %struct.can_frame**) #1

declare dso_local i8* @readl(i64) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*) #1

declare dso_local i64 @likely(%struct.sk_buff*) #1

declare dso_local i32 @set_reset_mode(%struct.net_device*) #1

declare dso_local i32 @set_normal_mode(%struct.net_device*) #1

declare dso_local i32 @sun4i_can_write_cmdreg(%struct.sun4ican_priv*, i32) #1

declare dso_local i32 @can_change_state(%struct.net_device*, %struct.can_frame*, i32, i32) #1

declare dso_local i32 @can_bus_off(%struct.net_device*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
