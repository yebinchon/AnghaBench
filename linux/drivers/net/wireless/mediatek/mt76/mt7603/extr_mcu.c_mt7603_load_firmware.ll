; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_mcu.c_mt7603_load_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_mcu.c_mt7603_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7603_dev = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.firmware = type { i32, i32 }
%struct.mt7603_fw_trailer = type { i8*, i8*, i32 }

@MT7628_REV_E1 = common dso_local global i64 0, align 8
@MT7628_FIRMWARE_E1 = common dso_local global i8* null, align 8
@MT7628_FIRMWARE_E2 = common dso_local global i8* null, align 8
@MT7603_REV_E2 = common dso_local global i64 0, align 8
@MT7603_FIRMWARE_E1 = common dso_local global i8* null, align 8
@MT7603_FIRMWARE_E2 = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"Invalid firmware\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Firmware Version: %.10s\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Build Time: %.15s\0A\00", align 1
@MT_SCH_4 = common dso_local global i32 0, align 4
@MT_SCH_4_FORCE_QID = common dso_local global i32 0, align 4
@MT_SCH_4_BYPASS = common dso_local global i32 0, align 4
@MT_TOP_MISC2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Firmware already running...\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"Timeout waiting for ROM code to become ready\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@MCU_FIRMWARE_ADDRESS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"Download request failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Failed to send firmware to device\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Failed to start firmware\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"Timeout waiting for firmware to initialize\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"%.10s-%.15s\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"firmware init done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt7603_dev*)* @mt7603_load_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7603_load_firmware(%struct.mt7603_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt7603_dev*, align 8
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca %struct.mt7603_fw_trailer*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mt7603_dev* %0, %struct.mt7603_dev** %3, align 8
  %11 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %12 = call i64 @is_mt7628(%struct.mt7603_dev* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %1
  %15 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %16 = call i64 @mt76xx_rev(%struct.mt7603_dev* %15)
  %17 = load i64, i64* @MT7628_REV_E1, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i8*, i8** @MT7628_FIRMWARE_E1, align 8
  store i8* %20, i8** %6, align 8
  br label %23

21:                                               ; preds = %14
  %22 = load i8*, i8** @MT7628_FIRMWARE_E2, align 8
  store i8* %22, i8** %6, align 8
  br label %23

23:                                               ; preds = %21, %19
  br label %34

24:                                               ; preds = %1
  %25 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %26 = call i64 @mt76xx_rev(%struct.mt7603_dev* %25)
  %27 = load i64, i64* @MT7603_REV_E2, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i8*, i8** @MT7603_FIRMWARE_E1, align 8
  store i8* %30, i8** %6, align 8
  br label %33

31:                                               ; preds = %24
  %32 = load i8*, i8** @MT7603_FIRMWARE_E2, align 8
  store i8* %32, i8** %6, align 8
  br label %33

33:                                               ; preds = %31, %29
  br label %34

34:                                               ; preds = %33, %23
  %35 = load i8*, i8** %6, align 8
  %36 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %37 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @request_firmware(%struct.firmware** %4, i8* %35, i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %2, align 4
  br label %243

45:                                               ; preds = %34
  %46 = load %struct.firmware*, %struct.firmware** %4, align 8
  %47 = icmp ne %struct.firmware* %46, null
  br i1 %47, label %48, label %59

48:                                               ; preds = %45
  %49 = load %struct.firmware*, %struct.firmware** %4, align 8
  %50 = getelementptr inbounds %struct.firmware, %struct.firmware* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load %struct.firmware*, %struct.firmware** %4, align 8
  %55 = getelementptr inbounds %struct.firmware, %struct.firmware* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = icmp ult i64 %57, 24
  br i1 %58, label %59, label %67

59:                                               ; preds = %53, %48, %45
  %60 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %61 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @dev_err(i32 %63, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %10, align 4
  br label %239

67:                                               ; preds = %53
  %68 = load %struct.firmware*, %struct.firmware** %4, align 8
  %69 = getelementptr inbounds %struct.firmware, %struct.firmware* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.firmware*, %struct.firmware** %4, align 8
  %72 = getelementptr inbounds %struct.firmware, %struct.firmware* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %70, %73
  %75 = sext i32 %74 to i64
  %76 = sub i64 %75, 24
  %77 = inttoptr i64 %76 to %struct.mt7603_fw_trailer*
  store %struct.mt7603_fw_trailer* %77, %struct.mt7603_fw_trailer** %5, align 8
  %78 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %79 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.mt7603_fw_trailer*, %struct.mt7603_fw_trailer** %5, align 8
  %83 = getelementptr inbounds %struct.mt7603_fw_trailer, %struct.mt7603_fw_trailer* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 (i32, i8*, ...) @dev_info(i32 %81, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %84)
  %86 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %87 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.mt7603_fw_trailer*, %struct.mt7603_fw_trailer** %5, align 8
  %91 = getelementptr inbounds %struct.mt7603_fw_trailer, %struct.mt7603_fw_trailer* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 (i32, i8*, ...) @dev_info(i32 %89, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %92)
  %94 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %95 = call i32 @mt7603_reg_map(%struct.mt7603_dev* %94, i32 1342252184)
  store i32 %95, i32* %8, align 4
  %96 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @mt76_wr(%struct.mt7603_dev* %96, i32 %97, i32 5)
  %99 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @mt76_wr(%struct.mt7603_dev* %99, i32 %100, i32 5)
  %102 = call i32 @udelay(i32 1)
  %103 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %104 = load i32, i32* @MT_SCH_4, align 4
  %105 = load i32, i32* @MT_SCH_4_FORCE_QID, align 4
  %106 = load i32, i32* @MT_SCH_4_BYPASS, align 4
  %107 = load i32, i32* @MT_SCH_4_FORCE_QID, align 4
  %108 = call i32 @FIELD_PREP(i32 %107, i32 5)
  %109 = or i32 %106, %108
  %110 = call i32 @mt76_rmw(%struct.mt7603_dev* %103, i32 %104, i32 %105, i32 %109)
  %111 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %112 = load i32, i32* @MT_TOP_MISC2, align 4
  %113 = call i32 @mt76_rr(%struct.mt7603_dev* %111, i32 %112)
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %9, align 4
  %115 = call i32 @BIT(i32 1)
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %67
  %119 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %120 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 (i32, i8*, ...) @dev_info(i32 %122, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %202

124:                                              ; preds = %67
  %125 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %126 = load i32, i32* @MT_TOP_MISC2, align 4
  %127 = call i32 @BIT(i32 0)
  %128 = call i32 @BIT(i32 1)
  %129 = or i32 %127, %128
  %130 = call i32 @BIT(i32 0)
  %131 = call i32 @mt76_poll_msec(%struct.mt7603_dev* %125, i32 %126, i32 %129, i32 %130, i32 500)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %141, label %133

133:                                              ; preds = %124
  %134 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %135 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @dev_err(i32 %137, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  %139 = load i32, i32* @EIO, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %10, align 4
  br label %239

141:                                              ; preds = %124
  %142 = load %struct.mt7603_fw_trailer*, %struct.mt7603_fw_trailer** %5, align 8
  %143 = getelementptr inbounds %struct.mt7603_fw_trailer, %struct.mt7603_fw_trailer* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @le32_to_cpu(i32 %144)
  %146 = add nsw i32 %145, 4
  store i32 %146, i32* %7, align 4
  %147 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %148 = load i32, i32* @MCU_FIRMWARE_ADDRESS, align 4
  %149 = load i32, i32* %7, align 4
  %150 = call i32 @mt7603_mcu_init_download(%struct.mt7603_dev* %147, i32 %148, i32 %149)
  store i32 %150, i32* %10, align 4
  %151 = load i32, i32* %10, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %141
  %154 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %155 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @dev_err(i32 %157, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %239

159:                                              ; preds = %141
  %160 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %161 = load %struct.firmware*, %struct.firmware** %4, align 8
  %162 = getelementptr inbounds %struct.firmware, %struct.firmware* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %7, align 4
  %165 = call i32 @mt7603_mcu_send_firmware(%struct.mt7603_dev* %160, i32 %163, i32 %164)
  store i32 %165, i32* %10, align 4
  %166 = load i32, i32* %10, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %159
  %169 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %170 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @dev_err(i32 %172, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  br label %239

174:                                              ; preds = %159
  %175 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %176 = load i32, i32* @MCU_FIRMWARE_ADDRESS, align 4
  %177 = call i32 @mt7603_mcu_start_firmware(%struct.mt7603_dev* %175, i32 %176)
  store i32 %177, i32* %10, align 4
  %178 = load i32, i32* %10, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %174
  %181 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %182 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @dev_err(i32 %184, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  br label %239

186:                                              ; preds = %174
  %187 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %188 = load i32, i32* @MT_TOP_MISC2, align 4
  %189 = call i32 @BIT(i32 1)
  %190 = call i32 @BIT(i32 1)
  %191 = call i32 @mt76_poll_msec(%struct.mt7603_dev* %187, i32 %188, i32 %189, i32 %190, i32 500)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %201, label %193

193:                                              ; preds = %186
  %194 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %195 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @dev_err(i32 %197, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0))
  %199 = load i32, i32* @EIO, align 4
  %200 = sub nsw i32 0, %199
  store i32 %200, i32* %10, align 4
  br label %239

201:                                              ; preds = %186
  br label %202

202:                                              ; preds = %201, %118
  %203 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %204 = load i32, i32* @MT_SCH_4, align 4
  %205 = load i32, i32* @MT_SCH_4_FORCE_QID, align 4
  %206 = load i32, i32* @MT_SCH_4_BYPASS, align 4
  %207 = or i32 %205, %206
  %208 = call i32 @mt76_clear(%struct.mt7603_dev* %203, i32 %204, i32 %207)
  %209 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %210 = load i32, i32* @MT_SCH_4, align 4
  %211 = call i32 @BIT(i32 8)
  %212 = call i32 @mt76_set(%struct.mt7603_dev* %209, i32 %210, i32 %211)
  %213 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %214 = load i32, i32* @MT_SCH_4, align 4
  %215 = call i32 @BIT(i32 8)
  %216 = call i32 @mt76_clear(%struct.mt7603_dev* %213, i32 %214, i32 %215)
  %217 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %218 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %217, i32 0, i32 0
  store i32 1, i32* %218, align 8
  %219 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %220 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 1
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 0
  %224 = load %struct.TYPE_4__*, %struct.TYPE_4__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.mt7603_fw_trailer*, %struct.mt7603_fw_trailer** %5, align 8
  %228 = getelementptr inbounds %struct.mt7603_fw_trailer, %struct.mt7603_fw_trailer* %227, i32 0, i32 0
  %229 = load i8*, i8** %228, align 8
  %230 = load %struct.mt7603_fw_trailer*, %struct.mt7603_fw_trailer** %5, align 8
  %231 = getelementptr inbounds %struct.mt7603_fw_trailer, %struct.mt7603_fw_trailer* %230, i32 0, i32 1
  %232 = load i8*, i8** %231, align 8
  %233 = call i32 @snprintf(i32 %226, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8* %229, i8* %232)
  %234 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %235 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = call i32 (i32, i8*, ...) @dev_info(i32 %237, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  br label %239

239:                                              ; preds = %202, %193, %180, %168, %153, %133, %59
  %240 = load %struct.firmware*, %struct.firmware** %4, align 8
  %241 = call i32 @release_firmware(%struct.firmware* %240)
  %242 = load i32, i32* %10, align 4
  store i32 %242, i32* %2, align 4
  br label %243

243:                                              ; preds = %239, %43
  %244 = load i32, i32* %2, align 4
  ret i32 %244
}

declare dso_local i64 @is_mt7628(%struct.mt7603_dev*) #1

declare dso_local i64 @mt76xx_rev(%struct.mt7603_dev*) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_info(i32, i8*, ...) #1

declare dso_local i32 @mt7603_reg_map(%struct.mt7603_dev*, i32) #1

declare dso_local i32 @mt76_wr(%struct.mt7603_dev*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mt76_rmw(%struct.mt7603_dev*, i32, i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @mt76_rr(%struct.mt7603_dev*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @mt76_poll_msec(%struct.mt7603_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @mt7603_mcu_init_download(%struct.mt7603_dev*, i32, i32) #1

declare dso_local i32 @mt7603_mcu_send_firmware(%struct.mt7603_dev*, i32, i32) #1

declare dso_local i32 @mt7603_mcu_start_firmware(%struct.mt7603_dev*, i32) #1

declare dso_local i32 @mt76_clear(%struct.mt7603_dev*, i32, i32) #1

declare dso_local i32 @mt76_set(%struct.mt7603_dev*, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
