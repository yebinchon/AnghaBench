; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_init.c_ath6kl_configure_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_init.c_ath6kl_configure_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { i32, i32, i32, i64, %struct.TYPE_4__, %struct.TYPE_3__, i64, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i64 }

@ATH6KL_CONF_UART_DEBUG = common dso_local global i32 0, align 4
@hi_serial_enable = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"bmi_write_memory for uart debug failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@HI_OPTION_FW_MODE_BSS_STA = common dso_local global i32 0, align 4
@HI_OPTION_FW_MODE_BITS = common dso_local global i32 0, align 4
@ATH6KL_FW_CAPABILITY_STA_P2PDEV_DUPLEX = common dso_local global i32 0, align 4
@HI_OPTION_FW_SUBMODE_P2PDEV = common dso_local global i32 0, align 4
@HI_OPTION_FW_SUBMODE_BITS = common dso_local global i32 0, align 4
@HI_OPTION_FW_SUBMODE_NONE = common dso_local global i32 0, align 4
@hi_app_host_interest = common dso_local global i32 0, align 4
@HTC_PROTOCOL_VERSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"bmi_write_memory for htc version failed\0A\00", align 1
@hi_option_flag = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"bmi_read_memory for setting fwmode failed\0A\00", align 1
@HI_OPTION_NUM_DEV_SHIFT = common dso_local global i32 0, align 4
@HI_OPTION_FW_MODE_SHIFT = common dso_local global i32 0, align 4
@HI_OPTION_FW_SUBMODE_SHIFT = common dso_local global i32 0, align 4
@HI_OPTION_MAC_ADDR_METHOD_SHIFT = common dso_local global i32 0, align 4
@HI_OPTION_FW_BRIDGE_SHIFT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"bmi_write_memory for setting fwmode failed\0A\00", align 1
@ATH6KL_DBG_TRC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"firmware mode set\0A\00", align 1
@TARGET_TYPE_AR6003 = common dso_local global i64 0, align 8
@AR6004_HW_1_3_VERSION = common dso_local global i64 0, align 8
@AR6004_HW_3_0_VERSION = common dso_local global i64 0, align 8
@hi_board_ext_data = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [47 x i8] c"bmi_write_memory for hi_board_ext_data failed\0A\00", align 1
@hi_end_ram_reserve_sz = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [51 x i8] c"bmi_write_memory for hi_end_ram_reserve_sz failed\0A\00", align 1
@MBOX_YIELD_LIMIT = common dso_local global i32 0, align 4
@hi_dbg_uart_txpin = common dso_local global i32 0, align 4
@hi_desired_baud_rate = common dso_local global i32 0, align 4
@hi_refclk_hz = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath6kl_configure_target(%struct.ath6kl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath6kl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ath6kl* %0, %struct.ath6kl** %3, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %12 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @ATH6KL_CONF_UART_DEBUG, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %4, align 4
  %20 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %21 = load i32, i32* @hi_serial_enable, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i64 @ath6kl_bmi_write_hi32(%struct.ath6kl* %20, i32 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = call i32 @ath6kl_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %294

29:                                               ; preds = %1
  %30 = load i32, i32* @HI_OPTION_FW_MODE_BSS_STA, align 4
  store i32 %30, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %45, %29
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %34 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %31
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @HI_OPTION_FW_MODE_BITS, align 4
  %41 = mul nsw i32 %39, %40
  %42 = shl i32 %38, %41
  %43 = load i32, i32* %7, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %37
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %9, align 4
  br label %31

48:                                               ; preds = %31
  %49 = load i32, i32* @ATH6KL_FW_CAPABILITY_STA_P2PDEV_DUPLEX, align 4
  %50 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %51 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %50, i32 0, i32 7
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @test_bit(i32 %49, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %74

55:                                               ; preds = %48
  store i32 0, i32* %9, align 4
  br label %56

56:                                               ; preds = %70, %55
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %59 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %56
  %63 = load i32, i32* @HI_OPTION_FW_SUBMODE_P2PDEV, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @HI_OPTION_FW_SUBMODE_BITS, align 4
  %66 = mul nsw i32 %64, %65
  %67 = shl i32 %63, %66
  %68 = load i32, i32* %8, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %62
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %56

73:                                               ; preds = %56
  br label %126

74:                                               ; preds = %48
  store i32 0, i32* %9, align 4
  br label %75

75:                                               ; preds = %89, %74
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %78 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %75
  %82 = load i32, i32* @HI_OPTION_FW_SUBMODE_NONE, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @HI_OPTION_FW_SUBMODE_BITS, align 4
  %85 = mul nsw i32 %83, %84
  %86 = shl i32 %82, %85
  %87 = load i32, i32* %8, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %8, align 4
  br label %89

89:                                               ; preds = %81
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  br label %75

92:                                               ; preds = %75
  %93 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %94 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  store i32 %95, i32* %9, align 4
  br label %96

96:                                               ; preds = %110, %92
  %97 = load i32, i32* %9, align 4
  %98 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %99 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp slt i32 %97, %100
  br i1 %101, label %102, label %113

102:                                              ; preds = %96
  %103 = load i32, i32* @HI_OPTION_FW_SUBMODE_P2PDEV, align 4
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* @HI_OPTION_FW_SUBMODE_BITS, align 4
  %106 = mul nsw i32 %104, %105
  %107 = shl i32 %103, %106
  %108 = load i32, i32* %8, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %8, align 4
  br label %110

110:                                              ; preds = %102
  %111 = load i32, i32* %9, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %9, align 4
  br label %96

113:                                              ; preds = %96
  %114 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %115 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %114, i32 0, i32 6
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %113
  %119 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %120 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %121, 1
  br i1 %122, label %123, label %125

123:                                              ; preds = %118
  %124 = load i32, i32* @HI_OPTION_FW_SUBMODE_P2PDEV, align 4
  store i32 %124, i32* %8, align 4
  br label %125

125:                                              ; preds = %123, %118, %113
  br label %126

126:                                              ; preds = %125, %73
  %127 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %128 = load i32, i32* @hi_app_host_interest, align 4
  %129 = load i32, i32* @HTC_PROTOCOL_VERSION, align 4
  %130 = call i64 @ath6kl_bmi_write_hi32(%struct.ath6kl* %127, i32 %128, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %126
  %133 = call i32 @ath6kl_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %134 = load i32, i32* @EIO, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %2, align 4
  br label %294

136:                                              ; preds = %126
  store i32 0, i32* %4, align 4
  %137 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %138 = load i32, i32* @hi_option_flag, align 4
  %139 = call i64 @ath6kl_bmi_read_hi32(%struct.ath6kl* %137, i32 %138, i32* %4)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %136
  %142 = call i32 @ath6kl_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %143 = load i32, i32* @EIO, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %2, align 4
  br label %294

145:                                              ; preds = %136
  %146 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %147 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @HI_OPTION_NUM_DEV_SHIFT, align 4
  %150 = shl i32 %148, %149
  %151 = load i32, i32* %4, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %4, align 4
  %153 = load i32, i32* %7, align 4
  %154 = load i32, i32* @HI_OPTION_FW_MODE_SHIFT, align 4
  %155 = shl i32 %153, %154
  %156 = load i32, i32* %4, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %4, align 4
  %158 = load i32, i32* %8, align 4
  %159 = load i32, i32* @HI_OPTION_FW_SUBMODE_SHIFT, align 4
  %160 = shl i32 %158, %159
  %161 = load i32, i32* %4, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %4, align 4
  %163 = load i32, i32* @HI_OPTION_MAC_ADDR_METHOD_SHIFT, align 4
  %164 = shl i32 0, %163
  %165 = load i32, i32* %4, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %4, align 4
  %167 = load i32, i32* @HI_OPTION_FW_BRIDGE_SHIFT, align 4
  %168 = shl i32 0, %167
  %169 = load i32, i32* %4, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %4, align 4
  %171 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %172 = load i32, i32* @hi_option_flag, align 4
  %173 = load i32, i32* %4, align 4
  %174 = call i64 @ath6kl_bmi_write_hi32(%struct.ath6kl* %171, i32 %172, i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %145
  %177 = call i32 @ath6kl_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %178 = load i32, i32* @EIO, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %2, align 4
  br label %294

180:                                              ; preds = %145
  %181 = load i32, i32* @ATH6KL_DBG_TRC, align 4
  %182 = call i32 @ath6kl_dbg(i32 %181, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %183 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %184 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %183, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @TARGET_TYPE_AR6003, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %202, label %188

188:                                              ; preds = %180
  %189 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %190 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %189, i32 0, i32 5
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @AR6004_HW_1_3_VERSION, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %202, label %195

195:                                              ; preds = %188
  %196 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %197 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %196, i32 0, i32 5
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @AR6004_HW_3_0_VERSION, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %231

202:                                              ; preds = %195, %188, %180
  %203 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %204 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %203, i32 0, i32 4
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  store i32 %206, i32* %4, align 4
  %207 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %208 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %207, i32 0, i32 4
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  store i32 %210, i32* %5, align 4
  %211 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %212 = load i32, i32* @hi_board_ext_data, align 4
  %213 = load i32, i32* %4, align 4
  %214 = call i64 @ath6kl_bmi_write_hi32(%struct.ath6kl* %211, i32 %212, i32 %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %202
  %217 = call i32 @ath6kl_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0))
  %218 = load i32, i32* @EIO, align 4
  %219 = sub nsw i32 0, %218
  store i32 %219, i32* %2, align 4
  br label %294

220:                                              ; preds = %202
  %221 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %222 = load i32, i32* @hi_end_ram_reserve_sz, align 4
  %223 = load i32, i32* %5, align 4
  %224 = call i64 @ath6kl_bmi_write_hi32(%struct.ath6kl* %221, i32 %222, i32 %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %230

226:                                              ; preds = %220
  %227 = call i32 @ath6kl_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0))
  %228 = load i32, i32* @EIO, align 4
  %229 = sub nsw i32 0, %228
  store i32 %229, i32* %2, align 4
  br label %294

230:                                              ; preds = %220
  br label %231

231:                                              ; preds = %230, %195
  %232 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %233 = load i32, i32* @MBOX_YIELD_LIMIT, align 4
  %234 = call i64 @ath6kl_set_htc_params(%struct.ath6kl* %232, i32 %233, i32 0)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %231
  %237 = load i32, i32* @EIO, align 4
  %238 = sub nsw i32 0, %237
  store i32 %238, i32* %2, align 4
  br label %294

239:                                              ; preds = %231
  %240 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %241 = load i32, i32* @hi_dbg_uart_txpin, align 4
  %242 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %243 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %242, i32 0, i32 4
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 8
  %246 = call i64 @ath6kl_bmi_write_hi32(%struct.ath6kl* %240, i32 %241, i32 %245)
  %247 = trunc i64 %246 to i32
  store i32 %247, i32* %10, align 4
  %248 = load i32, i32* %10, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %252

250:                                              ; preds = %239
  %251 = load i32, i32* %10, align 4
  store i32 %251, i32* %2, align 4
  br label %294

252:                                              ; preds = %239
  %253 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %254 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* @ATH6KL_CONF_UART_DEBUG, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %273

259:                                              ; preds = %252
  %260 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %261 = load i32, i32* @hi_desired_baud_rate, align 4
  %262 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %263 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %262, i32 0, i32 4
  %264 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %263, i32 0, i32 3
  %265 = load i32, i32* %264, align 4
  %266 = call i64 @ath6kl_bmi_write_hi32(%struct.ath6kl* %260, i32 %261, i32 %265)
  %267 = trunc i64 %266 to i32
  store i32 %267, i32* %10, align 4
  %268 = load i32, i32* %10, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %272

270:                                              ; preds = %259
  %271 = load i32, i32* %10, align 4
  store i32 %271, i32* %2, align 4
  br label %294

272:                                              ; preds = %259
  br label %273

273:                                              ; preds = %272, %252
  %274 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %275 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %274, i32 0, i32 4
  %276 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %275, i32 0, i32 4
  %277 = load i32, i32* %276, align 8
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %293

279:                                              ; preds = %273
  %280 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %281 = load i32, i32* @hi_refclk_hz, align 4
  %282 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %283 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %282, i32 0, i32 4
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i32 0, i32 4
  %285 = load i32, i32* %284, align 8
  %286 = call i64 @ath6kl_bmi_write_hi32(%struct.ath6kl* %280, i32 %281, i32 %285)
  %287 = trunc i64 %286 to i32
  store i32 %287, i32* %10, align 4
  %288 = load i32, i32* %10, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %292

290:                                              ; preds = %279
  %291 = load i32, i32* %10, align 4
  store i32 %291, i32* %2, align 4
  br label %294

292:                                              ; preds = %279
  br label %293

293:                                              ; preds = %292, %273
  store i32 0, i32* %2, align 4
  br label %294

294:                                              ; preds = %293, %290, %270, %250, %236, %226, %216, %176, %141, %132, %25
  %295 = load i32, i32* %2, align 4
  ret i32 %295
}

declare dso_local i64 @ath6kl_bmi_write_hi32(%struct.ath6kl*, i32, i32) #1

declare dso_local i32 @ath6kl_err(i8*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i64 @ath6kl_bmi_read_hi32(%struct.ath6kl*, i32, i32*) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*) #1

declare dso_local i64 @ath6kl_set_htc_params(%struct.ath6kl*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
