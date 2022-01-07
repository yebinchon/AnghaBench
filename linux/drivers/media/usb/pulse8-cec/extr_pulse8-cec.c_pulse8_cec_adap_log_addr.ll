; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pulse8-cec/extr_pulse8-cec.c_pulse8_cec_adap_log_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pulse8-cec/extr_pulse8-cec.c_pulse8_cec_adap_log_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_adapter = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32, i8* }
%struct.pulse8 = type { i32, i32, i32, i32 }

@CEC_LOG_ADDR_INVALID = common dso_local global i32 0, align 4
@MSGCODE_SET_ACK_MASK = common dso_local global i32 0, align 4
@MSGCODE_COMMAND_ACCEPTED = common dso_local global i32 0, align 4
@MSGCODE_SET_AUTO_ENABLED = common dso_local global i32 0, align 4
@MSGCODE_SET_DEVICE_TYPE = common dso_local global i32 0, align 4
@CEC_LOG_ADDR_MASK_TV = common dso_local global i32 0, align 4
@CEC_LOG_ADDR_MASK_RECORD = common dso_local global i32 0, align 4
@CEC_LOG_ADDR_MASK_TUNER = common dso_local global i32 0, align 4
@CEC_LOG_ADDR_MASK_PLAYBACK = common dso_local global i32 0, align 4
@CEC_LOG_ADDR_MASK_AUDIOSYSTEM = common dso_local global i32 0, align 4
@CEC_LOG_ADDR_MASK_UNREGISTERED = common dso_local global i32 0, align 4
@CEC_LOG_ADDR_MASK_SPECIFIC = common dso_local global i32 0, align 4
@MSGCODE_SET_LOGICAL_ADDRESS_MASK = common dso_local global i32 0, align 4
@MSGCODE_SET_DEFAULT_LOGICAL_ADDRESS = common dso_local global i32 0, align 4
@MSGCODE_SET_PHYSICAL_ADDRESS = common dso_local global i32 0, align 4
@MSGCODE_SET_HDMI_VERSION = common dso_local global i32 0, align 4
@MSGCODE_SET_OSD_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cec_adapter*, i32)* @pulse8_cec_adap_log_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pulse8_cec_adap_log_addr(%struct.cec_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.cec_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pulse8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [16 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store %struct.cec_adapter* %0, %struct.cec_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.cec_adapter*, %struct.cec_adapter** %3, align 8
  %13 = call %struct.pulse8* @cec_get_drvdata(%struct.cec_adapter* %12)
  store %struct.pulse8* %13, %struct.pulse8** %5, align 8
  store i32 0, i32* %6, align 4
  %14 = load %struct.cec_adapter*, %struct.cec_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %17 = load %struct.pulse8*, %struct.pulse8** %5, align 8
  %18 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %17, i32 0, i32 3
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @CEC_LOG_ADDR_INVALID, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = shl i32 1, %24
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %23, %2
  %27 = load i32, i32* @MSGCODE_SET_ACK_MASK, align 4
  %28 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  store i32 %27, i32* %28, align 16
  %29 = load i32, i32* %6, align 4
  %30 = ashr i32 %29, 8
  %31 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, 255
  %34 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2
  store i32 %33, i32* %34, align 8
  %35 = load %struct.pulse8*, %struct.pulse8** %5, align 8
  %36 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %37 = load i32, i32* @MSGCODE_COMMAND_ACCEPTED, align 4
  %38 = call i32 @pulse8_send_and_wait(%struct.pulse8* %35, i32* %36, i32 3, i32 %37, i32 0)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %26
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %41, %26
  %45 = load %struct.pulse8*, %struct.pulse8** %5, align 8
  %46 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44, %41
  br label %232

50:                                               ; preds = %44
  %51 = load i32, i32* @MSGCODE_SET_AUTO_ENABLED, align 4
  %52 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  store i32 %51, i32* %52, align 16
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @CEC_LOG_ADDR_INVALID, align 4
  %55 = icmp eq i32 %53, %54
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 0, i32 1
  %58 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1
  store i32 %57, i32* %58, align 4
  %59 = load %struct.pulse8*, %struct.pulse8** %5, align 8
  %60 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %61 = load i32, i32* @MSGCODE_COMMAND_ACCEPTED, align 4
  %62 = call i32 @pulse8_send_and_wait(%struct.pulse8* %59, i32* %60, i32 2, i32 %61, i32 0)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %50
  br label %232

66:                                               ; preds = %50
  %67 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.pulse8*, %struct.pulse8** %5, align 8
  %70 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @CEC_LOG_ADDR_INVALID, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  br label %232

75:                                               ; preds = %66
  %76 = load i32, i32* @MSGCODE_SET_DEVICE_TYPE, align 4
  %77 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  store i32 %76, i32* %77, align 16
  %78 = load %struct.cec_adapter*, %struct.cec_adapter** %3, align 8
  %79 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1
  store i32 %83, i32* %84, align 4
  %85 = load %struct.pulse8*, %struct.pulse8** %5, align 8
  %86 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %87 = load i32, i32* @MSGCODE_COMMAND_ACCEPTED, align 4
  %88 = call i32 @pulse8_send_and_wait(%struct.pulse8* %85, i32* %86, i32 2, i32 %87, i32 0)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %75
  br label %232

92:                                               ; preds = %75
  %93 = load %struct.cec_adapter*, %struct.cec_adapter** %3, align 8
  %94 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %97, align 4
  switch i32 %98, label %113 [
    i32 128, label %99
    i32 131, label %101
    i32 129, label %103
    i32 133, label %105
    i32 134, label %107
    i32 130, label %109
    i32 132, label %111
  ]

99:                                               ; preds = %92
  %100 = load i32, i32* @CEC_LOG_ADDR_MASK_TV, align 4
  store i32 %100, i32* %6, align 4
  br label %114

101:                                              ; preds = %92
  %102 = load i32, i32* @CEC_LOG_ADDR_MASK_RECORD, align 4
  store i32 %102, i32* %6, align 4
  br label %114

103:                                              ; preds = %92
  %104 = load i32, i32* @CEC_LOG_ADDR_MASK_TUNER, align 4
  store i32 %104, i32* %6, align 4
  br label %114

105:                                              ; preds = %92
  %106 = load i32, i32* @CEC_LOG_ADDR_MASK_PLAYBACK, align 4
  store i32 %106, i32* %6, align 4
  br label %114

107:                                              ; preds = %92
  %108 = load i32, i32* @CEC_LOG_ADDR_MASK_AUDIOSYSTEM, align 4
  store i32 %108, i32* %6, align 4
  br label %114

109:                                              ; preds = %92
  %110 = load i32, i32* @CEC_LOG_ADDR_MASK_UNREGISTERED, align 4
  store i32 %110, i32* %6, align 4
  br label %114

111:                                              ; preds = %92
  %112 = load i32, i32* @CEC_LOG_ADDR_MASK_SPECIFIC, align 4
  store i32 %112, i32* %6, align 4
  br label %114

113:                                              ; preds = %92
  store i32 0, i32* %6, align 4
  br label %114

114:                                              ; preds = %113, %111, %109, %107, %105, %103, %101, %99
  %115 = load i32, i32* @MSGCODE_SET_LOGICAL_ADDRESS_MASK, align 4
  %116 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  store i32 %115, i32* %116, align 16
  %117 = load i32, i32* %6, align 4
  %118 = ashr i32 %117, 8
  %119 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1
  store i32 %118, i32* %119, align 4
  %120 = load i32, i32* %6, align 4
  %121 = and i32 %120, 255
  %122 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2
  store i32 %121, i32* %122, align 8
  %123 = load %struct.pulse8*, %struct.pulse8** %5, align 8
  %124 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %125 = load i32, i32* @MSGCODE_COMMAND_ACCEPTED, align 4
  %126 = call i32 @pulse8_send_and_wait(%struct.pulse8* %123, i32* %124, i32 3, i32 %125, i32 0)
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %9, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %114
  br label %232

130:                                              ; preds = %114
  %131 = load i32, i32* @MSGCODE_SET_DEFAULT_LOGICAL_ADDRESS, align 4
  %132 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  store i32 %131, i32* %132, align 16
  %133 = load i32, i32* %4, align 4
  %134 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1
  store i32 %133, i32* %134, align 4
  %135 = load %struct.pulse8*, %struct.pulse8** %5, align 8
  %136 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %137 = load i32, i32* @MSGCODE_COMMAND_ACCEPTED, align 4
  %138 = call i32 @pulse8_send_and_wait(%struct.pulse8* %135, i32* %136, i32 2, i32 %137, i32 0)
  store i32 %138, i32* %9, align 4
  %139 = load i32, i32* %9, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %130
  br label %232

142:                                              ; preds = %130
  %143 = load i32, i32* @MSGCODE_SET_PHYSICAL_ADDRESS, align 4
  %144 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  store i32 %143, i32* %144, align 16
  %145 = load i32, i32* %7, align 4
  %146 = ashr i32 %145, 8
  %147 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1
  store i32 %146, i32* %147, align 4
  %148 = load i32, i32* %7, align 4
  %149 = and i32 %148, 255
  %150 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2
  store i32 %149, i32* %150, align 8
  %151 = load %struct.pulse8*, %struct.pulse8** %5, align 8
  %152 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %153 = load i32, i32* @MSGCODE_COMMAND_ACCEPTED, align 4
  %154 = call i32 @pulse8_send_and_wait(%struct.pulse8* %151, i32* %152, i32 3, i32 %153, i32 0)
  store i32 %154, i32* %9, align 4
  %155 = load i32, i32* %9, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %142
  br label %232

158:                                              ; preds = %142
  %159 = load i32, i32* @MSGCODE_SET_HDMI_VERSION, align 4
  %160 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  store i32 %159, i32* %160, align 16
  %161 = load %struct.cec_adapter*, %struct.cec_adapter** %3, align 8
  %162 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1
  store i32 %164, i32* %165, align 4
  %166 = load %struct.pulse8*, %struct.pulse8** %5, align 8
  %167 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %168 = load i32, i32* @MSGCODE_COMMAND_ACCEPTED, align 4
  %169 = call i32 @pulse8_send_and_wait(%struct.pulse8* %166, i32* %167, i32 2, i32 %168, i32 0)
  store i32 %169, i32* %9, align 4
  %170 = load i32, i32* %9, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %158
  br label %232

173:                                              ; preds = %158
  %174 = load %struct.cec_adapter*, %struct.cec_adapter** %3, align 8
  %175 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 2
  %177 = load i8*, i8** %176, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 0
  %179 = load i8, i8* %178, align 1
  %180 = icmp ne i8 %179, 0
  br i1 %180, label %181, label %231

181:                                              ; preds = %173
  %182 = load %struct.cec_adapter*, %struct.cec_adapter** %3, align 8
  %183 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 2
  %185 = load i8*, i8** %184, align 8
  %186 = call i64 @strlen(i8* %185)
  store i64 %186, i64* %10, align 8
  %187 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %188 = getelementptr inbounds i32, i32* %187, i64 1
  %189 = bitcast i32* %188 to i8*
  store i8* %189, i8** %11, align 8
  %190 = load i32, i32* @MSGCODE_SET_OSD_NAME, align 4
  %191 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  store i32 %190, i32* %191, align 16
  %192 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %193 = getelementptr inbounds i32, i32* %192, i64 1
  %194 = load %struct.cec_adapter*, %struct.cec_adapter** %3, align 8
  %195 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 2
  %197 = load i8*, i8** %196, align 8
  %198 = call i32 @strscpy(i32* %193, i8* %197, i32 63)
  %199 = load i64, i64* %10, align 8
  %200 = icmp ult i64 %199, 4
  br i1 %200, label %201, label %219

201:                                              ; preds = %181
  %202 = load i8*, i8** %11, align 8
  %203 = load i64, i64* %10, align 8
  %204 = getelementptr inbounds i8, i8* %202, i64 %203
  %205 = load i64, i64* %10, align 8
  %206 = sub i64 4, %205
  %207 = trunc i64 %206 to i32
  %208 = call i32 @memset(i8* %204, i8 signext 32, i32 %207)
  store i64 4, i64* %10, align 8
  %209 = load i8*, i8** %11, align 8
  %210 = load i64, i64* %10, align 8
  %211 = getelementptr inbounds i8, i8* %209, i64 %210
  store i8 0, i8* %211, align 1
  %212 = load %struct.cec_adapter*, %struct.cec_adapter** %3, align 8
  %213 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %213, i32 0, i32 2
  %215 = load i8*, i8** %214, align 8
  %216 = bitcast i8* %215 to i32*
  %217 = load i8*, i8** %11, align 8
  %218 = call i32 @strscpy(i32* %216, i8* %217, i32 8)
  br label %219

219:                                              ; preds = %201, %181
  %220 = load %struct.pulse8*, %struct.pulse8** %5, align 8
  %221 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %222 = load i64, i64* %10, align 8
  %223 = add i64 1, %222
  %224 = trunc i64 %223 to i32
  %225 = load i32, i32* @MSGCODE_COMMAND_ACCEPTED, align 4
  %226 = call i32 @pulse8_send_and_wait(%struct.pulse8* %220, i32* %221, i32 %224, i32 %225, i32 0)
  store i32 %226, i32* %9, align 4
  %227 = load i32, i32* %9, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %219
  br label %232

230:                                              ; preds = %219
  br label %231

231:                                              ; preds = %230, %173
  br label %232

232:                                              ; preds = %231, %229, %172, %157, %141, %129, %91, %74, %65, %49
  %233 = load %struct.pulse8*, %struct.pulse8** %5, align 8
  %234 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %232
  %238 = load %struct.pulse8*, %struct.pulse8** %5, align 8
  %239 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %238, i32 0, i32 0
  store i32 0, i32* %239, align 4
  br label %243

240:                                              ; preds = %232
  %241 = load %struct.pulse8*, %struct.pulse8** %5, align 8
  %242 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %241, i32 0, i32 2
  store i32 1, i32* %242, align 4
  br label %243

243:                                              ; preds = %240, %237
  %244 = load %struct.pulse8*, %struct.pulse8** %5, align 8
  %245 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %244, i32 0, i32 3
  %246 = call i32 @mutex_unlock(i32* %245)
  %247 = load i32, i32* %4, align 4
  %248 = load i32, i32* @CEC_LOG_ADDR_INVALID, align 4
  %249 = icmp eq i32 %247, %248
  br i1 %249, label %250, label %251

250:                                              ; preds = %243
  br label %253

251:                                              ; preds = %243
  %252 = load i32, i32* %9, align 4
  br label %253

253:                                              ; preds = %251, %250
  %254 = phi i32 [ 0, %250 ], [ %252, %251 ]
  ret i32 %254
}

declare dso_local %struct.pulse8* @cec_get_drvdata(%struct.cec_adapter*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pulse8_send_and_wait(%struct.pulse8*, i32*, i32, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strscpy(i32*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
