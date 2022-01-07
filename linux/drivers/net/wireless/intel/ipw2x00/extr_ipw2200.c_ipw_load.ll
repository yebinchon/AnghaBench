; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { i32, %struct.TYPE_6__*, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.firmware = type { i64 }
%struct.ipw_fw = type { i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"ipw2200-ibss.fw\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"ipw2200-bss.fw\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Unable to initialize Rx queue\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IPW_INTA_MASK_R = common dso_local global i32 0, align 4
@IPW_INTA_MASK_ALL = common dso_local global i32 0, align 4
@STATUS_INT_ENABLED = common dso_local global i32 0, align 4
@IPW_INTA_RW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Unable to reset NIC\0A\00", align 1
@IPW_NIC_SRAM_LOWER_BOUND = common dso_local global i64 0, align 8
@IPW_NIC_SRAM_UPPER_BOUND = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [34 x i8] c"Unable to load boot firmware: %d\0A\00", align 1
@IPW_INTA_BIT_FW_INITIALIZATION_DONE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"device failed to boot initial fw image\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"initial device response after %dms\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Unable to load ucode: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Unable to load firmware: %d\0A\00", align 1
@IPW_EEPROM_LOAD_DISABLE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [29 x i8] c"Unable to initialize queues\0A\00", align 1
@IPW_INTA_BIT_PARITY_ERROR = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [31 x i8] c"Parity error.  Retrying init.\0A\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"TODO: Handle parity error -- schedule restart?\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [37 x i8] c"device failed to start within 500ms\0A\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"device response after %dms\0A\00", align 1
@IPW_RX_READ_INDEX = common dso_local global i32 0, align 4
@fw_loaded = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw_priv*)* @ipw_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_load(%struct.ipw_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipw_priv*, align 8
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca %struct.ipw_fw*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ipw_priv* %0, %struct.ipw_priv** %3, align 8
  store %struct.firmware* null, %struct.firmware** %4, align 8
  store i8* null, i8** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 3, i32* %11, align 4
  %12 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %13 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %12, i32 0, i32 3
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %19 [
    i32 130, label %17
    i32 129, label %18
  ]

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %19

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %19

19:                                               ; preds = %1, %18, %17
  %20 = load i8*, i8** %9, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %10, align 4
  br label %255

25:                                               ; preds = %19
  %26 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = call i32 @ipw_get_fw(%struct.ipw_priv* %26, %struct.firmware** %4, i8* %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %255

32:                                               ; preds = %25
  %33 = load %struct.firmware*, %struct.firmware** %4, align 8
  %34 = getelementptr inbounds %struct.firmware, %struct.firmware* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i8*
  %37 = bitcast i8* %36 to %struct.ipw_fw*
  store %struct.ipw_fw* %37, %struct.ipw_fw** %5, align 8
  %38 = load %struct.ipw_fw*, %struct.ipw_fw** %5, align 8
  %39 = getelementptr inbounds %struct.ipw_fw, %struct.ipw_fw* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  store i8* %41, i8** %6, align 8
  %42 = load %struct.ipw_fw*, %struct.ipw_fw** %5, align 8
  %43 = getelementptr inbounds %struct.ipw_fw, %struct.ipw_fw* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.ipw_fw*, %struct.ipw_fw** %5, align 8
  %46 = getelementptr inbounds %struct.ipw_fw, %struct.ipw_fw* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @le32_to_cpu(i32 %47)
  %49 = getelementptr inbounds i8, i8* %44, i64 %48
  store i8* %49, i8** %7, align 8
  %50 = load %struct.ipw_fw*, %struct.ipw_fw** %5, align 8
  %51 = getelementptr inbounds %struct.ipw_fw, %struct.ipw_fw* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.ipw_fw*, %struct.ipw_fw** %5, align 8
  %54 = getelementptr inbounds %struct.ipw_fw, %struct.ipw_fw* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @le32_to_cpu(i32 %55)
  %57 = load %struct.ipw_fw*, %struct.ipw_fw** %5, align 8
  %58 = getelementptr inbounds %struct.ipw_fw, %struct.ipw_fw* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @le32_to_cpu(i32 %59)
  %61 = add i64 %56, %60
  %62 = getelementptr inbounds i8, i8* %52, i64 %61
  store i8* %62, i8** %8, align 8
  %63 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %64 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %63, i32 0, i32 1
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = icmp ne %struct.TYPE_6__* %65, null
  br i1 %66, label %72, label %67

67:                                               ; preds = %32
  %68 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %69 = call %struct.TYPE_6__* @ipw_rx_queue_alloc(%struct.ipw_priv* %68)
  %70 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %71 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %70, i32 0, i32 1
  store %struct.TYPE_6__* %69, %struct.TYPE_6__** %71, align 8
  br label %78

72:                                               ; preds = %32
  %73 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %74 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %75 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %74, i32 0, i32 1
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = call i32 @ipw_rx_queue_reset(%struct.ipw_priv* %73, %struct.TYPE_6__* %76)
  br label %78

78:                                               ; preds = %72, %67
  %79 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %80 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %79, i32 0, i32 1
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = icmp ne %struct.TYPE_6__* %81, null
  br i1 %82, label %87, label %83

83:                                               ; preds = %78
  %84 = call i32 (i8*, ...) @IPW_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %10, align 4
  br label %255

87:                                               ; preds = %78
  br label %88

88:                                               ; preds = %207, %87
  %89 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %90 = load i32, i32* @IPW_INTA_MASK_R, align 4
  %91 = load i32, i32* @IPW_INTA_MASK_ALL, align 4
  %92 = xor i32 %91, -1
  %93 = call i32 @ipw_write32(%struct.ipw_priv* %89, i32 %90, i32 %92)
  %94 = load i32, i32* @STATUS_INT_ENABLED, align 4
  %95 = xor i32 %94, -1
  %96 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %97 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = and i32 %98, %95
  store i32 %99, i32* %97, align 8
  %100 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %101 = load i32, i32* @IPW_INTA_RW, align 4
  %102 = load i32, i32* @IPW_INTA_MASK_ALL, align 4
  %103 = call i32 @ipw_write32(%struct.ipw_priv* %100, i32 %101, i32 %102)
  %104 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %105 = call i32 @ipw_stop_nic(%struct.ipw_priv* %104)
  %106 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %107 = call i32 @ipw_reset_nic(%struct.ipw_priv* %106)
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %88
  %111 = call i32 (i8*, ...) @IPW_ERROR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %255

112:                                              ; preds = %88
  %113 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %114 = load i64, i64* @IPW_NIC_SRAM_LOWER_BOUND, align 8
  %115 = load i64, i64* @IPW_NIC_SRAM_UPPER_BOUND, align 8
  %116 = load i64, i64* @IPW_NIC_SRAM_LOWER_BOUND, align 8
  %117 = sub nsw i64 %115, %116
  %118 = call i32 @ipw_zero_memory(%struct.ipw_priv* %113, i64 %114, i64 %117)
  %119 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %120 = load i8*, i8** %6, align 8
  %121 = load %struct.ipw_fw*, %struct.ipw_fw** %5, align 8
  %122 = getelementptr inbounds %struct.ipw_fw, %struct.ipw_fw* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = call i64 @le32_to_cpu(i32 %123)
  %125 = call i32 @ipw_load_firmware(%struct.ipw_priv* %119, i8* %120, i64 %124)
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* %10, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %112
  %129 = load i32, i32* %10, align 4
  %130 = call i32 (i8*, ...) @IPW_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %129)
  br label %255

131:                                              ; preds = %112
  %132 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %133 = call i32 @ipw_start_nic(%struct.ipw_priv* %132)
  %134 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %135 = load i32, i32* @IPW_INTA_RW, align 4
  %136 = load i32, i32* @IPW_INTA_BIT_FW_INITIALIZATION_DONE, align 4
  %137 = call i32 @ipw_poll_bit(%struct.ipw_priv* %134, i32 %135, i32 %136, i32 500)
  store i32 %137, i32* %10, align 4
  %138 = load i32, i32* %10, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %131
  %141 = call i32 (i8*, ...) @IPW_ERROR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  br label %255

142:                                              ; preds = %131
  %143 = load i32, i32* %10, align 4
  %144 = call i32 @IPW_DEBUG_INFO(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %143)
  %145 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %146 = load i32, i32* @IPW_INTA_RW, align 4
  %147 = load i32, i32* @IPW_INTA_BIT_FW_INITIALIZATION_DONE, align 4
  %148 = call i32 @ipw_write32(%struct.ipw_priv* %145, i32 %146, i32 %147)
  %149 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %150 = load i8*, i8** %7, align 8
  %151 = load %struct.ipw_fw*, %struct.ipw_fw** %5, align 8
  %152 = getelementptr inbounds %struct.ipw_fw, %struct.ipw_fw* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = call i64 @le32_to_cpu(i32 %153)
  %155 = call i32 @ipw_load_ucode(%struct.ipw_priv* %149, i8* %150, i64 %154)
  store i32 %155, i32* %10, align 4
  %156 = load i32, i32* %10, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %142
  %159 = load i32, i32* %10, align 4
  %160 = call i32 (i8*, ...) @IPW_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %159)
  br label %255

161:                                              ; preds = %142
  %162 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %163 = call i32 @ipw_stop_nic(%struct.ipw_priv* %162)
  %164 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %165 = load i8*, i8** %8, align 8
  %166 = load %struct.ipw_fw*, %struct.ipw_fw** %5, align 8
  %167 = getelementptr inbounds %struct.ipw_fw, %struct.ipw_fw* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = call i64 @le32_to_cpu(i32 %168)
  %170 = call i32 @ipw_load_firmware(%struct.ipw_priv* %164, i8* %165, i64 %169)
  store i32 %170, i32* %10, align 4
  %171 = load i32, i32* %10, align 4
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %161
  %174 = load i32, i32* %10, align 4
  %175 = call i32 (i8*, ...) @IPW_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %174)
  br label %255

