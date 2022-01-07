; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-drv.c_iwl_parse_v1_v2_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-drv.c_iwl_parse_v1_v2_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_drv = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8*, i32 }
%struct.firmware = type { i32, i64 }
%struct.iwl_firmware_pieces = type { i32 }
%struct.iwl_ucode_header = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32*, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32*, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"File size too small!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IWL_UCODE_REGULAR = common dso_local global i32 0, align 4
@IWL_UCODE_SECTION_INST = common dso_local global i32 0, align 4
@IWL_UCODE_SECTION_DATA = common dso_local global i32 0, align 4
@IWL_UCODE_INIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c" build %u\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"%u.%u.%u.%u%s\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"uCode file size %d does not match expected size\0A\00", align 1
@IWLAGN_RTC_INST_LOWER_BOUND = common dso_local global i32 0, align 4
@IWLAGN_RTC_DATA_LOWER_BOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_drv*, %struct.firmware*, %struct.iwl_firmware_pieces*)* @iwl_parse_v1_v2_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_parse_v1_v2_firmware(%struct.iwl_drv* %0, %struct.firmware* %1, %struct.iwl_firmware_pieces* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_drv*, align 8
  %6 = alloca %struct.firmware*, align 8
  %7 = alloca %struct.iwl_firmware_pieces*, align 8
  %8 = alloca %struct.iwl_ucode_header*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [25 x i8], align 16
  %13 = alloca i32*, align 8
  store %struct.iwl_drv* %0, %struct.iwl_drv** %5, align 8
  store %struct.firmware* %1, %struct.firmware** %6, align 8
  store %struct.iwl_firmware_pieces* %2, %struct.iwl_firmware_pieces** %7, align 8
  %14 = load %struct.firmware*, %struct.firmware** %6, align 8
  %15 = getelementptr inbounds %struct.firmware, %struct.firmware* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = bitcast i8* %17 to %struct.iwl_ucode_header*
  store %struct.iwl_ucode_header* %18, %struct.iwl_ucode_header** %8, align 8
  %19 = load %struct.iwl_ucode_header*, %struct.iwl_ucode_header** %8, align 8
  %20 = getelementptr inbounds %struct.iwl_ucode_header, %struct.iwl_ucode_header* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i8* @le32_to_cpu(i32 %21)
  %23 = load %struct.iwl_drv*, %struct.iwl_drv** %5, align 8
  %24 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  store i8* %22, i8** %25, align 8
  %26 = load %struct.iwl_drv*, %struct.iwl_drv** %5, align 8
  %27 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @IWL_UCODE_API(i8* %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  switch i32 %31, label %32 [
    i32 0, label %96
    i32 1, label %96
    i32 2, label %96
  ]

32:                                               ; preds = %3
  store i32 28, i32* %10, align 4
  %33 = load %struct.firmware*, %struct.firmware** %6, align 8
  %34 = getelementptr inbounds %struct.firmware, %struct.firmware* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load %struct.iwl_drv*, %struct.iwl_drv** %5, align 8
  %40 = call i32 (%struct.iwl_drv*, i8*, ...) @IWL_ERR(%struct.iwl_drv* %39, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %291

43:                                               ; preds = %32
  %44 = load %struct.iwl_ucode_header*, %struct.iwl_ucode_header** %8, align 8
  %45 = getelementptr inbounds %struct.iwl_ucode_header, %struct.iwl_ucode_header* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = call i8* @le32_to_cpu(i32 %48)
  %50 = ptrtoint i8* %49 to i32
  store i32 %50, i32* %11, align 4
  %51 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %7, align 8
  %52 = load i32, i32* @IWL_UCODE_REGULAR, align 4
  %53 = load i32, i32* @IWL_UCODE_SECTION_INST, align 4
  %54 = load %struct.iwl_ucode_header*, %struct.iwl_ucode_header** %8, align 8
  %55 = getelementptr inbounds %struct.iwl_ucode_header, %struct.iwl_ucode_header* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @le32_to_cpu(i32 %58)
  %60 = call i32 @set_sec_size(%struct.iwl_firmware_pieces* %51, i32 %52, i32 %53, i8* %59)
  %61 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %7, align 8
  %62 = load i32, i32* @IWL_UCODE_REGULAR, align 4
  %63 = load i32, i32* @IWL_UCODE_SECTION_DATA, align 4
  %64 = load %struct.iwl_ucode_header*, %struct.iwl_ucode_header** %8, align 8
  %65 = getelementptr inbounds %struct.iwl_ucode_header, %struct.iwl_ucode_header* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = call i8* @le32_to_cpu(i32 %68)
  %70 = call i32 @set_sec_size(%struct.iwl_firmware_pieces* %61, i32 %62, i32 %63, i8* %69)
  %71 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %7, align 8
  %72 = load i32, i32* @IWL_UCODE_INIT, align 4
  %73 = load i32, i32* @IWL_UCODE_SECTION_INST, align 4
  %74 = load %struct.iwl_ucode_header*, %struct.iwl_ucode_header** %8, align 8
  %75 = getelementptr inbounds %struct.iwl_ucode_header, %struct.iwl_ucode_header* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i8* @le32_to_cpu(i32 %78)
  %80 = call i32 @set_sec_size(%struct.iwl_firmware_pieces* %71, i32 %72, i32 %73, i8* %79)
  %81 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %7, align 8
  %82 = load i32, i32* @IWL_UCODE_INIT, align 4
  %83 = load i32, i32* @IWL_UCODE_SECTION_DATA, align 4
  %84 = load %struct.iwl_ucode_header*, %struct.iwl_ucode_header** %8, align 8
  %85 = getelementptr inbounds %struct.iwl_ucode_header, %struct.iwl_ucode_header* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i8* @le32_to_cpu(i32 %88)
  %90 = call i32 @set_sec_size(%struct.iwl_firmware_pieces* %81, i32 %82, i32 %83, i8* %89)
  %91 = load %struct.iwl_ucode_header*, %struct.iwl_ucode_header** %8, align 8
  %92 = getelementptr inbounds %struct.iwl_ucode_header, %struct.iwl_ucode_header* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  store i32* %95, i32** %13, align 8
  br label %153

96:                                               ; preds = %3, %3, %3
  store i32 24, i32* %10, align 4
  %97 = load %struct.firmware*, %struct.firmware** %6, align 8
  %98 = getelementptr inbounds %struct.firmware, %struct.firmware* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %10, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %96
  %103 = load %struct.iwl_drv*, %struct.iwl_drv** %5, align 8
  %104 = call i32 (%struct.iwl_drv*, i8*, ...) @IWL_ERR(%struct.iwl_drv* %103, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %4, align 4
  br label %291

107:                                              ; preds = %96
  store i32 0, i32* %11, align 4
  %108 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %7, align 8
  %109 = load i32, i32* @IWL_UCODE_REGULAR, align 4
  %110 = load i32, i32* @IWL_UCODE_SECTION_INST, align 4
  %111 = load %struct.iwl_ucode_header*, %struct.iwl_ucode_header** %8, align 8
  %112 = getelementptr inbounds %struct.iwl_ucode_header, %struct.iwl_ucode_header* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = call i8* @le32_to_cpu(i32 %115)
  %117 = call i32 @set_sec_size(%struct.iwl_firmware_pieces* %108, i32 %109, i32 %110, i8* %116)
  %118 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %7, align 8
  %119 = load i32, i32* @IWL_UCODE_REGULAR, align 4
  %120 = load i32, i32* @IWL_UCODE_SECTION_DATA, align 4
  %121 = load %struct.iwl_ucode_header*, %struct.iwl_ucode_header** %8, align 8
  %122 = getelementptr inbounds %struct.iwl_ucode_header, %struct.iwl_ucode_header* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = call i8* @le32_to_cpu(i32 %125)
  %127 = call i32 @set_sec_size(%struct.iwl_firmware_pieces* %118, i32 %119, i32 %120, i8* %126)
  %128 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %7, align 8
  %129 = load i32, i32* @IWL_UCODE_INIT, align 4
  %130 = load i32, i32* @IWL_UCODE_SECTION_INST, align 4
  %131 = load %struct.iwl_ucode_header*, %struct.iwl_ucode_header** %8, align 8
  %132 = getelementptr inbounds %struct.iwl_ucode_header, %struct.iwl_ucode_header* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = call i8* @le32_to_cpu(i32 %135)
  %137 = call i32 @set_sec_size(%struct.iwl_firmware_pieces* %128, i32 %129, i32 %130, i8* %136)
  %138 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %7, align 8
  %139 = load i32, i32* @IWL_UCODE_INIT, align 4
  %140 = load i32, i32* @IWL_UCODE_SECTION_DATA, align 4
  %141 = load %struct.iwl_ucode_header*, %struct.iwl_ucode_header** %8, align 8
  %142 = getelementptr inbounds %struct.iwl_ucode_header, %struct.iwl_ucode_header* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = call i8* @le32_to_cpu(i32 %145)
  %147 = call i32 @set_sec_size(%struct.iwl_firmware_pieces* %138, i32 %139, i32 %140, i8* %146)
  %148 = load %struct.iwl_ucode_header*, %struct.iwl_ucode_header** %8, align 8
  %149 = getelementptr inbounds %struct.iwl_ucode_header, %struct.iwl_ucode_header* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  store i32* %152, i32** %13, align 8
  br label %153

153:                                              ; preds = %107, %43
  %154 = load i32, i32* %11, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %153
  %157 = getelementptr inbounds [25 x i8], [25 x i8]* %12, i64 0, i64 0
  %158 = load i32, i32* %11, align 4
  %159 = call i32 @sprintf(i8* %157, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %158)
  br label %162

160:                                              ; preds = %153
  %161 = getelementptr inbounds [25 x i8], [25 x i8]* %12, i64 0, i64 0
  store i8 0, i8* %161, align 16
  br label %162

162:                                              ; preds = %160, %156
  %163 = load %struct.iwl_drv*, %struct.iwl_drv** %5, align 8
  %164 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.iwl_drv*, %struct.iwl_drv** %5, align 8
  %168 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  %171 = call i32 @IWL_UCODE_MAJOR(i8* %170)
  %172 = load %struct.iwl_drv*, %struct.iwl_drv** %5, align 8
  %173 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 0
  %175 = load i8*, i8** %174, align 8
  %176 = call i32 @IWL_UCODE_MINOR(i8* %175)
  %177 = load %struct.iwl_drv*, %struct.iwl_drv** %5, align 8
  %178 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 0
  %180 = load i8*, i8** %179, align 8
  %181 = call i32 @IWL_UCODE_API(i8* %180)
  %182 = load %struct.iwl_drv*, %struct.iwl_drv** %5, align 8
  %183 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 0
  %185 = load i8*, i8** %184, align 8
  %186 = call i32 @IWL_UCODE_SERIAL(i8* %185)
  %187 = getelementptr inbounds [25 x i8], [25 x i8]* %12, i64 0, i64 0
  %188 = call i32 @snprintf(i32 %166, i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %171, i32 %176, i32 %181, i32 %186, i8* %187)
  %189 = load %struct.firmware*, %struct.firmware** %6, align 8
  %190 = getelementptr inbounds %struct.firmware, %struct.firmware* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* %10, align 4
  %193 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %7, align 8
  %194 = load i32, i32* @IWL_UCODE_REGULAR, align 4
  %195 = load i32, i32* @IWL_UCODE_SECTION_INST, align 4
  %196 = call i32 @get_sec_size(%struct.iwl_firmware_pieces* %193, i32 %194, i32 %195)
  %197 = add nsw i32 %192, %196
  %198 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %7, align 8
  %199 = load i32, i32* @IWL_UCODE_REGULAR, align 4
  %200 = load i32, i32* @IWL_UCODE_SECTION_DATA, align 4
  %201 = call i32 @get_sec_size(%struct.iwl_firmware_pieces* %198, i32 %199, i32 %200)
  %202 = add nsw i32 %197, %201
  %203 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %7, align 8
  %204 = load i32, i32* @IWL_UCODE_INIT, align 4
  %205 = load i32, i32* @IWL_UCODE_SECTION_INST, align 4
  %206 = call i32 @get_sec_size(%struct.iwl_firmware_pieces* %203, i32 %204, i32 %205)
  %207 = add nsw i32 %202, %206
  %208 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %7, align 8
  %209 = load i32, i32* @IWL_UCODE_INIT, align 4
  %210 = load i32, i32* @IWL_UCODE_SECTION_DATA, align 4
  %211 = call i32 @get_sec_size(%struct.iwl_firmware_pieces* %208, i32 %209, i32 %210)
  %212 = add nsw i32 %207, %211
  %213 = icmp ne i32 %191, %212
  br i1 %213, label %214, label %222

214:                                              ; preds = %162
  %215 = load %struct.iwl_drv*, %struct.iwl_drv** %5, align 8
  %216 = load %struct.firmware*, %struct.firmware** %6, align 8
  %217 = getelementptr inbounds %struct.firmware, %struct.firmware* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = call i32 (%struct.iwl_drv*, i8*, ...) @IWL_ERR(%struct.iwl_drv* %215, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %218)
  %220 = load i32, i32* @EINVAL, align 4
  %221 = sub nsw i32 0, %220
  store i32 %221, i32* %4, align 4
  br label %291

222:                                              ; preds = %162
  %223 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %7, align 8
  %224 = load i32, i32* @IWL_UCODE_REGULAR, align 4
  %225 = load i32, i32* @IWL_UCODE_SECTION_INST, align 4
  %226 = load i32*, i32** %13, align 8
  %227 = call i32 @set_sec_data(%struct.iwl_firmware_pieces* %223, i32 %224, i32 %225, i32* %226)
  %228 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %7, align 8
  %229 = load i32, i32* @IWL_UCODE_REGULAR, align 4
  %230 = load i32, i32* @IWL_UCODE_SECTION_INST, align 4
  %231 = call i32 @get_sec_size(%struct.iwl_firmware_pieces* %228, i32 %229, i32 %230)
  %232 = load i32*, i32** %13, align 8
  %233 = sext i32 %231 to i64
  %234 = getelementptr inbounds i32, i32* %232, i64 %233
  store i32* %234, i32** %13, align 8
  %235 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %7, align 8
  %236 = load i32, i32* @IWL_UCODE_REGULAR, align 4
  %237 = load i32, i32* @IWL_UCODE_SECTION_INST, align 4
  %238 = load i32, i32* @IWLAGN_RTC_INST_LOWER_BOUND, align 4
  %239 = call i32 @set_sec_offset(%struct.iwl_firmware_pieces* %235, i32 %236, i32 %237, i32 %238)
  %240 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %7, align 8
  %241 = load i32, i32* @IWL_UCODE_REGULAR, align 4
  %242 = load i32, i32* @IWL_UCODE_SECTION_DATA, align 4
  %243 = load i32*, i32** %13, align 8
  %244 = call i32 @set_sec_data(%struct.iwl_firmware_pieces* %240, i32 %241, i32 %242, i32* %243)
  %245 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %7, align 8
  %246 = load i32, i32* @IWL_UCODE_REGULAR, align 4
  %247 = load i32, i32* @IWL_UCODE_SECTION_DATA, align 4
  %248 = call i32 @get_sec_size(%struct.iwl_firmware_pieces* %245, i32 %246, i32 %247)
  %249 = load i32*, i32** %13, align 8
  %250 = sext i32 %248 to i64
  %251 = getelementptr inbounds i32, i32* %249, i64 %250
  store i32* %251, i32** %13, align 8
  %252 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %7, align 8
  %253 = load i32, i32* @IWL_UCODE_REGULAR, align 4
  %254 = load i32, i32* @IWL_UCODE_SECTION_DATA, align 4
  %255 = load i32, i32* @IWLAGN_RTC_DATA_LOWER_BOUND, align 4
  %256 = call i32 @set_sec_offset(%struct.iwl_firmware_pieces* %252, i32 %253, i32 %254, i32 %255)
  %257 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %7, align 8
  %258 = load i32, i32* @IWL_UCODE_INIT, align 4
  %259 = load i32, i32* @IWL_UCODE_SECTION_INST, align 4
  %260 = load i32*, i32** %13, align 8
  %261 = call i32 @set_sec_data(%struct.iwl_firmware_pieces* %257, i32 %258, i32 %259, i32* %260)
  %262 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %7, align 8
  %263 = load i32, i32* @IWL_UCODE_INIT, align 4
  %264 = load i32, i32* @IWL_UCODE_SECTION_INST, align 4
  %265 = call i32 @get_sec_size(%struct.iwl_firmware_pieces* %262, i32 %263, i32 %264)
  %266 = load i32*, i32** %13, align 8
  %267 = sext i32 %265 to i64
  %268 = getelementptr inbounds i32, i32* %266, i64 %267
  store i32* %268, i32** %13, align 8
  %269 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %7, align 8
  %270 = load i32, i32* @IWL_UCODE_INIT, align 4
  %271 = load i32, i32* @IWL_UCODE_SECTION_INST, align 4
  %272 = load i32, i32* @IWLAGN_RTC_INST_LOWER_BOUND, align 4
  %273 = call i32 @set_sec_offset(%struct.iwl_firmware_pieces* %269, i32 %270, i32 %271, i32 %272)
  %274 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %7, align 8
  %275 = load i32, i32* @IWL_UCODE_INIT, align 4
  %276 = load i32, i32* @IWL_UCODE_SECTION_DATA, align 4
  %277 = load i32*, i32** %13, align 8
  %278 = call i32 @set_sec_data(%struct.iwl_firmware_pieces* %274, i32 %275, i32 %276, i32* %277)
  %279 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %7, align 8
  %280 = load i32, i32* @IWL_UCODE_INIT, align 4
  %281 = load i32, i32* @IWL_UCODE_SECTION_DATA, align 4
  %282 = call i32 @get_sec_size(%struct.iwl_firmware_pieces* %279, i32 %280, i32 %281)
  %283 = load i32*, i32** %13, align 8
  %284 = sext i32 %282 to i64
  %285 = getelementptr inbounds i32, i32* %283, i64 %284
  store i32* %285, i32** %13, align 8
  %286 = load %struct.iwl_firmware_pieces*, %struct.iwl_firmware_pieces** %7, align 8
  %287 = load i32, i32* @IWL_UCODE_INIT, align 4
  %288 = load i32, i32* @IWL_UCODE_SECTION_DATA, align 4
  %289 = load i32, i32* @IWLAGN_RTC_DATA_LOWER_BOUND, align 4
  %290 = call i32 @set_sec_offset(%struct.iwl_firmware_pieces* %286, i32 %287, i32 %288, i32 %289)
  store i32 0, i32* %4, align 4
  br label %291

291:                                              ; preds = %222, %214, %102, %38
  %292 = load i32, i32* %4, align 4
  ret i32 %292
}

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @IWL_UCODE_API(i8*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_drv*, i8*, ...) #1

declare dso_local i32 @set_sec_size(%struct.iwl_firmware_pieces*, i32, i32, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @IWL_UCODE_MAJOR(i8*) #1

declare dso_local i32 @IWL_UCODE_MINOR(i8*) #1

declare dso_local i32 @IWL_UCODE_SERIAL(i8*) #1

declare dso_local i32 @get_sec_size(%struct.iwl_firmware_pieces*, i32, i32) #1

declare dso_local i32 @set_sec_data(%struct.iwl_firmware_pieces*, i32, i32, i32*) #1

declare dso_local i32 @set_sec_offset(%struct.iwl_firmware_pieces*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
