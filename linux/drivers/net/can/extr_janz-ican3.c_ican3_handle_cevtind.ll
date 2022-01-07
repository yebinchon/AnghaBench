; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_janz-ican3.c_ican3_handle_cevtind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_janz-ican3.c_ican3_handle_cevtind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ican3_dev = type { %struct.TYPE_4__, %struct.net_device*, i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32, i32 }
%struct.ican3_msg = type { i64*, i32 }
%struct.can_frame = type { i32, i64* }
%struct.sk_buff = type { i32 }

@CEVTIND_CHIP_SJA1000 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"unable to handle errors on non-SJA1000\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"error message too short\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CEVTIND_BEI = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"bus error interrupt\0A\00", align 1
@ECC_DIR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"unable to re-enable bus-error\0A\00", align 1
@CAN_CTRLMODE_BERR_REPORTING = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CEVTIND_DOI = common dso_local global i64 0, align 8
@CEVTIND_LOST = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"data overrun interrupt\0A\00", align 1
@CAN_ERR_CRTL = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_RX_OVERFLOW = common dso_local global i64 0, align 8
@CEVTIND_EI = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [35 x i8] c"error warning + passive interrupt\0A\00", align 1
@SR_BS = common dso_local global i64 0, align 8
@CAN_STATE_BUS_OFF = common dso_local global i32 0, align 4
@CAN_ERR_BUSOFF = common dso_local global i32 0, align 4
@SR_ES = common dso_local global i64 0, align 8
@CAN_STATE_ERROR_PASSIVE = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_WARNING = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_ACTIVE = common dso_local global i32 0, align 4
@CAN_ERR_PROT = common dso_local global i32 0, align 4
@CAN_ERR_BUSERROR = common dso_local global i32 0, align 4
@ECC_MASK = common dso_local global i64 0, align 8
@CAN_ERR_PROT_BIT = common dso_local global i64 0, align 8
@CAN_ERR_PROT_FORM = common dso_local global i64 0, align 8
@CAN_ERR_PROT_STUFF = common dso_local global i64 0, align 8
@ECC_SEG = common dso_local global i64 0, align 8
@CAN_ERR_PROT_TX = common dso_local global i64 0, align 8
@CAN_ERR_CRTL_TX_WARNING = common dso_local global i64 0, align 8
@CAN_ERR_CRTL_RX_WARNING = common dso_local global i64 0, align 8
@CAN_ERR_CRTL_TX_PASSIVE = common dso_local global i64 0, align 8
@CAN_ERR_CRTL_RX_PASSIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ican3_dev*, %struct.ican3_msg*)* @ican3_handle_cevtind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ican3_handle_cevtind(%struct.ican3_dev* %0, %struct.ican3_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ican3_dev*, align 8
  %5 = alloca %struct.ican3_msg*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.net_device_stats*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.can_frame*, align 8
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca i32, align 4
  store %struct.ican3_dev* %0, %struct.ican3_dev** %4, align 8
  store %struct.ican3_msg* %1, %struct.ican3_msg** %5, align 8
  %17 = load %struct.ican3_dev*, %struct.ican3_dev** %4, align 8
  %18 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %17, i32 0, i32 1
  %19 = load %struct.net_device*, %struct.net_device** %18, align 8
  store %struct.net_device* %19, %struct.net_device** %6, align 8
  %20 = load %struct.net_device*, %struct.net_device** %6, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  store %struct.net_device_stats* %21, %struct.net_device_stats** %7, align 8
  %22 = load %struct.ican3_dev*, %struct.ican3_dev** %4, align 8
  %23 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %8, align 4
  %26 = load %struct.ican3_msg*, %struct.ican3_msg** %5, align 8
  %27 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @CEVTIND_CHIP_SJA1000, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %2
  %34 = load %struct.ican3_dev*, %struct.ican3_dev** %4, align 8
  %35 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %34, i32 0, i32 1
  %36 = load %struct.net_device*, %struct.net_device** %35, align 8
  %37 = call i32 @netdev_err(%struct.net_device* %36, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %372

40:                                               ; preds = %2
  %41 = load %struct.ican3_msg*, %struct.ican3_msg** %5, align 8
  %42 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @le16_to_cpu(i32 %43)
  %45 = icmp slt i32 %44, 6
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load %struct.ican3_dev*, %struct.ican3_dev** %4, align 8
  %48 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %47, i32 0, i32 1
  %49 = load %struct.net_device*, %struct.net_device** %48, align 8
  %50 = call i32 @netdev_err(%struct.net_device* %49, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %372

53:                                               ; preds = %40
  %54 = load %struct.ican3_msg*, %struct.ican3_msg** %5, align 8
  %55 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 0
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %9, align 8
  %59 = load %struct.ican3_msg*, %struct.ican3_msg** %5, align 8
  %60 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 2
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %10, align 8
  %64 = load %struct.ican3_msg*, %struct.ican3_msg** %5, align 8
  %65 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %64, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 3
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %11, align 8
  %69 = load %struct.ican3_msg*, %struct.ican3_msg** %5, align 8
  %70 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 4
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %12, align 8
  %74 = load %struct.ican3_msg*, %struct.ican3_msg** %5, align 8
  %75 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 5
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %13, align 8
  %79 = load i64, i64* %9, align 8
  %80 = load i64, i64* @CEVTIND_BEI, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %126

82:                                               ; preds = %53
  %83 = load %struct.ican3_dev*, %struct.ican3_dev** %4, align 8
  %84 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %83, i32 0, i32 1
  %85 = load %struct.net_device*, %struct.net_device** %84, align 8
  %86 = call i32 @netdev_dbg(%struct.net_device* %85, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %87 = load i64, i64* %10, align 8
  %88 = load i64, i64* @ECC_DIR, align 8
  %89 = and i64 %87, %88
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %100, label %91

91:                                               ; preds = %82
  %92 = load %struct.ican3_dev*, %struct.ican3_dev** %4, align 8
  %93 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %92, i32 0, i32 2
  %94 = call i32 @skb_dequeue(i32* %93)
  %95 = call i32 @kfree_skb(i32 %94)
  %96 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %97 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  br label %105

100:                                              ; preds = %82
  %101 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %102 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %100, %91
  %106 = load %struct.ican3_dev*, %struct.ican3_dev** %4, align 8
  %107 = call i32 @ican3_set_buserror(%struct.ican3_dev* %106, i32 1)
  store i32 %107, i32* %16, align 4
  %108 = load i32, i32* %16, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %105
  %111 = load %struct.ican3_dev*, %struct.ican3_dev** %4, align 8
  %112 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %111, i32 0, i32 1
  %113 = load %struct.net_device*, %struct.net_device** %112, align 8
  %114 = call i32 @netdev_err(%struct.net_device* %113, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %115 = load i32, i32* %16, align 4
  store i32 %115, i32* %3, align 4
  br label %372

116:                                              ; preds = %105
  %117 = load %struct.ican3_dev*, %struct.ican3_dev** %4, align 8
  %118 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @CAN_CTRLMODE_BERR_REPORTING, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %116
  store i32 0, i32* %3, align 4
  br label %372

125:                                              ; preds = %116
  br label %126

126:                                              ; preds = %125, %53
  %127 = load %struct.net_device*, %struct.net_device** %6, align 8
  %128 = call %struct.sk_buff* @alloc_can_err_skb(%struct.net_device* %127, %struct.can_frame** %14)
  store %struct.sk_buff* %128, %struct.sk_buff** %15, align 8
  %129 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %130 = icmp eq %struct.sk_buff* %129, null
  br i1 %130, label %131, label %134

131:                                              ; preds = %126
  %132 = load i32, i32* @ENOMEM, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %3, align 4
  br label %372

134:                                              ; preds = %126
  %135 = load i64, i64* %9, align 8
  %136 = load i64, i64* @CEVTIND_DOI, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %142, label %138

138:                                              ; preds = %134
  %139 = load i64, i64* %9, align 8
  %140 = load i64, i64* @CEVTIND_LOST, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %165

142:                                              ; preds = %138, %134
  %143 = load %struct.ican3_dev*, %struct.ican3_dev** %4, align 8
  %144 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %143, i32 0, i32 1
  %145 = load %struct.net_device*, %struct.net_device** %144, align 8
  %146 = call i32 @netdev_dbg(%struct.net_device* %145, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %147 = load i32, i32* @CAN_ERR_CRTL, align 4
  %148 = load %struct.can_frame*, %struct.can_frame** %14, align 8
  %149 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = or i32 %150, %147
  store i32 %151, i32* %149, align 8
  %152 = load i64, i64* @CAN_ERR_CRTL_RX_OVERFLOW, align 8
  %153 = load %struct.can_frame*, %struct.can_frame** %14, align 8
  %154 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %153, i32 0, i32 1
  %155 = load i64*, i64** %154, align 8
  %156 = getelementptr inbounds i64, i64* %155, i64 1
  store i64 %152, i64* %156, align 8
  %157 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %158 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %158, align 4
  %161 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %162 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %162, align 4
  br label %165

165:                                              ; preds = %142, %138
  %166 = load i64, i64* %9, align 8
  %167 = load i64, i64* @CEVTIND_EI, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %213

169:                                              ; preds = %165
  %170 = load %struct.ican3_dev*, %struct.ican3_dev** %4, align 8
  %171 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %170, i32 0, i32 1
  %172 = load %struct.net_device*, %struct.net_device** %171, align 8
  %173 = call i32 @netdev_dbg(%struct.net_device* %172, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %174 = load i64, i64* %11, align 8
  %175 = load i64, i64* @SR_BS, align 8
  %176 = and i64 %174, %175
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %193

178:                                              ; preds = %169
  %179 = load i32, i32* @CAN_STATE_BUS_OFF, align 4
  store i32 %179, i32* %8, align 4
  %180 = load i32, i32* @CAN_ERR_BUSOFF, align 4
  %181 = load %struct.can_frame*, %struct.can_frame** %14, align 8
  %182 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = or i32 %183, %180
  store i32 %184, i32* %182, align 8
  %185 = load %struct.ican3_dev*, %struct.ican3_dev** %4, align 8
  %186 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %188, align 4
  %191 = load %struct.net_device*, %struct.net_device** %6, align 8
  %192 = call i32 @can_bus_off(%struct.net_device* %191)
  br label %212

193:                                              ; preds = %169
  %194 = load i64, i64* %11, align 8
  %195 = load i64, i64* @SR_ES, align 8
  %196 = and i64 %194, %195
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %209

198:                                              ; preds = %193
  %199 = load i64, i64* %12, align 8
  %200 = icmp sge i64 %199, 128
  br i1 %200, label %204, label %201

201:                                              ; preds = %198
  %202 = load i64, i64* %13, align 8
  %203 = icmp sge i64 %202, 128
  br i1 %203, label %204, label %206

204:                                              ; preds = %201, %198
  %205 = load i32, i32* @CAN_STATE_ERROR_PASSIVE, align 4
  store i32 %205, i32* %8, align 4
  br label %208

206:                                              ; preds = %201
  %207 = load i32, i32* @CAN_STATE_ERROR_WARNING, align 4
  store i32 %207, i32* %8, align 4
  br label %208

208:                                              ; preds = %206, %204
  br label %211

209:                                              ; preds = %193
  %210 = load i32, i32* @CAN_STATE_ERROR_ACTIVE, align 4
  store i32 %210, i32* %8, align 4
  br label %211

211:                                              ; preds = %209, %208
  br label %212

212:                                              ; preds = %211, %178
  br label %213

213:                                              ; preds = %212, %165
  %214 = load i64, i64* %9, align 8
  %215 = load i64, i64* @CEVTIND_BEI, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %290

217:                                              ; preds = %213
  %218 = load %struct.ican3_dev*, %struct.ican3_dev** %4, align 8
  %219 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 2
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %221, align 8
  %224 = load i32, i32* @CAN_ERR_PROT, align 4
  %225 = load i32, i32* @CAN_ERR_BUSERROR, align 4
  %226 = or i32 %224, %225
  %227 = load %struct.can_frame*, %struct.can_frame** %14, align 8
  %228 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = or i32 %229, %226
  store i32 %230, i32* %228, align 8
  %231 = load i64, i64* %10, align 8
  %232 = load i64, i64* @ECC_MASK, align 8
  %233 = and i64 %231, %232
  switch i64 %233, label %258 [
    i64 130, label %234
    i64 129, label %242
    i64 128, label %250
  ]

234:                                              ; preds = %217
  %235 = load i64, i64* @CAN_ERR_PROT_BIT, align 8
  %236 = load %struct.can_frame*, %struct.can_frame** %14, align 8
  %237 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %236, i32 0, i32 1
  %238 = load i64*, i64** %237, align 8
  %239 = getelementptr inbounds i64, i64* %238, i64 2
  %240 = load i64, i64* %239, align 8
  %241 = or i64 %240, %235
  store i64 %241, i64* %239, align 8
  br label %266

242:                                              ; preds = %217
  %243 = load i64, i64* @CAN_ERR_PROT_FORM, align 8
  %244 = load %struct.can_frame*, %struct.can_frame** %14, align 8
  %245 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %244, i32 0, i32 1
  %246 = load i64*, i64** %245, align 8
  %247 = getelementptr inbounds i64, i64* %246, i64 2
  %248 = load i64, i64* %247, align 8
  %249 = or i64 %248, %243
  store i64 %249, i64* %247, align 8
  br label %266

250:                                              ; preds = %217
  %251 = load i64, i64* @CAN_ERR_PROT_STUFF, align 8
  %252 = load %struct.can_frame*, %struct.can_frame** %14, align 8
  %253 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %252, i32 0, i32 1
  %254 = load i64*, i64** %253, align 8
  %255 = getelementptr inbounds i64, i64* %254, i64 2
  %256 = load i64, i64* %255, align 8
  %257 = or i64 %256, %251
  store i64 %257, i64* %255, align 8
  br label %266

258:                                              ; preds = %217
  %259 = load i64, i64* %10, align 8
  %260 = load i64, i64* @ECC_SEG, align 8
  %261 = and i64 %259, %260
  %262 = load %struct.can_frame*, %struct.can_frame** %14, align 8
  %263 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %262, i32 0, i32 1
  %264 = load i64*, i64** %263, align 8
  %265 = getelementptr inbounds i64, i64* %264, i64 3
  store i64 %261, i64* %265, align 8
  br label %266

266:                                              ; preds = %258, %250, %242, %234
  %267 = load i64, i64* %10, align 8
  %268 = load i64, i64* @ECC_DIR, align 8
  %269 = and i64 %267, %268
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %279, label %271

271:                                              ; preds = %266
  %272 = load i64, i64* @CAN_ERR_PROT_TX, align 8
  %273 = load %struct.can_frame*, %struct.can_frame** %14, align 8
  %274 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %273, i32 0, i32 1
  %275 = load i64*, i64** %274, align 8
  %276 = getelementptr inbounds i64, i64* %275, i64 2
  %277 = load i64, i64* %276, align 8
  %278 = or i64 %277, %272
  store i64 %278, i64* %276, align 8
  br label %279

279:                                              ; preds = %271, %266
  %280 = load i64, i64* %13, align 8
  %281 = load %struct.can_frame*, %struct.can_frame** %14, align 8
  %282 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %281, i32 0, i32 1
  %283 = load i64*, i64** %282, align 8
  %284 = getelementptr inbounds i64, i64* %283, i64 6
  store i64 %280, i64* %284, align 8
  %285 = load i64, i64* %12, align 8
  %286 = load %struct.can_frame*, %struct.can_frame** %14, align 8
  %287 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %286, i32 0, i32 1
  %288 = load i64*, i64** %287, align 8
  %289 = getelementptr inbounds i64, i64* %288, i64 7
  store i64 %285, i64* %289, align 8
  br label %290

290:                                              ; preds = %279, %213
  %291 = load i32, i32* %8, align 4
  %292 = load %struct.ican3_dev*, %struct.ican3_dev** %4, align 8
  %293 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = icmp ne i32 %291, %295
  br i1 %296, label %297, label %365

297:                                              ; preds = %290
  %298 = load i32, i32* %8, align 4
  %299 = load i32, i32* @CAN_STATE_ERROR_WARNING, align 4
  %300 = icmp eq i32 %298, %299
  br i1 %300, label %305, label %301

301:                                              ; preds = %297
  %302 = load i32, i32* %8, align 4
  %303 = load i32, i32* @CAN_STATE_ERROR_PASSIVE, align 4
  %304 = icmp eq i32 %302, %303
  br i1 %304, label %305, label %365

305:                                              ; preds = %301, %297
  %306 = load i32, i32* @CAN_ERR_CRTL, align 4
  %307 = load %struct.can_frame*, %struct.can_frame** %14, align 8
  %308 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = or i32 %309, %306
  store i32 %310, i32* %308, align 8
  %311 = load i32, i32* %8, align 4
  %312 = load i32, i32* @CAN_STATE_ERROR_WARNING, align 4
  %313 = icmp eq i32 %311, %312
  br i1 %313, label %314, label %334

314:                                              ; preds = %305
  %315 = load %struct.ican3_dev*, %struct.ican3_dev** %4, align 8
  %316 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %316, i32 0, i32 2
  %318 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %318, align 4
  %321 = load i64, i64* %13, align 8
  %322 = load i64, i64* %12, align 8
  %323 = icmp sgt i64 %321, %322
  br i1 %323, label %324, label %326

324:                                              ; preds = %314
  %325 = load i64, i64* @CAN_ERR_CRTL_TX_WARNING, align 8
  br label %328

326:                                              ; preds = %314
  %327 = load i64, i64* @CAN_ERR_CRTL_RX_WARNING, align 8
  br label %328

328:                                              ; preds = %326, %324
  %329 = phi i64 [ %325, %324 ], [ %327, %326 ]
  %330 = load %struct.can_frame*, %struct.can_frame** %14, align 8
  %331 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %330, i32 0, i32 1
  %332 = load i64*, i64** %331, align 8
  %333 = getelementptr inbounds i64, i64* %332, i64 1
  store i64 %329, i64* %333, align 8
  br label %354

334:                                              ; preds = %305
  %335 = load %struct.ican3_dev*, %struct.ican3_dev** %4, align 8
  %336 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %336, i32 0, i32 2
  %338 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 8
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %338, align 8
  %341 = load i64, i64* %13, align 8
  %342 = load i64, i64* %12, align 8
  %343 = icmp sgt i64 %341, %342
  br i1 %343, label %344, label %346

344:                                              ; preds = %334
  %345 = load i64, i64* @CAN_ERR_CRTL_TX_PASSIVE, align 8
  br label %348

346:                                              ; preds = %334
  %347 = load i64, i64* @CAN_ERR_CRTL_RX_PASSIVE, align 8
  br label %348

348:                                              ; preds = %346, %344
  %349 = phi i64 [ %345, %344 ], [ %347, %346 ]
  %350 = load %struct.can_frame*, %struct.can_frame** %14, align 8
  %351 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %350, i32 0, i32 1
  %352 = load i64*, i64** %351, align 8
  %353 = getelementptr inbounds i64, i64* %352, i64 1
  store i64 %349, i64* %353, align 8
  br label %354

354:                                              ; preds = %348, %328
  %355 = load i64, i64* %13, align 8
  %356 = load %struct.can_frame*, %struct.can_frame** %14, align 8
  %357 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %356, i32 0, i32 1
  %358 = load i64*, i64** %357, align 8
  %359 = getelementptr inbounds i64, i64* %358, i64 6
  store i64 %355, i64* %359, align 8
  %360 = load i64, i64* %12, align 8
  %361 = load %struct.can_frame*, %struct.can_frame** %14, align 8
  %362 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %361, i32 0, i32 1
  %363 = load i64*, i64** %362, align 8
  %364 = getelementptr inbounds i64, i64* %363, i64 7
  store i64 %360, i64* %364, align 8
  br label %365

365:                                              ; preds = %354, %301, %290
  %366 = load i32, i32* %8, align 4
  %367 = load %struct.ican3_dev*, %struct.ican3_dev** %4, align 8
  %368 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %367, i32 0, i32 0
  %369 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %368, i32 0, i32 0
  store i32 %366, i32* %369, align 8
  %370 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %371 = call i32 @netif_rx(%struct.sk_buff* %370)
  store i32 0, i32* %3, align 4
  br label %372

372:                                              ; preds = %365, %131, %124, %110, %46, %33
  %373 = load i32, i32* %3, align 4
  ret i32 %373
}

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*) #1

declare dso_local i32 @kfree_skb(i32) #1

declare dso_local i32 @skb_dequeue(i32*) #1

declare dso_local i32 @ican3_set_buserror(%struct.ican3_dev*, i32) #1

declare dso_local %struct.sk_buff* @alloc_can_err_skb(%struct.net_device*, %struct.can_frame**) #1

declare dso_local i32 @can_bus_off(%struct.net_device*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
