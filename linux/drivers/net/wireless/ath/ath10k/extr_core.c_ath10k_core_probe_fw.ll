; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_core.c_ath10k_core_probe_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_core.c_ath10k_core_probe_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32, %struct.TYPE_10__, i32, i32, %struct.TYPE_8__*, %struct.TYPE_6__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.bmi_target_info = type { i32 }

@ATH10K_FIRMWARE_MODE_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"could not power on hif bus (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"could not get target info (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"incorrect hif bus type: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"could not get hw params (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"could not fetch firmware files (%d)\0A\00", align 1
@ATH10K_FW_FEATURE_NON_BMI = common dso_local global i32 0, align 4
@ATH10K_DBG_BOOT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"could not load pre cal data: %d\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"failed to get board id from otp: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"SMBIOS bdf variant name not set.\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"DT bdf variant name not set.\0A\00", align 1
@ATH10K_BD_IE_BOARD = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [32 x i8] c"failed to fetch board file: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"fatal problem with firmware features: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"failed to initialize code swap segment: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"could not init core (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*)* @ath10k_core_probe_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_core_probe_fw(%struct.ath10k* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.bmi_target_info, align 4
  %5 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %7 = load i32, i32* @ATH10K_FIRMWARE_MODE_NORMAL, align 4
  %8 = call i32 @ath10k_hif_power_up(%struct.ath10k* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @ath10k_err(%struct.ath10k* %12, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %269

16:                                               ; preds = %1
  %17 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %18 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %17, i32 0, i32 5
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %90 [
    i32 130, label %21
    i32 131, label %44
    i32 132, label %44
    i32 128, label %44
    i32 129, label %67
  ]

21:                                               ; preds = %16
  %22 = call i32 @memset(%struct.bmi_target_info* %4, i32 0, i32 4)
  %23 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %24 = call i32 @ath10k_bmi_get_target_info_sdio(%struct.ath10k* %23, %struct.bmi_target_info* %4)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @ath10k_err(%struct.ath10k* %28, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  br label %265

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.bmi_target_info, %struct.bmi_target_info* %4, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %35 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %34, i32 0, i32 6
  store i32 %33, i32* %35, align 4
  %36 = getelementptr inbounds %struct.bmi_target_info, %struct.bmi_target_info* %4, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %39 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %38, i32 0, i32 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  store i32 %37, i32* %43, align 4
  br label %97

44:                                               ; preds = %16, %16, %16
  %45 = call i32 @memset(%struct.bmi_target_info* %4, i32 0, i32 4)
  %46 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %47 = call i32 @ath10k_bmi_get_target_info(%struct.ath10k* %46, %struct.bmi_target_info* %4)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @ath10k_err(%struct.ath10k* %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  br label %265

54:                                               ; preds = %44
  %55 = getelementptr inbounds %struct.bmi_target_info, %struct.bmi_target_info* %4, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %58 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %57, i32 0, i32 6
  store i32 %56, i32* %58, align 4
  %59 = getelementptr inbounds %struct.bmi_target_info, %struct.bmi_target_info* %4, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %62 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %61, i32 0, i32 4
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  store i32 %60, i32* %66, align 4
  br label %97

67:                                               ; preds = %16
  %68 = call i32 @memset(%struct.bmi_target_info* %4, i32 0, i32 4)
  %69 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %70 = call i32 @ath10k_hif_get_target_info(%struct.ath10k* %69, %struct.bmi_target_info* %4)
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @ath10k_err(%struct.ath10k* %74, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  br label %265

77:                                               ; preds = %67
  %78 = getelementptr inbounds %struct.bmi_target_info, %struct.bmi_target_info* %4, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %81 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %80, i32 0, i32 6
  store i32 %79, i32* %81, align 4
  %82 = getelementptr inbounds %struct.bmi_target_info, %struct.bmi_target_info* %4, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %85 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %84, i32 0, i32 4
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  store i32 %83, i32* %89, align 4
  br label %97

90:                                               ; preds = %16
  %91 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %92 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %93 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %92, i32 0, i32 5
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @ath10k_err(%struct.ath10k* %91, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %90, %77, %54, %31
  %98 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %99 = call i32 @ath10k_init_hw_params(%struct.ath10k* %98)
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* %5, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @ath10k_err(%struct.ath10k* %103, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %104)
  br label %265

106:                                              ; preds = %97
  %107 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %108 = call i32 @ath10k_core_fetch_firmware_files(%struct.ath10k* %107)
  store i32 %108, i32* %5, align 4
  %109 = load i32, i32* %5, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %113 = load i32, i32* %5, align 4
  %114 = call i32 @ath10k_err(%struct.ath10k* %112, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %113)
  br label %265

115:                                              ; preds = %106
  %116 = call i32 @BUILD_BUG_ON(i32 0)
  %117 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %118 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %117, i32 0, i32 4
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %125 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @memcpy(i32 %123, i32 %128, i32 4)
  %130 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %131 = call i32 @ath10k_debug_print_hwfw_info(%struct.ath10k* %130)
  %132 = load i32, i32* @ATH10K_FW_FEATURE_NON_BMI, align 4
  %133 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %134 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @test_bit(i32 %132, i32 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %195, label %140

140:                                              ; preds = %115
  %141 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %142 = call i32 @ath10k_core_pre_cal_download(%struct.ath10k* %141)
  store i32 %142, i32* %5, align 4
  %143 = load i32, i32* %5, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %140
  %146 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %147 = load i32, i32* @ATH10K_DBG_BOOT, align 4
  %148 = load i32, i32* %5, align 4
  %149 = call i32 (%struct.ath10k*, i32, i8*, ...) @ath10k_dbg(%struct.ath10k* %146, i32 %147, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %148)
  br label %150

150:                                              ; preds = %145, %140
  %151 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %152 = call i32 @ath10k_core_get_board_id_from_otp(%struct.ath10k* %151)
  store i32 %152, i32* %5, align 4
  %153 = load i32, i32* %5, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %164

155:                                              ; preds = %150
  %156 = load i32, i32* %5, align 4
  %157 = load i32, i32* @EOPNOTSUPP, align 4
  %158 = sub nsw i32 0, %157
  %159 = icmp ne i32 %156, %158
  br i1 %159, label %160, label %164

160:                                              ; preds = %155
  %161 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %162 = load i32, i32* %5, align 4
  %163 = call i32 @ath10k_err(%struct.ath10k* %161, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %162)
  br label %262

164:                                              ; preds = %155, %150
  %165 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %166 = call i32 @ath10k_core_check_smbios(%struct.ath10k* %165)
  store i32 %166, i32* %5, align 4
  %167 = load i32, i32* %5, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %164
  %170 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %171 = load i32, i32* @ATH10K_DBG_BOOT, align 4
  %172 = call i32 (%struct.ath10k*, i32, i8*, ...) @ath10k_dbg(%struct.ath10k* %170, i32 %171, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  br label %173

173:                                              ; preds = %169, %164
  %174 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %175 = call i32 @ath10k_core_check_dt(%struct.ath10k* %174)
  store i32 %175, i32* %5, align 4
  %176 = load i32, i32* %5, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %173
  %179 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %180 = load i32, i32* @ATH10K_DBG_BOOT, align 4
  %181 = call i32 (%struct.ath10k*, i32, i8*, ...) @ath10k_dbg(%struct.ath10k* %179, i32 %180, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  br label %182

182:                                              ; preds = %178, %173
  %183 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %184 = load i32, i32* @ATH10K_BD_IE_BOARD, align 4
  %185 = call i32 @ath10k_core_fetch_board_file(%struct.ath10k* %183, i32 %184)
  store i32 %185, i32* %5, align 4
  %186 = load i32, i32* %5, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %182
  %189 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %190 = load i32, i32* %5, align 4
  %191 = call i32 @ath10k_err(%struct.ath10k* %189, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i32 %190)
  br label %262

192:                                              ; preds = %182
  %193 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %194 = call i32 @ath10k_debug_print_board_info(%struct.ath10k* %193)
  br label %195

195:                                              ; preds = %192, %115
  %196 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %197 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %200 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @device_get_mac_address(i32 %198, i32 %201, i32 4)
  %203 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %204 = call i32 @ath10k_core_init_firmware_features(%struct.ath10k* %203)
  store i32 %204, i32* %5, align 4
  %205 = load i32, i32* %5, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %195
  %208 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %209 = load i32, i32* %5, align 4
  %210 = call i32 @ath10k_err(%struct.ath10k* %208, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0), i32 %209)
  br label %262

211:                                              ; preds = %195
  %212 = load i32, i32* @ATH10K_FW_FEATURE_NON_BMI, align 4
  %213 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %214 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @test_bit(i32 %212, i32 %217)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %233, label %220

220:                                              ; preds = %211
  %221 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %222 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %223 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 0
  %225 = call i32 @ath10k_swap_code_seg_init(%struct.ath10k* %221, %struct.TYPE_9__* %224)
  store i32 %225, i32* %5, align 4
  %226 = load i32, i32* %5, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %232

228:                                              ; preds = %220
  %229 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %230 = load i32, i32* %5, align 4
  %231 = call i32 @ath10k_err(%struct.ath10k* %229, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0), i32 %230)
  br label %262

232:                                              ; preds = %220
  br label %233

233:                                              ; preds = %232, %211
  %234 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %235 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %234, i32 0, i32 0
  %236 = call i32 @mutex_lock(i32* %235)
  %237 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %238 = load i32, i32* @ATH10K_FIRMWARE_MODE_NORMAL, align 4
  %239 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %240 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %239, i32 0, i32 1
  %241 = call i32 @ath10k_core_start(%struct.ath10k* %237, i32 %238, %struct.TYPE_10__* %240)
  store i32 %241, i32* %5, align 4
  %242 = load i32, i32* %5, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %248

244:                                              ; preds = %233
  %245 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %246 = load i32, i32* %5, align 4
  %247 = call i32 @ath10k_err(%struct.ath10k* %245, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 %246)
  br label %258

248:                                              ; preds = %233
  %249 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %250 = call i32 @ath10k_debug_print_boot_info(%struct.ath10k* %249)
  %251 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %252 = call i32 @ath10k_core_stop(%struct.ath10k* %251)
  %253 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %254 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %253, i32 0, i32 0
  %255 = call i32 @mutex_unlock(i32* %254)
  %256 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %257 = call i32 @ath10k_hif_power_down(%struct.ath10k* %256)
  store i32 0, i32* %2, align 4
  br label %269

258:                                              ; preds = %244
  %259 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %260 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %259, i32 0, i32 0
  %261 = call i32 @mutex_unlock(i32* %260)
  br label %262

262:                                              ; preds = %258, %228, %207, %188, %160
  %263 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %264 = call i32 @ath10k_core_free_firmware_files(%struct.ath10k* %263)
  br label %265

265:                                              ; preds = %262, %111, %102, %73, %50, %27
  %266 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %267 = call i32 @ath10k_hif_power_down(%struct.ath10k* %266)
  %268 = load i32, i32* %5, align 4
  store i32 %268, i32* %2, align 4
  br label %269

269:                                              ; preds = %265, %248, %11
  %270 = load i32, i32* %2, align 4
  ret i32 %270
}

declare dso_local i32 @ath10k_hif_power_up(%struct.ath10k*, i32) #1

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @memset(%struct.bmi_target_info*, i32, i32) #1

declare dso_local i32 @ath10k_bmi_get_target_info_sdio(%struct.ath10k*, %struct.bmi_target_info*) #1

declare dso_local i32 @ath10k_bmi_get_target_info(%struct.ath10k*, %struct.bmi_target_info*) #1

declare dso_local i32 @ath10k_hif_get_target_info(%struct.ath10k*, %struct.bmi_target_info*) #1

declare dso_local i32 @ath10k_init_hw_params(%struct.ath10k*) #1

declare dso_local i32 @ath10k_core_fetch_firmware_files(%struct.ath10k*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ath10k_debug_print_hwfw_info(%struct.ath10k*) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @ath10k_core_pre_cal_download(%struct.ath10k*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, ...) #1

declare dso_local i32 @ath10k_core_get_board_id_from_otp(%struct.ath10k*) #1

declare dso_local i32 @ath10k_core_check_smbios(%struct.ath10k*) #1

declare dso_local i32 @ath10k_core_check_dt(%struct.ath10k*) #1

declare dso_local i32 @ath10k_core_fetch_board_file(%struct.ath10k*, i32) #1

declare dso_local i32 @ath10k_debug_print_board_info(%struct.ath10k*) #1

declare dso_local i32 @device_get_mac_address(i32, i32, i32) #1

declare dso_local i32 @ath10k_core_init_firmware_features(%struct.ath10k*) #1

declare dso_local i32 @ath10k_swap_code_seg_init(%struct.ath10k*, %struct.TYPE_9__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ath10k_core_start(%struct.ath10k*, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @ath10k_debug_print_boot_info(%struct.ath10k*) #1

declare dso_local i32 @ath10k_core_stop(%struct.ath10k*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ath10k_hif_power_down(%struct.ath10k*) #1

declare dso_local i32 @ath10k_core_free_firmware_files(%struct.ath10k*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
