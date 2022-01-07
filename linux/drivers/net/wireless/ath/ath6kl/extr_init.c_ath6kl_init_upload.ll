; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_init.c_ath6kl_init_upload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_init.c_ath6kl_init_upload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@TARGET_TYPE_AR6003 = common dso_local global i64 0, align 8
@TARGET_TYPE_AR6004 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MBOX_BASE_ADDRESS = common dso_local global i32 0, align 4
@LOCAL_SCRATCH_ADDRESS = common dso_local global i32 0, align 4
@ATH6KL_OPTION_SLEEP_DISABLE = common dso_local global i32 0, align 4
@RTC_BASE_ADDRESS = common dso_local global i32 0, align 4
@SYSTEM_SLEEP_ADDRESS = common dso_local global i32 0, align 4
@SYSTEM_SLEEP_DISABLE = common dso_local global i32 0, align 4
@ATH6KL_DBG_TRC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"old options: %d, old sleep: %d\0A\00", align 1
@ATH6KL_ANALOG_PLL_REGISTER = common dso_local global i32 0, align 4
@CPU_CLOCK_STANDARD = common dso_local global i32 0, align 4
@CPU_CLOCK_ADDRESS = common dso_local global i32 0, align 4
@LPO_CAL_ADDRESS = common dso_local global i32 0, align 4
@LPO_CAL_ENABLE = common dso_local global i32 0, align 4
@ATH6KL_HW_SDIO_CRC_ERROR_WAR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"temporary war to avoid sdio crc error\0A\00", align 1
@GPIO_BASE_ADDRESS = common dso_local global i32 0, align 4
@GPIO_PIN9_ADDRESS = common dso_local global i32 0, align 4
@GPIO_PIN10_ADDRESS = common dso_local global i32 0, align 4
@GPIO_PIN11_ADDRESS = common dso_local global i32 0, align 4
@GPIO_PIN12_ADDRESS = common dso_local global i32 0, align 4
@GPIO_PIN13_ADDRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl*)* @ath6kl_init_upload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_init_upload(%struct.ath6kl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath6kl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ath6kl* %0, %struct.ath6kl** %3, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %10 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @TARGET_TYPE_AR6003, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %16 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @TARGET_TYPE_AR6004, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %252

23:                                               ; preds = %14, %1
  %24 = load i32, i32* @MBOX_BASE_ADDRESS, align 4
  %25 = load i32, i32* @LOCAL_SCRATCH_ADDRESS, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %7, align 4
  %27 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @ath6kl_bmi_reg_read(%struct.ath6kl* %27, i32 %28, i32* %4)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %2, align 4
  br label %252

34:                                               ; preds = %23
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* @ATH6KL_OPTION_SLEEP_DISABLE, align 4
  %37 = load i32, i32* %4, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %4, align 4
  %39 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @ath6kl_bmi_reg_write(%struct.ath6kl* %39, i32 %40, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %34
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %2, align 4
  br label %252

47:                                               ; preds = %34
  %48 = load i32, i32* @RTC_BASE_ADDRESS, align 4
  %49 = load i32, i32* @SYSTEM_SLEEP_ADDRESS, align 4
  %50 = add nsw i32 %48, %49
  store i32 %50, i32* %7, align 4
  %51 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @ath6kl_bmi_reg_read(%struct.ath6kl* %51, i32 %52, i32* %4)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %2, align 4
  br label %252

58:                                               ; preds = %47
  %59 = load i32, i32* %4, align 4
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* @SYSTEM_SLEEP_DISABLE, align 4
  %61 = call i32 @SM(i32 %60, i32 1)
  %62 = load i32, i32* %4, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %4, align 4
  %64 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @ath6kl_bmi_reg_write(%struct.ath6kl* %64, i32 %65, i32 %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %58
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %2, align 4
  br label %252

72:                                               ; preds = %58
  %73 = load i32, i32* @ATH6KL_DBG_TRC, align 4
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @ath6kl_dbg(i32 %73, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %74, i32 %75)
  %77 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %78 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @TARGET_TYPE_AR6004, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %105

82:                                               ; preds = %72
  %83 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %84 = load i32, i32* @ATH6KL_ANALOG_PLL_REGISTER, align 4
  %85 = call i32 @ath6kl_bmi_reg_write(%struct.ath6kl* %83, i32 %84, i32 -116375551)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %2, align 4
  br label %252

90:                                               ; preds = %82
  %91 = load i32, i32* @CPU_CLOCK_STANDARD, align 4
  %92 = call i32 @SM(i32 %91, i32 1)
  store i32 %92, i32* %4, align 4
  %93 = load i32, i32* @RTC_BASE_ADDRESS, align 4
  %94 = load i32, i32* @CPU_CLOCK_ADDRESS, align 4
  %95 = add nsw i32 %93, %94
  store i32 %95, i32* %7, align 4
  %96 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %4, align 4
  %99 = call i32 @ath6kl_bmi_reg_write(%struct.ath6kl* %96, i32 %97, i32 %98)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %90
  %103 = load i32, i32* %8, align 4
  store i32 %103, i32* %2, align 4
  br label %252

104:                                              ; preds = %90
  br label %105

105:                                              ; preds = %104, %72
  store i32 0, i32* %4, align 4
  %106 = load i32, i32* @RTC_BASE_ADDRESS, align 4
  %107 = load i32, i32* @LPO_CAL_ADDRESS, align 4
  %108 = add nsw i32 %106, %107
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* @LPO_CAL_ENABLE, align 4
  %110 = call i32 @SM(i32 %109, i32 1)
  store i32 %110, i32* %4, align 4
  %111 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* %4, align 4
  %114 = call i32 @ath6kl_bmi_reg_write(%struct.ath6kl* %111, i32 %112, i32 %113)
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %105
  %118 = load i32, i32* %8, align 4
  store i32 %118, i32* %2, align 4
  br label %252

119:                                              ; preds = %105
  %120 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %121 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @ATH6KL_HW_SDIO_CRC_ERROR_WAR, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %189

127:                                              ; preds = %119
  %128 = call i32 @ath6kl_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  store i32 40, i32* %4, align 4
  %129 = load i32, i32* @GPIO_BASE_ADDRESS, align 4
  %130 = load i32, i32* @GPIO_PIN9_ADDRESS, align 4
  %131 = add nsw i32 %129, %130
  store i32 %131, i32* %7, align 4
  %132 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* %4, align 4
  %135 = call i32 @ath6kl_bmi_reg_write(%struct.ath6kl* %132, i32 %133, i32 %134)
  store i32 %135, i32* %8, align 4
  %136 = load i32, i32* %8, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %127
  %139 = load i32, i32* %8, align 4
  store i32 %139, i32* %2, align 4
  br label %252

140:                                              ; preds = %127
  store i32 32, i32* %4, align 4
  %141 = load i32, i32* @GPIO_BASE_ADDRESS, align 4
  %142 = load i32, i32* @GPIO_PIN10_ADDRESS, align 4
  %143 = add nsw i32 %141, %142
  store i32 %143, i32* %7, align 4
  %144 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* %4, align 4
  %147 = call i32 @ath6kl_bmi_reg_write(%struct.ath6kl* %144, i32 %145, i32 %146)
  store i32 %147, i32* %8, align 4
  %148 = load i32, i32* %8, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %140
  %151 = load i32, i32* %8, align 4
  store i32 %151, i32* %2, align 4
  br label %252

152:                                              ; preds = %140
  %153 = load i32, i32* @GPIO_BASE_ADDRESS, align 4
  %154 = load i32, i32* @GPIO_PIN11_ADDRESS, align 4
  %155 = add nsw i32 %153, %154
  store i32 %155, i32* %7, align 4
  %156 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* %4, align 4
  %159 = call i32 @ath6kl_bmi_reg_write(%struct.ath6kl* %156, i32 %157, i32 %158)
  store i32 %159, i32* %8, align 4
  %160 = load i32, i32* %8, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %152
  %163 = load i32, i32* %8, align 4
  store i32 %163, i32* %2, align 4
  br label %252

164:                                              ; preds = %152
  %165 = load i32, i32* @GPIO_BASE_ADDRESS, align 4
  %166 = load i32, i32* @GPIO_PIN12_ADDRESS, align 4
  %167 = add nsw i32 %165, %166
  store i32 %167, i32* %7, align 4
  %168 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %169 = load i32, i32* %7, align 4
  %170 = load i32, i32* %4, align 4
  %171 = call i32 @ath6kl_bmi_reg_write(%struct.ath6kl* %168, i32 %169, i32 %170)
  store i32 %171, i32* %8, align 4
  %172 = load i32, i32* %8, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %164
  %175 = load i32, i32* %8, align 4
  store i32 %175, i32* %2, align 4
  br label %252

176:                                              ; preds = %164
  %177 = load i32, i32* @GPIO_BASE_ADDRESS, align 4
  %178 = load i32, i32* @GPIO_PIN13_ADDRESS, align 4
  %179 = add nsw i32 %177, %178
  store i32 %179, i32* %7, align 4
  %180 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %181 = load i32, i32* %7, align 4
  %182 = load i32, i32* %4, align 4
  %183 = call i32 @ath6kl_bmi_reg_write(%struct.ath6kl* %180, i32 %181, i32 %182)
  store i32 %183, i32* %8, align 4
  %184 = load i32, i32* %8, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %176
  %187 = load i32, i32* %8, align 4
  store i32 %187, i32* %2, align 4
  br label %252

188:                                              ; preds = %176
  br label %189

189:                                              ; preds = %188, %119
  %190 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %191 = call i32 @ath6kl_upload_board_file(%struct.ath6kl* %190)
  store i32 %191, i32* %8, align 4
  %192 = load i32, i32* %8, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %189
  %195 = load i32, i32* %8, align 4
  store i32 %195, i32* %2, align 4
  br label %252

196:                                              ; preds = %189
  %197 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %198 = call i32 @ath6kl_upload_otp(%struct.ath6kl* %197)
  store i32 %198, i32* %8, align 4
  %199 = load i32, i32* %8, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %196
  %202 = load i32, i32* %8, align 4
  store i32 %202, i32* %2, align 4
  br label %252

203:                                              ; preds = %196
  %204 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %205 = call i32 @ath6kl_upload_firmware(%struct.ath6kl* %204)
  store i32 %205, i32* %8, align 4
  %206 = load i32, i32* %8, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %203
  %209 = load i32, i32* %8, align 4
  store i32 %209, i32* %2, align 4
  br label %252

210:                                              ; preds = %203
  %211 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %212 = call i32 @ath6kl_upload_patch(%struct.ath6kl* %211)
  store i32 %212, i32* %8, align 4
  %213 = load i32, i32* %8, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %210
  %216 = load i32, i32* %8, align 4
  store i32 %216, i32* %2, align 4
  br label %252

217:                                              ; preds = %210
  %218 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %219 = call i32 @ath6kl_upload_testscript(%struct.ath6kl* %218)
  store i32 %219, i32* %8, align 4
  %220 = load i32, i32* %8, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %224

222:                                              ; preds = %217
  %223 = load i32, i32* %8, align 4
  store i32 %223, i32* %2, align 4
  br label %252

224:                                              ; preds = %217
  %225 = load i32, i32* @RTC_BASE_ADDRESS, align 4
  %226 = load i32, i32* @SYSTEM_SLEEP_ADDRESS, align 4
  %227 = add nsw i32 %225, %226
  store i32 %227, i32* %7, align 4
  %228 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %229 = load i32, i32* %7, align 4
  %230 = load i32, i32* %6, align 4
  %231 = call i32 @ath6kl_bmi_reg_write(%struct.ath6kl* %228, i32 %229, i32 %230)
  store i32 %231, i32* %8, align 4
  %232 = load i32, i32* %8, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %224
  %235 = load i32, i32* %8, align 4
  store i32 %235, i32* %2, align 4
  br label %252

236:                                              ; preds = %224
  %237 = load i32, i32* @MBOX_BASE_ADDRESS, align 4
  %238 = load i32, i32* @LOCAL_SCRATCH_ADDRESS, align 4
  %239 = add nsw i32 %237, %238
  store i32 %239, i32* %7, align 4
  %240 = load i32, i32* %5, align 4
  %241 = or i32 %240, 32
  store i32 %241, i32* %4, align 4
  %242 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %243 = load i32, i32* %7, align 4
  %244 = load i32, i32* %4, align 4
  %245 = call i32 @ath6kl_bmi_reg_write(%struct.ath6kl* %242, i32 %243, i32 %244)
  store i32 %245, i32* %8, align 4
  %246 = load i32, i32* %8, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %250

248:                                              ; preds = %236
  %249 = load i32, i32* %8, align 4
  store i32 %249, i32* %2, align 4
  br label %252

250:                                              ; preds = %236
  %251 = load i32, i32* %8, align 4
  store i32 %251, i32* %2, align 4
  br label %252

252:                                              ; preds = %250, %248, %234, %222, %215, %208, %201, %194, %186, %174, %162, %150, %138, %117, %102, %88, %70, %56, %45, %32, %20
  %253 = load i32, i32* %2, align 4
  ret i32 %253
}

declare dso_local i32 @ath6kl_bmi_reg_read(%struct.ath6kl*, i32, i32*) #1

declare dso_local i32 @ath6kl_bmi_reg_write(%struct.ath6kl*, i32, i32) #1

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @ath6kl_err(i8*) #1

declare dso_local i32 @ath6kl_upload_board_file(%struct.ath6kl*) #1

declare dso_local i32 @ath6kl_upload_otp(%struct.ath6kl*) #1

declare dso_local i32 @ath6kl_upload_firmware(%struct.ath6kl*) #1

declare dso_local i32 @ath6kl_upload_patch(%struct.ath6kl*) #1

declare dso_local i32 @ath6kl_upload_testscript(%struct.ath6kl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