176:                                              ; preds = %161
  %177 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %178 = load i32, i32* @IPW_EEPROM_LOAD_DISABLE, align 4
  %179 = call i32 @ipw_write32(%struct.ipw_priv* %177, i32 %178, i32 0)
  %180 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %181 = call i32 @ipw_queue_reset(%struct.ipw_priv* %180)
  store i32 %181, i32* %10, align 4
  %182 = load i32, i32* %10, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %176
  %185 = call i32 (i8*, ...) @IPW_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  br label %255

186:                                              ; preds = %176
  %187 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %188 = load i32, i32* @IPW_INTA_MASK_R, align 4
  %189 = load i32, i32* @IPW_INTA_MASK_ALL, align 4
  %190 = xor i32 %189, -1
  %191 = call i32 @ipw_write32(%struct.ipw_priv* %187, i32 %188, i32 %190)
  %192 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %193 = load i32, i32* @IPW_INTA_RW, align 4
  %194 = load i32, i32* @IPW_INTA_MASK_ALL, align 4
  %195 = call i32 @ipw_write32(%struct.ipw_priv* %192, i32 %193, i32 %194)
  %196 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %197 = call i32 @ipw_start_nic(%struct.ipw_priv* %196)
  %198 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %199 = load i32, i32* @IPW_INTA_RW, align 4
  %200 = call i32 @ipw_read32(%struct.ipw_priv* %198, i32 %199)
  %201 = load i32, i32* @IPW_INTA_BIT_PARITY_ERROR, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %215

