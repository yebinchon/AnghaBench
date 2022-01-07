; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-av-firmware.c_cx18_av_loadfw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-av-firmware.c_cx18_av_loadfw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18 = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.v4l2_subdev }
%struct.v4l2_subdev = type { i32 }
%struct.firmware = type { i32, i64* }

@FWFILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"unable to open firmware %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CXADEC_CHIP_CTRL = common dso_local global i32 0, align 4
@CXADEC_STD_DET_CTL = common dso_local global i32 0, align 4
@CXADEC_DL_CTL = common dso_local global i32 0, align 4
@CX18_MAX_MMIO_WR_RETRIES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"unable to load firmware %s\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"loaded %s firmware (%d bytes)\0A\00", align 1
@CXADEC_PIN_CTRL1 = common dso_local global i32 0, align 4
@CXADEC_I2S_IN_CTL = common dso_local global i32 0, align 4
@CXADEC_I2S_OUT_CTL = common dso_local global i32 0, align 4
@CXADEC_PIN_CFG3 = common dso_local global i32 0, align 4
@CX18_AUDIO_ENABLE = common dso_local global i32 0, align 4
@CX18_AI1_MUX_MASK = common dso_local global i32 0, align 4
@CX18_AI1_MUX_843_I2S = common dso_local global i32 0, align 4
@CX18_AI1_MUX_INVALID = common dso_local global i32 0, align 4
@CX18_AI1_MUX_I2S1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx18_av_loadfw(%struct.cx18* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cx18*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.cx18* %0, %struct.cx18** %3, align 8
  %16 = load %struct.cx18*, %struct.cx18** %3, align 8
  %17 = getelementptr inbounds %struct.cx18, %struct.cx18* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store %struct.v4l2_subdev* %18, %struct.v4l2_subdev** %4, align 8
  store %struct.firmware* null, %struct.firmware** %5, align 8
  store i32 0, i32* %11, align 4
  %19 = load i32, i32* @FWFILE, align 4
  %20 = load %struct.cx18*, %struct.cx18** %3, align 8
  %21 = getelementptr inbounds %struct.cx18, %struct.cx18* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = call i64 @request_firmware(%struct.firmware** %5, i32 %19, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %1
  %27 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %28 = load i32, i32* @FWFILE, align 4
  %29 = call i32 @CX18_ERR_DEV(%struct.v4l2_subdev* %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %258

32:                                               ; preds = %1
  br label %33

33:                                               ; preds = %114, %32
  %34 = load i32, i32* %11, align 4
  %35 = icmp slt i32 %34, 5
  br i1 %35, label %36, label %117

36:                                               ; preds = %33
  %37 = load %struct.cx18*, %struct.cx18** %3, align 8
  %38 = load i32, i32* @CXADEC_CHIP_CTRL, align 4
  %39 = call i32 @cx18_av_write4_expect(%struct.cx18* %37, i32 %38, i32 65536, i32 33840, i32 -1)
  %40 = load %struct.cx18*, %struct.cx18** %3, align 8
  %41 = load i32, i32* @CXADEC_STD_DET_CTL, align 4
  %42 = call i32 @cx18_av_write_expect(%struct.cx18* %40, i32 %41, i32 246, i32 246, i32 255)
  %43 = load %struct.cx18*, %struct.cx18** %3, align 8
  %44 = call i32 @cx18_av_write4_expect(%struct.cx18* %43, i32 33024, i32 65536, i32 33840, i32 -1)
  %45 = load %struct.cx18*, %struct.cx18** %3, align 8
  %46 = load i32, i32* @CXADEC_DL_CTL, align 4
  %47 = call i32 @cx18_av_write4_noretry(%struct.cx18* %45, i32 %46, i32 251658240)
  %48 = load %struct.firmware*, %struct.firmware** %5, align 8
  %49 = getelementptr inbounds %struct.firmware, %struct.firmware* %48, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  store i64* %50, i64** %9, align 8
  %51 = load %struct.firmware*, %struct.firmware** %5, align 8
  %52 = getelementptr inbounds %struct.firmware, %struct.firmware* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %6, align 4
  store i32 0, i32* %10, align 4
  br label %54

54:                                               ; preds = %106, %36
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %109

58:                                               ; preds = %54
  %59 = load i32, i32* %10, align 4
  %60 = or i32 251658240, %59
  %61 = load i64*, i64** %9, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = shl i32 %66, 16
  %68 = or i32 %60, %67
  store i32 %68, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %69

69:                                               ; preds = %94, %58
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* @CX18_MAX_MMIO_WR_RETRIES, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %97

73:                                               ; preds = %69
  %74 = load %struct.cx18*, %struct.cx18** %3, align 8
  %75 = load i32, i32* @CXADEC_DL_CTL, align 4
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @cx18_av_write4_noretry(%struct.cx18* %74, i32 %75, i32 %76)
  %78 = call i32 @udelay(i32 10)
  %79 = load %struct.cx18*, %struct.cx18** %3, align 8
  %80 = load i32, i32* @CXADEC_DL_CTL, align 4
  %81 = call i32 @cx18_av_read4(%struct.cx18* %79, i32 %80)
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %73
  br label %97

86:                                               ; preds = %73
  %87 = load i32, i32* %13, align 4
  %88 = and i32 %87, 16128
  %89 = load i32, i32* %12, align 4
  %90 = and i32 %89, 16128
  %91 = icmp ne i32 %88, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  store i32 1, i32* %15, align 4
  br label %97

93:                                               ; preds = %86
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %14, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %14, align 4
  br label %69

97:                                               ; preds = %92, %85, %69
  %98 = load i32, i32* %15, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %14, align 4
  %102 = load i32, i32* @CX18_MAX_MMIO_WR_RETRIES, align 4
  %103 = icmp sge i32 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %100, %97
  br label %109

105:                                              ; preds = %100
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %10, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %10, align 4
  br label %54

109:                                              ; preds = %104, %54
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %6, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  br label %117

114:                                              ; preds = %109
  %115 = load i32, i32* %11, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %11, align 4
  br label %33

117:                                              ; preds = %113, %33
  %118 = load i32, i32* %11, align 4
  %119 = icmp sge i32 %118, 5
  br i1 %119, label %120, label %128

120:                                              ; preds = %117
  %121 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %122 = load i32, i32* @FWFILE, align 4
  %123 = call i32 @CX18_ERR_DEV(%struct.v4l2_subdev* %121, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %122)
  %124 = load %struct.firmware*, %struct.firmware** %5, align 8
  %125 = call i32 @release_firmware(%struct.firmware* %124)
  %126 = load i32, i32* @EIO, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %2, align 4
  br label %258

128:                                              ; preds = %117
  %129 = load %struct.cx18*, %struct.cx18** %3, align 8
  %130 = load i32, i32* @CXADEC_DL_CTL, align 4
  %131 = load %struct.firmware*, %struct.firmware** %5, align 8
  %132 = getelementptr inbounds %struct.firmware, %struct.firmware* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = or i32 50331648, %133
  %135 = call i32 @cx18_av_write4_expect(%struct.cx18* %129, i32 %130, i32 %134, i32 50331648, i32 318767104)
  %136 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %137 = load i32, i32* @FWFILE, align 4
  %138 = load i32, i32* %6, align 4
  %139 = call i32 @CX18_INFO_DEV(%struct.v4l2_subdev* %136, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %137, i32 %138)
  %140 = load %struct.cx18*, %struct.cx18** %3, align 8
  %141 = load %struct.firmware*, %struct.firmware** %5, align 8
  %142 = call i64 @cx18_av_verifyfw(%struct.cx18* %140, %struct.firmware* %141)
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %152

144:                                              ; preds = %128
  %145 = load %struct.cx18*, %struct.cx18** %3, align 8
  %146 = load i32, i32* @CXADEC_DL_CTL, align 4
  %147 = load %struct.firmware*, %struct.firmware** %5, align 8
  %148 = getelementptr inbounds %struct.firmware, %struct.firmware* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = or i32 318767104, %149
  %151 = call i32 @cx18_av_write4_expect(%struct.cx18* %145, i32 %146, i32 %150, i32 318767104, i32 318767104)
  br label %152

152:                                              ; preds = %144, %128
  %153 = load %struct.cx18*, %struct.cx18** %3, align 8
  %154 = load i32, i32* @CXADEC_PIN_CTRL1, align 4
  %155 = call i32 @cx18_av_and_or4(%struct.cx18* %153, i32 %154, i32 -1, i32 491520)
  %156 = load %struct.cx18*, %struct.cx18** %3, align 8
  %157 = load i32, i32* @CXADEC_I2S_IN_CTL, align 4
  %158 = call i32 @cx18_av_write4(%struct.cx18* %156, i32 %157, i32 160)
  %159 = load %struct.cx18*, %struct.cx18** %3, align 8
  %160 = load i32, i32* @CXADEC_I2S_OUT_CTL, align 4
  %161 = call i32 @cx18_av_write4(%struct.cx18* %159, i32 %160, i32 416)
  %162 = load %struct.cx18*, %struct.cx18** %3, align 8
  %163 = load i32, i32* @CXADEC_PIN_CFG3, align 4
  %164 = call i32 @cx18_av_write4(%struct.cx18* %162, i32 %163, i32 1442887303)
  %165 = load %struct.cx18*, %struct.cx18** %3, align 8
  %166 = load i32, i32* @CXADEC_STD_DET_CTL, align 4
  %167 = call i32 @cx18_av_write4_expect(%struct.cx18* %165, i32 %166, i32 246, i32 246, i32 1057030143)
  %168 = load %struct.cx18*, %struct.cx18** %3, align 8
  %169 = call i32 @cx18_av_write4(%struct.cx18* %168, i32 2508, i32 1)
  %170 = load %struct.cx18*, %struct.cx18** %3, align 8
  %171 = load i32, i32* @CX18_AUDIO_ENABLE, align 4
  %172 = call i32 @cx18_read_reg(%struct.cx18* %170, i32 %171)
  store i32 %172, i32* %8, align 4
  %173 = load i32, i32* %8, align 4
  %174 = and i32 %173, 2048
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %182

176:                                              ; preds = %152
  %177 = load %struct.cx18*, %struct.cx18** %3, align 8
  %178 = load i32, i32* %8, align 4
  %179 = and i32 %178, -1025
  %180 = load i32, i32* @CX18_AUDIO_ENABLE, align 4
  %181 = call i32 @cx18_write_reg_expect(%struct.cx18* %177, i32 %179, i32 %180, i32 0, i32 1024)
  br label %182

182:                                              ; preds = %176, %152
  %183 = load %struct.cx18*, %struct.cx18** %3, align 8
  %184 = load i32, i32* @CX18_AUDIO_ENABLE, align 4
  %185 = call i32 @cx18_read_reg(%struct.cx18* %183, i32 %184)
  store i32 %185, i32* %8, align 4
  %186 = load i32, i32* %8, align 4
  %187 = load i32, i32* @CX18_AI1_MUX_MASK, align 4
  %188 = and i32 %186, %187
  store i32 %188, i32* %7, align 4
  %189 = load i32, i32* @CX18_AI1_MUX_MASK, align 4
  %190 = xor i32 %189, -1
  %191 = load i32, i32* %8, align 4
  %192 = and i32 %191, %190
  store i32 %192, i32* %8, align 4
  %193 = load i32, i32* %7, align 4
  %194 = load i32, i32* @CX18_AI1_MUX_843_I2S, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %200, label %196

196:                                              ; preds = %182
  %197 = load i32, i32* %7, align 4
  %198 = load i32, i32* @CX18_AI1_MUX_INVALID, align 4
  %199 = icmp eq i32 %197, %198
  br i1 %199, label %200, label %217

200:                                              ; preds = %196, %182
  %201 = load i32, i32* @CX18_AI1_MUX_I2S1, align 4
  %202 = load i32, i32* %8, align 4
  %203 = or i32 %202, %201
  store i32 %203, i32* %8, align 4
  %204 = load %struct.cx18*, %struct.cx18** %3, align 8
  %205 = load i32, i32* %8, align 4
  %206 = or i32 %205, 2816
  %207 = load i32, i32* @CX18_AUDIO_ENABLE, align 4
  %208 = load i32, i32* %8, align 4
  %209 = load i32, i32* @CX18_AI1_MUX_MASK, align 4
  %210 = call i32 @cx18_write_reg_expect(%struct.cx18* %204, i32 %206, i32 %207, i32 %208, i32 %209)
  %211 = load i32, i32* %8, align 4
  %212 = load i32, i32* @CX18_AI1_MUX_MASK, align 4
  %213 = xor i32 %212, -1
  %214 = and i32 %211, %213
  %215 = load i32, i32* @CX18_AI1_MUX_843_I2S, align 4
  %216 = or i32 %214, %215
  store i32 %216, i32* %8, align 4
  br label %234

217:                                              ; preds = %196
  %218 = load i32, i32* @CX18_AI1_MUX_843_I2S, align 4
  %219 = load i32, i32* %8, align 4
  %220 = or i32 %219, %218
  store i32 %220, i32* %8, align 4
  %221 = load %struct.cx18*, %struct.cx18** %3, align 8
  %222 = load i32, i32* %8, align 4
  %223 = or i32 %222, 2816
  %224 = load i32, i32* @CX18_AUDIO_ENABLE, align 4
  %225 = load i32, i32* %8, align 4
  %226 = load i32, i32* @CX18_AI1_MUX_MASK, align 4
  %227 = call i32 @cx18_write_reg_expect(%struct.cx18* %221, i32 %223, i32 %224, i32 %225, i32 %226)
  %228 = load i32, i32* %8, align 4
  %229 = load i32, i32* @CX18_AI1_MUX_MASK, align 4
  %230 = xor i32 %229, -1
  %231 = and i32 %228, %230
  %232 = load i32, i32* %7, align 4
  %233 = or i32 %231, %232
  store i32 %233, i32* %8, align 4
  br label %234

234:                                              ; preds = %217, %200
  %235 = load %struct.cx18*, %struct.cx18** %3, align 8
  %236 = load i32, i32* %8, align 4
  %237 = or i32 %236, 2816
  %238 = load i32, i32* @CX18_AUDIO_ENABLE, align 4
  %239 = load i32, i32* %8, align 4
  %240 = load i32, i32* @CX18_AI1_MUX_MASK, align 4
  %241 = call i32 @cx18_write_reg_expect(%struct.cx18* %235, i32 %237, i32 %238, i32 %239, i32 %240)
  %242 = load %struct.cx18*, %struct.cx18** %3, align 8
  %243 = load i32, i32* @CXADEC_STD_DET_CTL, align 4
  %244 = call i32 @cx18_av_read4(%struct.cx18* %242, i32 %243)
  store i32 %244, i32* %8, align 4
  %245 = load i32, i32* %8, align 4
  %246 = or i32 %245, 255
  store i32 %246, i32* %8, align 4
  %247 = load i32, i32* %8, align 4
  %248 = or i32 %247, 1024
  store i32 %248, i32* %8, align 4
  %249 = load i32, i32* %8, align 4
  %250 = or i32 %249, 335544320
  store i32 %250, i32* %8, align 4
  %251 = load %struct.cx18*, %struct.cx18** %3, align 8
  %252 = load i32, i32* @CXADEC_STD_DET_CTL, align 4
  %253 = load i32, i32* %8, align 4
  %254 = load i32, i32* %8, align 4
  %255 = call i32 @cx18_av_write4_expect(%struct.cx18* %251, i32 %252, i32 %253, i32 %254, i32 1057030143)
  %256 = load %struct.firmware*, %struct.firmware** %5, align 8
  %257 = call i32 @release_firmware(%struct.firmware* %256)
  store i32 0, i32* %2, align 4
  br label %258

258:                                              ; preds = %234, %120, %26
  %259 = load i32, i32* %2, align 4
  ret i32 %259
}

declare dso_local i64 @request_firmware(%struct.firmware**, i32, i32*) #1

declare dso_local i32 @CX18_ERR_DEV(%struct.v4l2_subdev*, i8*, i32) #1

declare dso_local i32 @cx18_av_write4_expect(%struct.cx18*, i32, i32, i32, i32) #1

declare dso_local i32 @cx18_av_write_expect(%struct.cx18*, i32, i32, i32, i32) #1

declare dso_local i32 @cx18_av_write4_noretry(%struct.cx18*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @cx18_av_read4(%struct.cx18*, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @CX18_INFO_DEV(%struct.v4l2_subdev*, i8*, i32, i32) #1

declare dso_local i64 @cx18_av_verifyfw(%struct.cx18*, %struct.firmware*) #1

declare dso_local i32 @cx18_av_and_or4(%struct.cx18*, i32, i32, i32) #1

declare dso_local i32 @cx18_av_write4(%struct.cx18*, i32, i32) #1

declare dso_local i32 @cx18_read_reg(%struct.cx18*, i32) #1

declare dso_local i32 @cx18_write_reg_expect(%struct.cx18*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
