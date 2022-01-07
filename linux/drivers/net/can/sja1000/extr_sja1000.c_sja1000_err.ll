; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_sja1000.c_sja1000_err.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_sja1000.c_sja1000_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32, i32, i32, i32 }
%struct.sja1000_priv = type { i32 (%struct.sja1000_priv*, i32)*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.can_frame = type { i32*, i32, i64 }
%struct.sk_buff = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@SJA1000_TXERR = common dso_local global i32 0, align 4
@SJA1000_RXERR = common dso_local global i32 0, align 4
@IRQ_DOI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"data overrun interrupt\0A\00", align 1
@CAN_ERR_CRTL = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_RX_OVERFLOW = common dso_local global i32 0, align 4
@CMD_CDO = common dso_local global i32 0, align 4
@IRQ_EI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"error warning interrupt\0A\00", align 1
@SR_BS = common dso_local global i32 0, align 4
@CAN_STATE_BUS_OFF = common dso_local global i32 0, align 4
@SR_ES = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_WARNING = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_ACTIVE = common dso_local global i32 0, align 4
@IRQ_BEI = common dso_local global i32 0, align 4
@SJA1000_ECC = common dso_local global i32 0, align 4
@CAN_ERR_PROT = common dso_local global i32 0, align 4
@CAN_ERR_BUSERROR = common dso_local global i32 0, align 4
@ECC_MASK = common dso_local global i32 0, align 4
@CAN_ERR_PROT_BIT = common dso_local global i32 0, align 4
@CAN_ERR_PROT_FORM = common dso_local global i32 0, align 4
@CAN_ERR_PROT_STUFF = common dso_local global i32 0, align 4
@ECC_SEG = common dso_local global i32 0, align 4
@ECC_DIR = common dso_local global i32 0, align 4
@CAN_ERR_PROT_TX = common dso_local global i32 0, align 4
@IRQ_EPI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"error passive interrupt\0A\00", align 1
@CAN_STATE_ERROR_PASSIVE = common dso_local global i32 0, align 4
@IRQ_ALI = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"arbitration lost interrupt\0A\00", align 1
@SJA1000_ALC = common dso_local global i32 0, align 4
@CAN_ERR_LOSTARB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @sja1000_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sja1000_err(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sja1000_priv*, align 8
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
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %19 = load %struct.net_device*, %struct.net_device** %5, align 8
  %20 = call %struct.sja1000_priv* @netdev_priv(%struct.net_device* %19)
  store %struct.sja1000_priv* %20, %struct.sja1000_priv** %8, align 8
  %21 = load %struct.net_device*, %struct.net_device** %5, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  store %struct.net_device_stats* %22, %struct.net_device_stats** %9, align 8
  %23 = load %struct.sja1000_priv*, %struct.sja1000_priv** %8, align 8
  %24 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %12, align 4
  %27 = load %struct.net_device*, %struct.net_device** %5, align 8
  %28 = call %struct.sk_buff* @alloc_can_err_skb(%struct.net_device* %27, %struct.can_frame** %10)
  store %struct.sk_buff* %28, %struct.sk_buff** %11, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %30 = icmp eq %struct.sk_buff* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %3
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %291

34:                                               ; preds = %3
  %35 = load %struct.sja1000_priv*, %struct.sja1000_priv** %8, align 8
  %36 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %35, i32 0, i32 0
  %37 = load i32 (%struct.sja1000_priv*, i32)*, i32 (%struct.sja1000_priv*, i32)** %36, align 8
  %38 = load %struct.sja1000_priv*, %struct.sja1000_priv** %8, align 8
  %39 = load i32, i32* @SJA1000_TXERR, align 4
  %40 = call i32 %37(%struct.sja1000_priv* %38, i32 %39)
  store i32 %40, i32* %16, align 4
  %41 = load %struct.sja1000_priv*, %struct.sja1000_priv** %8, align 8
  %42 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %41, i32 0, i32 0
  %43 = load i32 (%struct.sja1000_priv*, i32)*, i32 (%struct.sja1000_priv*, i32)** %42, align 8
  %44 = load %struct.sja1000_priv*, %struct.sja1000_priv** %8, align 8
  %45 = load i32, i32* @SJA1000_RXERR, align 4
  %46 = call i32 %43(%struct.sja1000_priv* %44, i32 %45)
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %16, align 4
  %48 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %49 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 6
  store i32 %47, i32* %51, align 4
  %52 = load i32, i32* %15, align 4
  %53 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %54 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 7
  store i32 %52, i32* %56, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @IRQ_DOI, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %85

61:                                               ; preds = %34
  %62 = load %struct.net_device*, %struct.net_device** %5, align 8
  %63 = call i32 @netdev_dbg(%struct.net_device* %62, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %64 = load i32, i32* @CAN_ERR_CRTL, align 4
  %65 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %66 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  %69 = load i32, i32* @CAN_ERR_CRTL_RX_OVERFLOW, align 4
  %70 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %71 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  store i32 %69, i32* %73, align 4
  %74 = load %struct.net_device_stats*, %struct.net_device_stats** %9, align 8
  %75 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  %78 = load %struct.net_device_stats*, %struct.net_device_stats** %9, align 8
  %79 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 4
  %82 = load %struct.sja1000_priv*, %struct.sja1000_priv** %8, align 8
  %83 = load i32, i32* @CMD_CDO, align 4
  %84 = call i32 @sja1000_write_cmdreg(%struct.sja1000_priv* %82, i32 %83)
  br label %85

85:                                               ; preds = %61, %34
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @IRQ_EI, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %110

90:                                               ; preds = %85
  %91 = load %struct.net_device*, %struct.net_device** %5, align 8
  %92 = call i32 @netdev_dbg(%struct.net_device* %91, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @SR_BS, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = load i32, i32* @CAN_STATE_BUS_OFF, align 4
  store i32 %98, i32* %12, align 4
  br label %109

99:                                               ; preds = %90
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @SR_ES, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = load i32, i32* @CAN_STATE_ERROR_WARNING, align 4
  store i32 %105, i32* %12, align 4
  br label %108

106:                                              ; preds = %99
  %107 = load i32, i32* @CAN_STATE_ERROR_ACTIVE, align 4
  store i32 %107, i32* %12, align 4
  br label %108

108:                                              ; preds = %106, %104
  br label %109

109:                                              ; preds = %108, %97
  br label %110

110:                                              ; preds = %109, %85
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* @IRQ_BEI, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %188

115:                                              ; preds = %110
  %116 = load %struct.sja1000_priv*, %struct.sja1000_priv** %8, align 8
  %117 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %119, align 4
  %122 = load %struct.net_device_stats*, %struct.net_device_stats** %9, align 8
  %123 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %123, align 4
  %126 = load %struct.sja1000_priv*, %struct.sja1000_priv** %8, align 8
  %127 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %126, i32 0, i32 0
  %128 = load i32 (%struct.sja1000_priv*, i32)*, i32 (%struct.sja1000_priv*, i32)** %127, align 8
  %129 = load %struct.sja1000_priv*, %struct.sja1000_priv** %8, align 8
  %130 = load i32, i32* @SJA1000_ECC, align 4
  %131 = call i32 %128(%struct.sja1000_priv* %129, i32 %130)
  store i32 %131, i32* %17, align 4
  %132 = load i32, i32* @CAN_ERR_PROT, align 4
  %133 = load i32, i32* @CAN_ERR_BUSERROR, align 4
  %134 = or i32 %132, %133
  %135 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %136 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = or i32 %137, %134
  store i32 %138, i32* %136, align 8
  %139 = load i32, i32* %17, align 4
  %140 = load i32, i32* @ECC_MASK, align 4
  %141 = and i32 %139, %140
  switch i32 %141, label %166 [
    i32 130, label %142
    i32 129, label %150
    i32 128, label %158
  ]

142:                                              ; preds = %115
  %143 = load i32, i32* @CAN_ERR_PROT_BIT, align 4
  %144 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %145 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 2
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %143
  store i32 %149, i32* %147, align 4
  br label %167

150:                                              ; preds = %115
  %151 = load i32, i32* @CAN_ERR_PROT_FORM, align 4
  %152 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %153 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 2
  %156 = load i32, i32* %155, align 4
  %157 = or i32 %156, %151
  store i32 %157, i32* %155, align 4
  br label %167

158:                                              ; preds = %115
  %159 = load i32, i32* @CAN_ERR_PROT_STUFF, align 4
  %160 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %161 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 2
  %164 = load i32, i32* %163, align 4
  %165 = or i32 %164, %159
  store i32 %165, i32* %163, align 4
  br label %167

166:                                              ; preds = %115
  br label %167

167:                                              ; preds = %166, %158, %150, %142
  %168 = load i32, i32* %17, align 4
  %169 = load i32, i32* @ECC_SEG, align 4
  %170 = and i32 %168, %169
  %171 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %172 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 3
  store i32 %170, i32* %174, align 4
  %175 = load i32, i32* %17, align 4
  %176 = load i32, i32* @ECC_DIR, align 4
  %177 = and i32 %175, %176
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %187

179:                                              ; preds = %167
  %180 = load i32, i32* @CAN_ERR_PROT_TX, align 4
  %181 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %182 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 2
  %185 = load i32, i32* %184, align 4
  %186 = or i32 %185, %180
  store i32 %186, i32* %184, align 4
  br label %187

187:                                              ; preds = %179, %167
  br label %188

188:                                              ; preds = %187, %110
  %189 = load i32, i32* %6, align 4
  %190 = load i32, i32* @IRQ_EPI, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %204

193:                                              ; preds = %188
  %194 = load %struct.net_device*, %struct.net_device** %5, align 8
  %195 = call i32 @netdev_dbg(%struct.net_device* %194, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %196 = load i32, i32* %12, align 4
  %197 = load i32, i32* @CAN_STATE_ERROR_PASSIVE, align 4
  %198 = icmp eq i32 %196, %197
  br i1 %198, label %199, label %201

199:                                              ; preds = %193
  %200 = load i32, i32* @CAN_STATE_ERROR_WARNING, align 4
  store i32 %200, i32* %12, align 4
  br label %203

201:                                              ; preds = %193
  %202 = load i32, i32* @CAN_STATE_ERROR_PASSIVE, align 4
  store i32 %202, i32* %12, align 4
  br label %203

203:                                              ; preds = %201, %199
  br label %204

204:                                              ; preds = %203, %188
  %205 = load i32, i32* %6, align 4
  %206 = load i32, i32* @IRQ_ALI, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %239

209:                                              ; preds = %204
  %210 = load %struct.net_device*, %struct.net_device** %5, align 8
  %211 = call i32 @netdev_dbg(%struct.net_device* %210, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %212 = load %struct.sja1000_priv*, %struct.sja1000_priv** %8, align 8
  %213 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %212, i32 0, i32 0
  %214 = load i32 (%struct.sja1000_priv*, i32)*, i32 (%struct.sja1000_priv*, i32)** %213, align 8
  %215 = load %struct.sja1000_priv*, %struct.sja1000_priv** %8, align 8
  %216 = load i32, i32* @SJA1000_ALC, align 4
  %217 = call i32 %214(%struct.sja1000_priv* %215, i32 %216)
  store i32 %217, i32* %18, align 4
  %218 = load %struct.sja1000_priv*, %struct.sja1000_priv** %8, align 8
  %219 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %221, align 4
  %224 = load %struct.net_device_stats*, %struct.net_device_stats** %9, align 8
  %225 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %225, align 4
  %228 = load i32, i32* @CAN_ERR_LOSTARB, align 4
  %229 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %230 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 8
  %232 = or i32 %231, %228
  store i32 %232, i32* %230, align 8
  %233 = load i32, i32* %18, align 4
  %234 = and i32 %233, 31
  %235 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %236 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %235, i32 0, i32 0
  %237 = load i32*, i32** %236, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 0
  store i32 %234, i32* %238, align 4
  br label %239

239:                                              ; preds = %209, %204
  %240 = load i32, i32* %12, align 4
  %241 = load %struct.sja1000_priv*, %struct.sja1000_priv** %8, align 8
  %242 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = icmp ne i32 %240, %244
  br i1 %245, label %246, label %275

246:                                              ; preds = %239
  %247 = load i32, i32* %16, align 4
  %248 = load i32, i32* %15, align 4
  %249 = icmp uge i32 %247, %248
  br i1 %249, label %250, label %252

250:                                              ; preds = %246
  %251 = load i32, i32* %12, align 4
  br label %253

252:                                              ; preds = %246
  br label %253

253:                                              ; preds = %252, %250
  %254 = phi i32 [ %251, %250 ], [ 0, %252 ]
  store i32 %254, i32* %14, align 4
  %255 = load i32, i32* %16, align 4
  %256 = load i32, i32* %15, align 4
  %257 = icmp ule i32 %255, %256
  br i1 %257, label %258, label %260

258:                                              ; preds = %253
  %259 = load i32, i32* %12, align 4
  br label %261

260:                                              ; preds = %253
  br label %261

261:                                              ; preds = %260, %258
  %262 = phi i32 [ %259, %258 ], [ 0, %260 ]
  store i32 %262, i32* %13, align 4
  %263 = load %struct.net_device*, %struct.net_device** %5, align 8
  %264 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %265 = load i32, i32* %14, align 4
  %266 = load i32, i32* %13, align 4
  %267 = call i32 @can_change_state(%struct.net_device* %263, %struct.can_frame* %264, i32 %265, i32 %266)
  %268 = load i32, i32* %12, align 4
  %269 = load i32, i32* @CAN_STATE_BUS_OFF, align 4
  %270 = icmp eq i32 %268, %269
  br i1 %270, label %271, label %274

271:                                              ; preds = %261
  %272 = load %struct.net_device*, %struct.net_device** %5, align 8
  %273 = call i32 @can_bus_off(%struct.net_device* %272)
  br label %274

274:                                              ; preds = %271, %261
  br label %275

275:                                              ; preds = %274, %239
  %276 = load %struct.net_device_stats*, %struct.net_device_stats** %9, align 8
  %277 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %277, align 4
  %280 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %281 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %280, i32 0, i32 2
  %282 = load i64, i64* %281, align 8
  %283 = load %struct.net_device_stats*, %struct.net_device_stats** %9, align 8
  %284 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = sext i32 %285 to i64
  %287 = add nsw i64 %286, %282
  %288 = trunc i64 %287 to i32
  store i32 %288, i32* %284, align 4
  %289 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %290 = call i32 @netif_rx(%struct.sk_buff* %289)
  store i32 0, i32* %4, align 4
  br label %291

291:                                              ; preds = %275, %31
  %292 = load i32, i32* %4, align 4
  ret i32 %292
}

declare dso_local %struct.sja1000_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @alloc_can_err_skb(%struct.net_device*, %struct.can_frame**) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*) #1

declare dso_local i32 @sja1000_write_cmdreg(%struct.sja1000_priv*, i32) #1

declare dso_local i32 @can_change_state(%struct.net_device*, %struct.can_frame*, i32, i32) #1

declare dso_local i32 @can_bus_off(%struct.net_device*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