204:                                              ; preds = %186
  %205 = load i32, i32* %11, align 4
  %206 = icmp sgt i32 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %204
  %208 = call i32 @IPW_WARNING(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  %209 = load i32, i32* %11, align 4
  %210 = add nsw i32 %209, -1
  store i32 %210, i32* %11, align 4
  br label %88

211:                                              ; preds = %204
  %212 = call i32 (i8*, ...) @IPW_ERROR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11, i64 0, i64 0))
  %213 = load i32, i32* @EIO, align 4
  %214 = sub nsw i32 0, %213
  store i32 %214, i32* %10, align 4
  br label %255

215:                                              ; preds = %186
  %216 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %217 = load i32, i32* @IPW_INTA_RW, align 4
  %218 = load i32, i32* @IPW_INTA_BIT_FW_INITIALIZATION_DONE, align 4
  %219 = call i32 @ipw_poll_bit(%struct.ipw_priv* %216, i32 %217, i32 %218, i32 500)
  store i32 %219, i32* %10, align 4
  %220 = load i32, i32* %10, align 4
  %221 = icmp slt i32 %220, 0
  br i1 %221, label %222, label %224

222:                                              ; preds = %215
  %223 = call i32 (i8*, ...) @IPW_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0))
  br label %255

224:                                              ; preds = %215
  %225 = load i32, i32* %10, align 4
  %226 = call i32 @IPW_DEBUG_INFO(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0), i32 %225)
  %227 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %228 = load i32, i32* @IPW_INTA_RW, align 4
  %229 = load i32, i32* @IPW_INTA_BIT_FW_INITIALIZATION_DONE, align 4
  %230 = call i32 @ipw_write32(%struct.ipw_priv* %227, i32 %228, i32 %229)
  %231 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %232 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %231, i32 0, i32 0
  store i32 1, i32* %232, align 8
  %233 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %234 = call i32 @ipw_read_eeprom(%struct.ipw_priv* %233)
  %235 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %236 = call i32 @ipw_eeprom_init_sram(%struct.ipw_priv* %235)
  %237 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %238 = call i32 @ipw_enable_interrupts(%struct.ipw_priv* %237)
  %239 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %240 = call i32 @ipw_rx_queue_replenish(%struct.ipw_priv* %239)
  %241 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %242 = load i32, i32* @IPW_RX_READ_INDEX, align 4
  %243 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %244 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %243, i32 0, i32 1
  %245 = load %struct.TYPE_6__*, %struct.TYPE_6__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @ipw_write32(%struct.ipw_priv* %241, i32 %242, i32 %247)
  %249 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %250 = load i32, i32* @IPW_INTA_RW, align 4
  %251 = load i32, i32* @IPW_INTA_MASK_ALL, align 4
  %252 = call i32 @ipw_write32(%struct.ipw_priv* %249, i32 %250, i32 %251)
  %253 = load %struct.firmware*, %struct.firmware** %4, align 8
  %254 = call i32 @release_firmware(%struct.firmware* %253)
  store i32 0, i32* %2, align 4
  br label %274

