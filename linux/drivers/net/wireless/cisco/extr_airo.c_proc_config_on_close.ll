; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_proc_config_on_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_proc_config_on_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.proc_data* }
%struct.proc_data = type { i8*, i32 }
%struct.net_device = type { %struct.airo_info* }
%struct.airo_info = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i8*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i64*, i32, i8*, i32 }

@FLAG_COMMIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Mode: \00", align 1
@FLAG_RESET = common dso_local global i32 0, align 4
@RXMODE_FULL_MASK = common dso_local global i32 0, align 4
@FLAG_802_11 = common dso_local global i32 0, align 4
@MODE_CFG_MASK = common dso_local global i32 0, align 4
@SCANMODE_ACTIVE = common dso_local global i8* null, align 8
@MODE_STA_IBSS = common dso_local global i32 0, align 4
@MODE_STA_ESS = common dso_local global i32 0, align 4
@RXMODE_RFMON = common dso_local global i32 0, align 4
@RXMODE_DISABLE_802_3_HEADER = common dso_local global i32 0, align 4
@SCANMODE_PASSIVE = common dso_local global i8* null, align 8
@RXMODE_RFMON_ANYBSS = common dso_local global i32 0, align 4
@RXMODE_LANMON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"Radio: \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@FLAG_RADIO_OFF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"NodeName: \00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"PowerMode: \00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"PSPCAM\00", align 1
@POWERSAVE_PSPCAM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"PSP\00", align 1
@POWERSAVE_PSP = common dso_local global i32 0, align 4
@POWERSAVE_CAM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"DataRates: \00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"Channel: \00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"XmitPower: \00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"WEP: \00", align 1
@AUTH_SHAREDKEY = common dso_local global i32 0, align 4
@AUTH_ENCRYPT = common dso_local global i32 0, align 4
@AUTH_OPEN = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [17 x i8] c"LongRetryLimit: \00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"ShortRetryLimit: \00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"RTSThreshold: \00", align 1
@AIRO_DEF_MTU = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [17 x i8] c"TXMSDULifetime: \00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"RXMSDULifetime: \00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"TXDiversity: \00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"RXDiversity: \00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"FragThreshold: \00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"Modulation: \00", align 1
@MOD_DEFAULT = common dso_local global i32 0, align 4
@MOD_CCK = common dso_local global i32 0, align 4
@MOD_MOK = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [19 x i8] c"Unknown modulation\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"Preamble: \00", align 1
@PREAMBLE_AUTO = common dso_local global i32 0, align 4
@PREAMBLE_LONG = common dso_local global i32 0, align 4
@PREAMBLE_SHORT = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [17 x i8] c"Unknown preamble\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"Couldn't figure out %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.file*)* @proc_config_on_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @proc_config_on_close(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.proc_data*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.airo_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %29 = load %struct.file*, %struct.file** %4, align 8
  %30 = getelementptr inbounds %struct.file, %struct.file* %29, i32 0, i32 0
  %31 = load %struct.proc_data*, %struct.proc_data** %30, align 8
  store %struct.proc_data* %31, %struct.proc_data** %5, align 8
  %32 = load %struct.inode*, %struct.inode** %3, align 8
  %33 = call %struct.net_device* @PDE_DATA(%struct.inode* %32)
  store %struct.net_device* %33, %struct.net_device** %6, align 8
  %34 = load %struct.net_device*, %struct.net_device** %6, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 0
  %36 = load %struct.airo_info*, %struct.airo_info** %35, align 8
  store %struct.airo_info* %36, %struct.airo_info** %7, align 8
  %37 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %38 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %2
  br label %779

42:                                               ; preds = %2
  %43 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %44 = call i32 @readConfigRid(%struct.airo_info* %43, i32 1)
  %45 = load i32, i32* @FLAG_COMMIT, align 4
  %46 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %47 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %46, i32 0, i32 1
  %48 = call i32 @set_bit(i32 %45, i32* %47)
  %49 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %50 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %8, align 8
  br label %52

52:                                               ; preds = %775, %42
  %53 = load i8*, i8** %8, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  %55 = load i8, i8* %54, align 1
  %56 = icmp ne i8 %55, 0
  br i1 %56, label %57, label %776