255:                                              ; preds = %222, %211, %184, %173, %158, %140, %128, %110, %83, %31, %22
  %256 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %257 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %256, i32 0, i32 1
  %258 = load %struct.TYPE_6__*, %struct.TYPE_6__** %257, align 8
  %259 = icmp ne %struct.TYPE_6__* %258, null
  br i1 %259, label %260, label %268

260:                                              ; preds = %255
  %261 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %262 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %263 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %262, i32 0, i32 1
  %264 = load %struct.TYPE_6__*, %struct.TYPE_6__** %263, align 8
  %265 = call i32 @ipw_rx_queue_free(%struct.ipw_priv* %261, %struct.TYPE_6__* %264)
  %266 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %267 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %266, i32 0, i32 1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %267, align 8
  br label %268

268:                                              ; preds = %260, %255
  %269 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %270 = call i32 @ipw_tx_queue_free(%struct.ipw_priv* %269)
  %271 = load %struct.firmware*, %struct.firmware** %4, align 8
  %272 = call i32 @release_firmware(%struct.firmware* %271)
  %273 = load i32, i32* %10, align 4
  store i32 %273, i32* %2, align 4
  br label %274

274:                                              ; preds = %268, %224
  %275 = load i32, i32* %2, align 4
  ret i32 %275
}

declare dso_local i32 @ipw_get_fw(%struct.ipw_priv*, %struct.firmware**, i8*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local %struct.TYPE_6__* @ipw_rx_queue_alloc(%struct.ipw_priv*) #1

declare dso_local i32 @ipw_rx_queue_reset(%struct.ipw_priv*, %struct.TYPE_6__*) #1

declare dso_local i32 @IPW_ERROR(i8*, ...) #1

declare dso_local i32 @ipw_write32(%struct.ipw_priv*, i32, i32) #1

declare dso_local i32 @ipw_stop_nic(%struct.ipw_priv*) #1

declare dso_local i32 @ipw_reset_nic(%struct.ipw_priv*) #1

declare dso_local i32 @ipw_zero_memory(%struct.ipw_priv*, i64, i64) #1

declare dso_local i32 @ipw_load_firmware(%struct.ipw_priv*, i8*, i64) #1

declare dso_local i32 @ipw_start_nic(%struct.ipw_priv*) #1

declare dso_local i32 @ipw_poll_bit(%struct.ipw_priv*, i32, i32, i32) #1

declare dso_local i32 @IPW_DEBUG_INFO(i8*, i32) #1

declare dso_local i32 @ipw_load_ucode(%struct.ipw_priv*, i8*, i64) #1

declare dso_local i32 @ipw_queue_reset(%struct.ipw_priv*) #1

declare dso_local i32 @ipw_read32(%struct.ipw_priv*, i32) #1

declare dso_local i32 @IPW_WARNING(i8*) #1

declare dso_local i32 @ipw_read_eeprom(%struct.ipw_priv*) #1

declare dso_local i32 @ipw_eeprom_init_sram(%struct.ipw_priv*) #1

declare dso_local i32 @ipw_enable_interrupts(%struct.ipw_priv*) #1

declare dso_local i32 @ipw_rx_queue_replenish(%struct.ipw_priv*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @ipw_rx_queue_free(%struct.ipw_priv*, %struct.TYPE_6__*) #1

declare dso_local i32 @ipw_tx_queue_free(%struct.ipw_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