57:                                               ; preds = %52
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 @strncmp(i8* %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %180, label %61

61:                                               ; preds = %57
  %62 = load i8*, i8** %8, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 6
  store i8* %63, i8** %8, align 8
  %64 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %65 = call i64 @sniffing_mode(%struct.airo_info* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = load i32, i32* @FLAG_RESET, align 4
  %69 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %70 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %69, i32 0, i32 1
  %71 = call i32 @set_bit(i32 %68, i32* %70)
  br label %72

72:                                               ; preds = %67, %61
  %73 = load i32, i32* @RXMODE_FULL_MASK, align 4
  %74 = xor i32 %73, -1
  %75 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %76 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = and i32 %78, %74
  store i32 %79, i32* %77, align 8
  %80 = load i32, i32* @FLAG_802_11, align 4
  %81 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %82 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %81, i32 0, i32 1
  %83 = call i32 @clear_bit(i32 %80, i32* %82)
  %84 = load i32, i32* @MODE_CFG_MASK, align 4
  %85 = xor i32 %84, -1
  %86 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %87 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 17
  %89 = load i32, i32* %88, align 8
  %90 = and i32 %89, %85
  store i32 %90, i32* %88, align 8
  %91 = load i8*, i8** @SCANMODE_ACTIVE, align 8
  %92 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %93 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 16
  store i8* %91, i8** %94, align 8
  %95 = load i8*, i8** %8, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 0
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 97
  br i1 %99, label %100, label %107

100:                                              ; preds = %72
  %101 = load i32, i32* @MODE_STA_IBSS, align 4
  %102 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %103 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 17
  %105 = load i32, i32* %104, align 8
  %106 = or i32 %105, %101
  store i32 %106, i32* %104, align 8
  br label %175

107:                                              ; preds = %72
  %108 = load i32, i32* @MODE_STA_ESS, align 4
  %109 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %110 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 17
  %112 = load i32, i32* %111, align 8
  %113 = or i32 %112, %108
  store i32 %113, i32* %111, align 8
  %114 = load i8*, i8** %8, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 0
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 114
  br i1 %118, label %119, label %136

119:                                              ; preds = %107
  %120 = load i32, i32* @RXMODE_RFMON, align 4
  %121 = load i32, i32* @RXMODE_DISABLE_802_3_HEADER, align 4
  %122 = or i32 %120, %121
  %123 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %124 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = or i32 %126, %122
  store i32 %127, i32* %125, align 8
  %128 = load i8*, i8** @SCANMODE_PASSIVE, align 8
  %129 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %130 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 16
  store i8* %128, i8** %131, align 8
  %132 = load i32, i32* @FLAG_802_11, align 4
  %133 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %134 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %133, i32 0, i32 1
  %135 = call i32 @set_bit(i32 %132, i32* %134)
  br label %174

136:                                              ; preds = %107
  %137 = load i8*, i8** %8, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 0
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp eq i32 %140, 121
  br i1 %141, label %142, label %159

142:                                              ; preds = %136
  %143 = load i32, i32* @RXMODE_RFMON_ANYBSS, align 4
  %144 = load i32, i32* @RXMODE_DISABLE_802_3_HEADER, align 4
  %145 = or i32 %143, %144
  %146 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %147 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = or i32 %149, %145
  store i32 %150, i32* %148, align 8
  %151 = load i8*, i8** @SCANMODE_PASSIVE, align 8
  %152 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %153 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 16
  store i8* %151, i8** %154, align 8
  %155 = load i32, i32* @FLAG_802_11, align 4
  %156 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %157 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %156, i32 0, i32 1
  %158 = call i32 @set_bit(i32 %155, i32* %157)
  br label %173

159:                                              ; preds = %136
  %160 = load i8*, i8** %8, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 0
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp eq i32 %163, 108
  br i1 %164, label %165, label %172

165:                                              ; preds = %159
  %166 = load i32, i32* @RXMODE_LANMON, align 4
  %167 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %168 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = or i32 %170, %166
  store i32 %171, i32* %169, align 8
  br label %172

172:                                              ; preds = %165, %159
  br label %173

173:                                              ; preds = %172, %142
  br label %174

174:                                              ; preds = %173, %119
  br label %175

175:                                              ; preds = %174, %100
  %176 = load i32, i32* @FLAG_COMMIT, align 4
  %177 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %178 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %177, i32 0, i32 1
  %179 = call i32 @set_bit(i32 %176, i32* %178)
  br label %749

180:                                              ; preds = %57
  %181 = load i8*, i8** %8, align 8
  %182 = call i32 @strncmp(i8* %181, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %201, label %184

184:                                              ; preds = %180
  %185 = load i8*, i8** %8, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 7
  store i8* %186, i8** %8, align 8
  %187 = load i8*, i8** %8, align 8
  %188 = call i32 @strncmp(i8* %187, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %195, label %190

190:                                              ; preds = %184
  %191 = load i32, i32* @FLAG_RADIO_OFF, align 4
  %192 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %193 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %192, i32 0, i32 1
  %194 = call i32 @set_bit(i32 %191, i32* %193)
  br label %200

195:                                              ; preds = %184
  %196 = load i32, i32* @FLAG_RADIO_OFF, align 4
  %197 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %198 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %197, i32 0, i32 1
  %199 = call i32 @clear_bit(i32 %196, i32* %198)
  br label %200

200:                                              ; preds = %195, %190
  br label %748

201:                                              ; preds = %180
  %202 = load i8*, i8** %8, align 8
  %203 = call i32 @strncmp(i8* %202, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 10)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %247, label %205

205:                                              ; preds = %201
  %206 = load i8*, i8** %8, align 8
  %207 = getelementptr inbounds i8, i8* %206, i64 10
  store i8* %207, i8** %8, align 8
  %208 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %209 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 1
  %211 = load i8*, i8** %210, align 8
  %212 = call i32 @memset(i8* %211, i32 0, i32 16)
  store i32 0, i32* %9, align 4
  br label %213

213:                                              ; preds = %239, %205
  %214 = load i32, i32* %9, align 4
  %215 = icmp slt i32 %214, 16
  br i1 %215, label %216, label %224

216:                                              ; preds = %213
  %217 = load i8*, i8** %8, align 8
  %218 = load i32, i32* %9, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i8, i8* %217, i64 %219
  %221 = load i8, i8* %220, align 1
  %222 = sext i8 %221 to i32
  %223 = icmp ne i32 %222, 10
  br label %224

224:                                              ; preds = %216, %213
  %225 = phi i1 [ false, %213 ], [ %223, %216 ]
  br i1 %225, label %226, label %242

226:                                              ; preds = %224
  %227 = load i8*, i8** %8, align 8
  %228 = load i32, i32* %9, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i8, i8* %227, i64 %229
  %231 = load i8, i8* %230, align 1
  %232 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %233 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %232, i32 0, i32 2
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 1
  %235 = load i8*, i8** %234, align 8
  %236 = load i32, i32* %9, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i8, i8* %235, i64 %237
  store i8 %231, i8* %238, align 1
  br label %239

239:                                              ; preds = %226
  %240 = load i32, i32* %9, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %9, align 4
  br label %213

242:                                              ; preds = %224
  %243 = load i32, i32* @FLAG_COMMIT, align 4
  %244 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %245 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %244, i32 0, i32 1
  %246 = call i32 @set_bit(i32 %243, i32* %245)
  br label %747

247:                                              ; preds = %201
  %248 = load i8*, i8** %8, align 8
  %249 = call i32 @strncmp(i8* %248, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 11)
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %290, label %251

251:                                              ; preds = %247
  %252 = load i8*, i8** %8, align 8
  %253 = getelementptr inbounds i8, i8* %252, i64 11
  store i8* %253, i8** %8, align 8
  %254 = load i8*, i8** %8, align 8
  %255 = call i32 @strncmp(i8* %254, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 6)
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %266, label %257

257:                                              ; preds = %251
  %258 = load i32, i32* @POWERSAVE_PSPCAM, align 4
  %259 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %260 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %259, i32 0, i32 2
  %261 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %260, i32 0, i32 15
  store i32 %258, i32* %261, align 8
  %262 = load i32, i32* @FLAG_COMMIT, align 4
  %263 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %264 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %263, i32 0, i32 1
  %265 = call i32 @set_bit(i32 %262, i32* %264)
  br label %289

266:                                              ; preds = %251
  %267 = load i8*, i8** %8, align 8
  %268 = call i32 @strncmp(i8* %267, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 3)
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %279, label %270

270:                                              ; preds = %266
  %271 = load i32, i32* @POWERSAVE_PSP, align 4
  %272 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %273 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %272, i32 0, i32 2
  %274 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %273, i32 0, i32 15
  store i32 %271, i32* %274, align 8
  %275 = load i32, i32* @FLAG_COMMIT, align 4
  %276 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %277 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %276, i32 0, i32 1
  %278 = call i32 @set_bit(i32 %275, i32* %277)
  br label %288

279:                                              ; preds = %266
  %280 = load i32, i32* @POWERSAVE_CAM, align 4
  %281 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %282 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %281, i32 0, i32 2
  %283 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %282, i32 0, i32 15
  store i32 %280, i32* %283, align 8
  %284 = load i32, i32* @FLAG_COMMIT, align 4
  %285 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %286 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %285, i32 0, i32 1
  %287 = call i32 @set_bit(i32 %284, i32* %286)
  br label %288

288:                                              ; preds = %279, %270
  br label %289

289:                                              ; preds = %288, %257
  br label %746

290:                                              ; preds = %247
  %291 = load i8*, i8** %8, align 8
  %292 = call i32 @strncmp(i8* %291, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 11)
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %322, label %294

294:                                              ; preds = %290
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %295 = load i8*, i8** %8, align 8
  %296 = getelementptr inbounds i8, i8* %295, i64 11
  store i8* %296, i8** %8, align 8
  br label %297

297:                                              ; preds = %301, %294
  %298 = load i8*, i8** %8, align 8
  %299 = call i32 @get_dec_u16(i8* %298, i32* %11, i32 3)
  store i32 %299, i32* %10, align 4
  %300 = icmp ne i32 %299, -1
  br i1 %300, label %301, label %317

301:                                              ; preds = %297
  %302 = load i32, i32* %10, align 4
  %303 = sext i32 %302 to i64
  %304 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %305 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %304, i32 0, i32 2
  %306 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %305, i32 0, i32 14
  %307 = load i64*, i64** %306, align 8
  %308 = load i32, i32* %12, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %12, align 4
  %310 = sext i32 %308 to i64
  %311 = getelementptr inbounds i64, i64* %307, i64 %310
  store i64 %303, i64* %311, align 8
  %312 = load i32, i32* %11, align 4
  %313 = add nsw i32 %312, 1
  %314 = load i8*, i8** %8, align 8
  %315 = sext i32 %313 to i64
  %316 = getelementptr inbounds i8, i8* %314, i64 %315
  store i8* %316, i8** %8, align 8
  store i32 0, i32* %11, align 4
  br label %297

317:                                              ; preds = %297
  %318 = load i32, i32* @FLAG_COMMIT, align 4
  %319 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %320 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %319, i32 0, i32 1
  %321 = call i32 @set_bit(i32 %318, i32* %320)
  br label %745

322:                                              ; preds = %290
  %323 = load i8*, i8** %8, align 8
  %324 = call i32 @strncmp(i8* %323, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 9)
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %346, label %326

326:                                              ; preds = %322
  store i32 0, i32* %14, align 4
  %327 = load i8*, i8** %8, align 8
  %328 = getelementptr inbounds i8, i8* %327, i64 9
  store i8* %328, i8** %8, align 8
  %329 = load i8*, i8** %8, align 8
  %330 = load i32, i32* %14, align 4
  %331 = add nsw i32 %330, 3
  %332 = call i32 @get_dec_u16(i8* %329, i32* %14, i32 %331)
  store i32 %332, i32* %13, align 4
  %333 = load i32, i32* %13, align 4
  %334 = icmp ne i32 %333, -1
  br i1 %334, label %335, label %345

335:                                              ; preds = %326
  %336 = load i32, i32* %13, align 4
  %337 = call i8* @cpu_to_le16(i32 %336)
  %338 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %339 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %338, i32 0, i32 2
  %340 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %339, i32 0, i32 13
  store i8* %337, i8** %340, align 8
  %341 = load i32, i32* @FLAG_COMMIT, align 4
  %342 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %343 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %342, i32 0, i32 1
  %344 = call i32 @set_bit(i32 %341, i32* %343)
  br label %345

345:                                              ; preds = %335, %326
  br label %744

346:                                              ; preds = %322
  %347 = load i8*, i8** %8, align 8
  %348 = call i32 @strncmp(i8* %347, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 11)
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %370, label %350

350:                                              ; preds = %346
  store i32 0, i32* %16, align 4
  %351 = load i8*, i8** %8, align 8
  %352 = getelementptr inbounds i8, i8* %351, i64 11
  store i8* %352, i8** %8, align 8
  %353 = load i8*, i8** %8, align 8
  %354 = load i32, i32* %16, align 4
  %355 = add nsw i32 %354, 3
  %356 = call i32 @get_dec_u16(i8* %353, i32* %16, i32 %355)
  store i32 %356, i32* %15, align 4
  %357 = load i32, i32* %15, align 4
  %358 = icmp ne i32 %357, -1
  br i1 %358, label %359, label %369

359:                                              ; preds = %350
  %360 = load i32, i32* %15, align 4
  %361 = call i8* @cpu_to_le16(i32 %360)
  %362 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %363 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %362, i32 0, i32 2
  %364 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %363, i32 0, i32 12
  store i8* %361, i8** %364, align 8
  %365 = load i32, i32* @FLAG_COMMIT, align 4
  %366 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %367 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %366, i32 0, i32 1
  %368 = call i32 @set_bit(i32 %365, i32* %367)
  br label %369

369:                                              ; preds = %359, %350
  br label %743

370:                                              ; preds = %346
  %371 = load i8*, i8** %8, align 8
  %372 = call i32 @strncmp(i8* %371, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 5)
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %398, label %374

374:                                              ; preds = %370
  %375 = load i8*, i8** %8, align 8
  %376 = getelementptr inbounds i8, i8* %375, i64 5
  store i8* %376, i8** %8, align 8
  %377 = load i8*, i8** %8, align 8
  %378 = getelementptr inbounds i8, i8* %377, i64 0
  %379 = load i8, i8* %378, align 1
  %380 = sext i8 %379 to i32
  switch i32 %380, label %389 [
    i32 115, label %381
    i32 101, label %385
  ]

381:                                              ; preds = %374
  %382 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %383 = load i32, i32* @AUTH_SHAREDKEY, align 4
  %384 = call i32 @set_auth_type(%struct.airo_info* %382, i32 %383)
  br label %393

385:                                              ; preds = %374
  %386 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %387 = load i32, i32* @AUTH_ENCRYPT, align 4
  %388 = call i32 @set_auth_type(%struct.airo_info* %386, i32 %387)
  br label %393

389:                                              ; preds = %374
  %390 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %391 = load i32, i32* @AUTH_OPEN, align 4
  %392 = call i32 @set_auth_type(%struct.airo_info* %390, i32 %391)
  br label %393

393:                                              ; preds = %389, %385, %381
  %394 = load i32, i32* @FLAG_COMMIT, align 4
  %395 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %396 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %395, i32 0, i32 1
  %397 = call i32 @set_bit(i32 %394, i32* %396)
  br label %742

398:                                              ; preds = %370
  %399 = load i8*, i8** %8, align 8
  %400 = call i32 @strncmp(i8* %399, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 16)
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %429, label %402

402:                                              ; preds = %398
  store i32 0, i32* %18, align 4
  %403 = load i8*, i8** %8, align 8
  %404 = getelementptr inbounds i8, i8* %403, i64 16
  store i8* %404, i8** %8, align 8
  %405 = load i8*, i8** %8, align 8
  %406 = call i32 @get_dec_u16(i8* %405, i32* %18, i32 3)
  store i32 %406, i32* %17, align 4
  %407 = load i32, i32* %17, align 4
  %408 = icmp slt i32 %407, 0
  br i1 %408, label %409, label %410

409:                                              ; preds = %402
  br label %418

410:                                              ; preds = %402
  %411 = load i32, i32* %17, align 4
  %412 = icmp sgt i32 %411, 255
  br i1 %412, label %413, label %414

413:                                              ; preds = %410
  br label %416

414:                                              ; preds = %410
  %415 = load i32, i32* %17, align 4
  br label %416

416:                                              ; preds = %414, %413
  %417 = phi i32 [ 255, %413 ], [ %415, %414 ]
  br label %418

418:                                              ; preds = %416, %409
  %419 = phi i32 [ 0, %409 ], [ %417, %416 ]
  store i32 %419, i32* %17, align 4
  %420 = load i32, i32* %17, align 4
  %421 = call i8* @cpu_to_le16(i32 %420)
  %422 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %423 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %422, i32 0, i32 2
  %424 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %423, i32 0, i32 11
  store i8* %421, i8** %424, align 8
  %425 = load i32, i32* @FLAG_COMMIT, align 4
  %426 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %427 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %426, i32 0, i32 1
  %428 = call i32 @set_bit(i32 %425, i32* %427)
  br label %741

429:                                              ; preds = %398
  %430 = load i8*, i8** %8, align 8
  %431 = call i32 @strncmp(i8* %430, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i32 17)
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %460, label %433

433:                                              ; preds = %429
  store i32 0, i32* %20, align 4
  %434 = load i8*, i8** %8, align 8
  %435 = getelementptr inbounds i8, i8* %434, i64 17
  store i8* %435, i8** %8, align 8
  %436 = load i8*, i8** %8, align 8
  %437 = call i32 @get_dec_u16(i8* %436, i32* %20, i32 3)
  store i32 %437, i32* %19, align 4
  %438 = load i32, i32* %19, align 4
  %439 = icmp slt i32 %438, 0
  br i1 %439, label %440, label %441

440:                                              ; preds = %433
  br label %449

441:                                              ; preds = %433
  %442 = load i32, i32* %19, align 4
  %443 = icmp sgt i32 %442, 255
  br i1 %443, label %444, label %445

444:                                              ; preds = %441
  br label %447

445:                                              ; preds = %441
  %446 = load i32, i32* %19, align 4
  br label %447

447:                                              ; preds = %445, %444
  %448 = phi i32 [ 255, %444 ], [ %446, %445 ]
  br label %449

449:                                              ; preds = %447, %440
  %450 = phi i32 [ 0, %440 ], [ %448, %447 ]
  store i32 %450, i32* %19, align 4
  %451 = load i32, i32* %19, align 4
  %452 = call i8* @cpu_to_le16(i32 %451)
  %453 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %454 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %453, i32 0, i32 2
  %455 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %454, i32 0, i32 10
  store i8* %452, i8** %455, align 8
  %456 = load i32, i32* @FLAG_COMMIT, align 4
  %457 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %458 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %457, i32 0, i32 1
  %459 = call i32 @set_bit(i32 %456, i32* %458)
  br label %740

460:                                              ; preds = %429
  %461 = load i8*, i8** %8, align 8
  %462 = call i32 @strncmp(i8* %461, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i32 14)
  %463 = icmp ne i32 %462, 0
  br i1 %463, label %493, label %464

464:                                              ; preds = %460
  store i32 0, i32* %22, align 4
  %465 = load i8*, i8** %8, align 8
  %466 = getelementptr inbounds i8, i8* %465, i64 14
  store i8* %466, i8** %8, align 8
  %467 = load i8*, i8** %8, align 8
  %468 = call i32 @get_dec_u16(i8* %467, i32* %22, i32 4)
  store i32 %468, i32* %21, align 4
  %469 = load i32, i32* %21, align 4
  %470 = icmp slt i32 %469, 0
  br i1 %470, label %471, label %472

471:                                              ; preds = %464
  br label %482

472:                                              ; preds = %464
  %473 = load i32, i32* %21, align 4
  %474 = load i32, i32* @AIRO_DEF_MTU, align 4
  %475 = icmp sgt i32 %473, %474
  br i1 %475, label %476, label %478

476:                                              ; preds = %472
  %477 = load i32, i32* @AIRO_DEF_MTU, align 4
  br label %480

478:                                              ; preds = %472
  %479 = load i32, i32* %21, align 4
  br label %480

480:                                              ; preds = %478, %476
  %481 = phi i32 [ %477, %476 ], [ %479, %478 ]
  br label %482

482:                                              ; preds = %480, %471
  %483 = phi i32 [ 0, %471 ], [ %481, %480 ]
  store i32 %483, i32* %21, align 4
  %484 = load i32, i32* %21, align 4
  %485 = call i8* @cpu_to_le16(i32 %484)
  %486 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %487 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %486, i32 0, i32 2
  %488 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %487, i32 0, i32 9
  store i8* %485, i8** %488, align 8
  %489 = load i32, i32* @FLAG_COMMIT, align 4
  %490 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %491 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %490, i32 0, i32 1
  %492 = call i32 @set_bit(i32 %489, i32* %491)
  br label %739

493:                                              ; preds = %460
  %494 = load i8*, i8** %8, align 8
  %495 = call i32 @strncmp(i8* %494, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 16)
  %496 = icmp ne i32 %495, 0
  br i1 %496, label %518, label %497

497:                                              ; preds = %493
  store i32 0, i32* %24, align 4
  %498 = load i8*, i8** %8, align 8
  %499 = getelementptr inbounds i8, i8* %498, i64 16
  store i8* %499, i8** %8, align 8
  %500 = load i8*, i8** %8, align 8
  %501 = call i32 @get_dec_u16(i8* %500, i32* %24, i32 5)
  store i32 %501, i32* %23, align 4
  %502 = load i32, i32* %23, align 4
  %503 = icmp slt i32 %502, 0
  br i1 %503, label %504, label %505

504:                                              ; preds = %497
  br label %507

505:                                              ; preds = %497
  %506 = load i32, i32* %23, align 4
  br label %507

507:                                              ; preds = %505, %504
  %508 = phi i32 [ 0, %504 ], [ %506, %505 ]
  store i32 %508, i32* %23, align 4
  %509 = load i32, i32* %23, align 4
  %510 = call i8* @cpu_to_le16(i32 %509)
  %511 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %512 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %511, i32 0, i32 2
  %513 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %512, i32 0, i32 8
  store i8* %510, i8** %513, align 8
  %514 = load i32, i32* @FLAG_COMMIT, align 4
  %515 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %516 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %515, i32 0, i32 1
  %517 = call i32 @set_bit(i32 %514, i32* %516)
  br label %738

518:                                              ; preds = %493
  %519 = load i8*, i8** %8, align 8
  %520 = call i32 @strncmp(i8* %519, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i32 16)
  %521 = icmp ne i32 %520, 0
  br i1 %521, label %543, label %522

522:                                              ; preds = %518
  store i32 0, i32* %26, align 4
  %523 = load i8*, i8** %8, align 8
  %524 = getelementptr inbounds i8, i8* %523, i64 16
  store i8* %524, i8** %8, align 8
  %525 = load i8*, i8** %8, align 8
  %526 = call i32 @get_dec_u16(i8* %525, i32* %26, i32 5)
  store i32 %526, i32* %25, align 4
  %527 = load i32, i32* %25, align 4
  %528 = icmp slt i32 %527, 0
  br i1 %528, label %529, label %530

529:                                              ; preds = %522
  br label %532

530:                                              ; preds = %522
  %531 = load i32, i32* %25, align 4
  br label %532

532:                                              ; preds = %530, %529
  %533 = phi i32 [ 0, %529 ], [ %531, %530 ]
  store i32 %533, i32* %25, align 4
  %534 = load i32, i32* %25, align 4
  %535 = call i8* @cpu_to_le16(i32 %534)
  %536 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %537 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %536, i32 0, i32 2
  %538 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %537, i32 0, i32 7
  store i8* %535, i8** %538, align 8
  %539 = load i32, i32* @FLAG_COMMIT, align 4
  %540 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %541 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %540, i32 0, i32 1
  %542 = call i32 @set_bit(i32 %539, i32* %541)
  br label %737

543:                                              ; preds = %518
  %544 = load i8*, i8** %8, align 8
  %545 = call i32 @strncmp(i8* %544, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i32 13)
  %546 = icmp ne i32 %545, 0
  br i1 %546, label %571, label %547

547:                                              ; preds = %543
  %548 = load i8*, i8** %8, align 8
  %549 = getelementptr inbounds i8, i8* %548, i64 13
  %550 = load i8, i8* %549, align 1
  %551 = sext i8 %550 to i32
  %552 = icmp eq i32 %551, 108
  br i1 %552, label %553, label %554

553:                                              ; preds = %547
  br label %562

554:                                              ; preds = %547
  %555 = load i8*, i8** %8, align 8
  %556 = getelementptr inbounds i8, i8* %555, i64 13
  %557 = load i8, i8* %556, align 1
  %558 = sext i8 %557 to i32
  %559 = icmp eq i32 %558, 114
  %560 = zext i1 %559 to i64
  %561 = select i1 %559, i32 2, i32 3
  br label %562

562:                                              ; preds = %554, %553
  %563 = phi i32 [ 1, %553 ], [ %561, %554 ]
  %564 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %565 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %564, i32 0, i32 2
  %566 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %565, i32 0, i32 2
  store i32 %563, i32* %566, align 8
  %567 = load i32, i32* @FLAG_COMMIT, align 4
  %568 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %569 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %568, i32 0, i32 1
  %570 = call i32 @set_bit(i32 %567, i32* %569)
  br label %736

571:                                              ; preds = %543
  %572 = load i8*, i8** %8, align 8
  %573 = call i32 @strncmp(i8* %572, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 13)
  %574 = icmp ne i32 %573, 0
  br i1 %574, label %599, label %575

575:                                              ; preds = %571
  %576 = load i8*, i8** %8, align 8
  %577 = getelementptr inbounds i8, i8* %576, i64 13
  %578 = load i8, i8* %577, align 1
  %579 = sext i8 %578 to i32
  %580 = icmp eq i32 %579, 108
  br i1 %580, label %581, label %582

581:                                              ; preds = %575
  br label %590

582:                                              ; preds = %575
  %583 = load i8*, i8** %8, align 8
  %584 = getelementptr inbounds i8, i8* %583, i64 13
  %585 = load i8, i8* %584, align 1
  %586 = sext i8 %585 to i32
  %587 = icmp eq i32 %586, 114
  %588 = zext i1 %587 to i64
  %589 = select i1 %587, i32 2, i32 3
  br label %590

590:                                              ; preds = %582, %581
  %591 = phi i32 [ 1, %581 ], [ %589, %582 ]
  %592 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %593 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %592, i32 0, i32 2
  %594 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %593, i32 0, i32 3
  store i32 %591, i32* %594, align 4
  %595 = load i32, i32* @FLAG_COMMIT, align 4
  %596 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %597 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %596, i32 0, i32 1
  %598 = call i32 @set_bit(i32 %595, i32* %597)
  br label %735

599:                                              ; preds = %571
  %600 = load i8*, i8** %8, align 8
  %601 = call i32 @strncmp(i8* %600, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 15)
  %602 = icmp ne i32 %601, 0
  br i1 %602, label %634, label %603

603:                                              ; preds = %599
  store i32 0, i32* %28, align 4
  %604 = load i8*, i8** %8, align 8
  %605 = getelementptr inbounds i8, i8* %604, i64 15
  store i8* %605, i8** %8, align 8
  %606 = load i8*, i8** %8, align 8
  %607 = call i32 @get_dec_u16(i8* %606, i32* %28, i32 4)
  store i32 %607, i32* %27, align 4
  %608 = load i32, i32* %27, align 4
  %609 = icmp slt i32 %608, 256
  br i1 %609, label %610, label %611

610:                                              ; preds = %603
  br label %621

611:                                              ; preds = %603
  %612 = load i32, i32* %27, align 4
  %613 = load i32, i32* @AIRO_DEF_MTU, align 4
  %614 = icmp sgt i32 %612, %613
  br i1 %614, label %615, label %617

615:                                              ; preds = %611
  %616 = load i32, i32* @AIRO_DEF_MTU, align 4
  br label %619

617:                                              ; preds = %611
  %618 = load i32, i32* %27, align 4
  br label %619

619:                                              ; preds = %617, %615
  %620 = phi i32 [ %616, %615 ], [ %618, %617 ]
  br label %621

621:                                              ; preds = %619, %610
  %622 = phi i32 [ 256, %610 ], [ %620, %619 ]
  store i32 %622, i32* %27, align 4
  %623 = load i32, i32* %27, align 4
  %624 = and i32 %623, 65534
  store i32 %624, i32* %27, align 4
  %625 = load i32, i32* %27, align 4
  %626 = call i8* @cpu_to_le16(i32 %625)
  %627 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %628 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %627, i32 0, i32 2
  %629 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %628, i32 0, i32 6
  store i8* %626, i8** %629, align 8
  %630 = load i32, i32* @FLAG_COMMIT, align 4
  %631 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %632 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %631, i32 0, i32 1
  %633 = call i32 @set_bit(i32 %630, i32* %632)
  br label %734

634:                                              ; preds = %599
  %635 = load i8*, i8** %8, align 8
  %636 = call i32 @strncmp(i8* %635, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i32 12)
  %637 = icmp ne i32 %636, 0
  br i1 %637, label %679, label %638

638:                                              ; preds = %634
  %639 = load i8*, i8** %8, align 8
  %640 = getelementptr inbounds i8, i8* %639, i64 12
  store i8* %640, i8** %8, align 8
  %641 = load i8*, i8** %8, align 8
  %642 = load i8, i8* %641, align 1
  %643 = sext i8 %642 to i32
  switch i32 %643, label %671 [
    i32 100, label %644
    i32 99, label %653
    i32 109, label %662
  ]

644:                                              ; preds = %638
  %645 = load i32, i32* @MOD_DEFAULT, align 4
  %646 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %647 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %646, i32 0, i32 2
  %648 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %647, i32 0, i32 5
  store i32 %645, i32* %648, align 4
  %649 = load i32, i32* @FLAG_COMMIT, align 4
  %650 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %651 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %650, i32 0, i32 1
  %652 = call i32 @set_bit(i32 %649, i32* %651)
  br label %678

653:                                              ; preds = %638
  %654 = load i32, i32* @MOD_CCK, align 4
  %655 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %656 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %655, i32 0, i32 2
  %657 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %656, i32 0, i32 5
  store i32 %654, i32* %657, align 4
  %658 = load i32, i32* @FLAG_COMMIT, align 4
  %659 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %660 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %659, i32 0, i32 1
  %661 = call i32 @set_bit(i32 %658, i32* %660)
  br label %678

662:                                              ; preds = %638
  %663 = load i32, i32* @MOD_MOK, align 4
  %664 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %665 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %664, i32 0, i32 2
  %666 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %665, i32 0, i32 5
  store i32 %663, i32* %666, align 4
  %667 = load i32, i32* @FLAG_COMMIT, align 4
  %668 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %669 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %668, i32 0, i32 1
  %670 = call i32 @set_bit(i32 %667, i32* %669)
  br label %678

671:                                              ; preds = %638
  %672 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %673 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %672, i32 0, i32 0
  %674 = load %struct.TYPE_4__*, %struct.TYPE_4__** %673, align 8
  %675 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %674, i32 0, i32 0
  %676 = load i32, i32* %675, align 4
  %677 = call i32 (i32, i8*, ...) @airo_print_warn(i32 %676, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0))
  br label %678

678:                                              ; preds = %671, %662, %653, %644
  br label %733

679:                                              ; preds = %634
  %680 = load i8*, i8** %8, align 8
  %681 = call i32 @strncmp(i8* %680, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i32 10)
  %682 = icmp ne i32 %681, 0
  br i1 %682, label %724, label %683

683:                                              ; preds = %679
  %684 = load i8*, i8** %8, align 8
  %685 = getelementptr inbounds i8, i8* %684, i64 10
  store i8* %685, i8** %8, align 8
  %686 = load i8*, i8** %8, align 8
  %687 = load i8, i8* %686, align 1
  %688 = sext i8 %687 to i32
  switch i32 %688, label %716 [
    i32 97, label %689
    i32 108, label %698
    i32 115, label %707
  ]

689:                                              ; preds = %683
  %690 = load i32, i32* @PREAMBLE_AUTO, align 4
  %691 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %692 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %691, i32 0, i32 2
  %693 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %692, i32 0, i32 4
  store i32 %690, i32* %693, align 8
  %694 = load i32, i32* @FLAG_COMMIT, align 4
  %695 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %696 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %695, i32 0, i32 1
  %697 = call i32 @set_bit(i32 %694, i32* %696)
  br label %723

698:                                              ; preds = %683
  %699 = load i32, i32* @PREAMBLE_LONG, align 4
  %700 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %701 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %700, i32 0, i32 2
  %702 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %701, i32 0, i32 4
  store i32 %699, i32* %702, align 8
  %703 = load i32, i32* @FLAG_COMMIT, align 4
  %704 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %705 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %704, i32 0, i32 1
  %706 = call i32 @set_bit(i32 %703, i32* %705)
  br label %723

707:                                              ; preds = %683
  %708 = load i32, i32* @PREAMBLE_SHORT, align 4
  %709 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %710 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %709, i32 0, i32 2
  %711 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %710, i32 0, i32 4
  store i32 %708, i32* %711, align 8
  %712 = load i32, i32* @FLAG_COMMIT, align 4
  %713 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %714 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %713, i32 0, i32 1
  %715 = call i32 @set_bit(i32 %712, i32* %714)
  br label %723

716:                                              ; preds = %683
  %717 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %718 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %717, i32 0, i32 0
  %719 = load %struct.TYPE_4__*, %struct.TYPE_4__** %718, align 8
  %720 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %719, i32 0, i32 0
  %721 = load i32, i32* %720, align 4
  %722 = call i32 (i32, i8*, ...) @airo_print_warn(i32 %721, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0))
  br label %723

723:                                              ; preds = %716, %707, %698, %689
  br label %732

724:                                              ; preds = %679
  %725 = load %struct.airo_info*, %struct.airo_info** %7, align 8
  %726 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %725, i32 0, i32 0
  %727 = load %struct.TYPE_4__*, %struct.TYPE_4__** %726, align 8
  %728 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %727, i32 0, i32 0
  %729 = load i32, i32* %728, align 4
  %730 = load i8*, i8** %8, align 8
  %731 = call i32 (i32, i8*, ...) @airo_print_warn(i32 %729, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), i8* %730)
  br label %732

732:                                              ; preds = %724, %723
  br label %733

733:                                              ; preds = %732, %678
  br label %734

734:                                              ; preds = %733, %621
  br label %735

735:                                              ; preds = %734, %590
  br label %736

736:                                              ; preds = %735, %562
  br label %737

737:                                              ; preds = %736, %532
  br label %738

738:                                              ; preds = %737, %507
  br label %739

739:                                              ; preds = %738, %482
  br label %740

740:                                              ; preds = %739, %449
  br label %741

741:                                              ; preds = %740, %418
  br label %742

742:                                              ; preds = %741, %393
  br label %743

743:                                              ; preds = %742, %369
  br label %744

744:                                              ; preds = %743, %345
  br label %745

745:                                              ; preds = %744, %317
  br label %746

746:                                              ; preds = %745, %289
  br label %747

747:                                              ; preds = %746, %242
  br label %748

748:                                              ; preds = %747, %200
  br label %749

749:                                              ; preds = %748, %175
  br label %750

750:                                              ; preds = %764, %749
  %751 = load i8*, i8** %8, align 8
  %752 = getelementptr inbounds i8, i8* %751, i64 0
  %753 = load i8, i8* %752, align 1
  %754 = sext i8 %753 to i32
  %755 = icmp ne i32 %754, 0
  br i1 %755, label %756, label %762

756:                                              ; preds = %750
  %757 = load i8*, i8** %8, align 8
  %758 = getelementptr inbounds i8, i8* %757, i64 0
  %759 = load i8, i8* %758, align 1
  %760 = sext i8 %759 to i32
  %761 = icmp ne i32 %760, 10
  br label %762

762:                                              ; preds = %756, %750
  %763 = phi i1 [ false, %750 ], [ %761, %756 ]
  br i1 %763, label %764, label %767

764:                                              ; preds = %762
  %765 = load i8*, i8** %8, align 8
  %766 = getelementptr inbounds i8, i8* %765, i32 1
  store i8* %766, i8** %8, align 8
  br label %750

767:                                              ; preds = %762
  %768 = load i8*, i8** %8, align 8
  %769 = getelementptr inbounds i8, i8* %768, i64 0
  %770 = load i8, i8* %769, align 1
  %771 = icmp ne i8 %770, 0
  br i1 %771, label %772, label %775

772:                                              ; preds = %767
  %773 = load i8*, i8** %8, align 8
  %774 = getelementptr inbounds i8, i8* %773, i32 1
  store i8* %774, i8** %8, align 8
  br label %775

775:                                              ; preds = %772, %767
  br label %52

776:                                              ; preds = %52
  %777 = load %struct.net_device*, %struct.net_device** %6, align 8
  %778 = call i32 @airo_config_commit(%struct.net_device* %777, i32* null, i32* null, i32* null)
  br label %779

779:                                              ; preds = %776, %41
  ret void
}

declare dso_local %struct.net_device* @PDE_DATA(%struct.inode*) #1

declare dso_local i32 @readConfigRid(%struct.airo_info*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @sniffing_mode(%struct.airo_info*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @get_dec_u16(i8*, i32*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @set_auth_type(%struct.airo_info*, i32) #1

declare dso_local i32 @airo_print_warn(i32, i8*, ...) #1

declare dso_local i32 @airo_config_commit(%struct.net_device*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
