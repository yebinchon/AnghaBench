; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110_av.c_dvb_audio_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110_av.c_dvb_audio_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.dvb_device* }
%struct.dvb_device = type { %struct.av7110* }
%struct.av7110 = type { i32, i32, i32*, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i8* }
%struct.audio_mixer = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"av7110:%p, cmd=%04x\0A\00", align 1
@O_ACCMODE = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@AUDIO_SOURCE_MEMORY = common dso_local global i32 0, align 4
@RP_AUDIO = common dso_local global i32 0, align 4
@AUDIO_CMD_MUTE = common dso_local global i32 0, align 4
@AUDIO_STOPPED = common dso_local global i8* null, align 8
@AUDIO_CMD_UNMUTE = common dso_local global i32 0, align 4
@AUDIO_PLAYING = common dso_local global i8* null, align 8
@AUDIO_PAUSED = common dso_local global i8* null, align 8
@AUDIO_CMD_PCM16 = common dso_local global i32 0, align 4
@AUDIO_CMD_SYNC_ON = common dso_local global i32 0, align 4
@AUDIO_CMD_SYNC_OFF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AUDIO_CMD_STEREO = common dso_local global i32 0, align 4
@DVB_ADAC_CRYSTAL = common dso_local global i32 0, align 4
@DVB_ADAC_MSP34x5 = common dso_local global i32 0, align 4
@MSP_WR_DSP = common dso_local global i32 0, align 4
@AUDIO_CMD_MONO_L = common dso_local global i32 0, align 4
@AUDIO_CMD_MONO_R = common dso_local global i32 0, align 4
@AUDIO_CAP_LPCM = common dso_local global i32 0, align 4
@AUDIO_CAP_MP1 = common dso_local global i32 0, align 4
@AUDIO_CAP_MP2 = common dso_local global i32 0, align 4
@AUDIO_CAP_DTS = common dso_local global i32 0, align 4
@AUDIO_CAP_AC3 = common dso_local global i32 0, align 4
@RP_AV = common dso_local global i32 0, align 4
@COMTYPE_REC_PLAY = common dso_local global i32 0, align 4
@__Play = common dso_local global i32 0, align 4
@AV_PES = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, i8*)* @dvb_audio_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_audio_ioctl(%struct.file* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dvb_device*, align 8
  %9 = alloca %struct.av7110*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.audio_mixer*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 1
  %15 = load %struct.dvb_device*, %struct.dvb_device** %14, align 8
  store %struct.dvb_device* %15, %struct.dvb_device** %8, align 8
  %16 = load %struct.dvb_device*, %struct.dvb_device** %8, align 8
  %17 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %16, i32 0, i32 0
  %18 = load %struct.av7110*, %struct.av7110** %17, align 8
  store %struct.av7110* %18, %struct.av7110** %9, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = ptrtoint i8* %19 to i64
  store i64 %20, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %21 = load %struct.av7110*, %struct.av7110** %9, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.av7110* %21, i32 %22)
  %24 = load %struct.file*, %struct.file** %5, align 8
  %25 = getelementptr inbounds %struct.file, %struct.file* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @O_ACCMODE, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @O_RDONLY, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %3
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 141
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* @EPERM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %357

37:                                               ; preds = %31, %3
  %38 = load %struct.av7110*, %struct.av7110** %9, align 8
  %39 = getelementptr inbounds %struct.av7110, %struct.av7110* %38, i32 0, i32 0
  %40 = call i64 @mutex_lock_interruptible(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @ERESTARTSYS, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %357

45:                                               ; preds = %37
  %46 = load i32, i32* %6, align 4
  switch i32 %46, label %349 [
    i32 128, label %47
    i32 137, label %71
    i32 138, label %98
    i32 143, label %110
    i32 136, label %128
    i32 131, label %134
    i32 135, label %154
    i32 134, label %170
    i32 145, label %185
    i32 141, label %283
    i32 142, label %288
    i32 144, label %315
    i32 133, label %336
    i32 132, label %337
    i32 130, label %348
  ]

47:                                               ; preds = %45
  %48 = load %struct.av7110*, %struct.av7110** %9, align 8
  %49 = getelementptr inbounds %struct.av7110, %struct.av7110* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @AUDIO_SOURCE_MEMORY, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = load %struct.av7110*, %struct.av7110** %9, align 8
  %56 = load i32, i32* @RP_AUDIO, align 4
  %57 = call i32 @av7110_av_stop(%struct.av7110* %55, i32 %56)
  store i32 %57, i32* %11, align 4
  br label %62

58:                                               ; preds = %47
  %59 = load %struct.av7110*, %struct.av7110** %9, align 8
  %60 = load i32, i32* @AUDIO_CMD_MUTE, align 4
  %61 = call i32 @audcom(%struct.av7110* %59, i32 %60)
  store i32 %61, i32* %11, align 4
  br label %62

62:                                               ; preds = %58, %54
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %62
  %66 = load i8*, i8** @AUDIO_STOPPED, align 8
  %67 = load %struct.av7110*, %struct.av7110** %9, align 8
  %68 = getelementptr inbounds %struct.av7110, %struct.av7110* %67, i32 0, i32 5
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 5
  store i8* %66, i8** %69, align 8
  br label %70

70:                                               ; preds = %65, %62
  br label %352

71:                                               ; preds = %45
  %72 = load %struct.av7110*, %struct.av7110** %9, align 8
  %73 = getelementptr inbounds %struct.av7110, %struct.av7110* %72, i32 0, i32 5
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @AUDIO_SOURCE_MEMORY, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %71
  %79 = load %struct.av7110*, %struct.av7110** %9, align 8
  %80 = load i32, i32* @RP_AUDIO, align 4
  %81 = call i32 @av7110_av_start_play(%struct.av7110* %79, i32 %80)
  store i32 %81, i32* %11, align 4
  br label %82

82:                                               ; preds = %78, %71
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %82
  %86 = load %struct.av7110*, %struct.av7110** %9, align 8
  %87 = load i32, i32* @AUDIO_CMD_UNMUTE, align 4
  %88 = call i32 @audcom(%struct.av7110* %86, i32 %87)
  store i32 %88, i32* %11, align 4
  br label %89

89:                                               ; preds = %85, %82
  %90 = load i32, i32* %11, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %89
  %93 = load i8*, i8** @AUDIO_PLAYING, align 8
  %94 = load %struct.av7110*, %struct.av7110** %9, align 8
  %95 = getelementptr inbounds %struct.av7110, %struct.av7110* %94, i32 0, i32 5
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 5
  store i8* %93, i8** %96, align 8
  br label %97

97:                                               ; preds = %92, %89
  br label %352

98:                                               ; preds = %45
  %99 = load %struct.av7110*, %struct.av7110** %9, align 8
  %100 = load i32, i32* @AUDIO_CMD_MUTE, align 4
  %101 = call i32 @audcom(%struct.av7110* %99, i32 %100)
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* %11, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %98
  %105 = load i8*, i8** @AUDIO_PAUSED, align 8
  %106 = load %struct.av7110*, %struct.av7110** %9, align 8
  %107 = getelementptr inbounds %struct.av7110, %struct.av7110* %106, i32 0, i32 5
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 5
  store i8* %105, i8** %108, align 8
  br label %109

109:                                              ; preds = %104, %98
  br label %352

110:                                              ; preds = %45
  %111 = load %struct.av7110*, %struct.av7110** %9, align 8
  %112 = getelementptr inbounds %struct.av7110, %struct.av7110* %111, i32 0, i32 5
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 5
  %114 = load i8*, i8** %113, align 8
  %115 = load i8*, i8** @AUDIO_PAUSED, align 8
  %116 = icmp eq i8* %114, %115
  br i1 %116, label %117, label %127

117:                                              ; preds = %110
  %118 = load i8*, i8** @AUDIO_PLAYING, align 8
  %119 = load %struct.av7110*, %struct.av7110** %9, align 8
  %120 = getelementptr inbounds %struct.av7110, %struct.av7110* %119, i32 0, i32 5
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 5
  store i8* %118, i8** %121, align 8
  %122 = load %struct.av7110*, %struct.av7110** %9, align 8
  %123 = load i32, i32* @AUDIO_CMD_UNMUTE, align 4
  %124 = load i32, i32* @AUDIO_CMD_PCM16, align 4
  %125 = or i32 %123, %124
  %126 = call i32 @audcom(%struct.av7110* %122, i32 %125)
  store i32 %126, i32* %11, align 4
  br label %127

127:                                              ; preds = %117, %110
  br label %352

128:                                              ; preds = %45
  %129 = load i64, i64* %10, align 8
  %130 = trunc i64 %129 to i32
  %131 = load %struct.av7110*, %struct.av7110** %9, align 8
  %132 = getelementptr inbounds %struct.av7110, %struct.av7110* %131, i32 0, i32 5
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 4
  store i32 %130, i32* %133, align 8
  br label %352

134:                                              ; preds = %45
  %135 = load %struct.av7110*, %struct.av7110** %9, align 8
  %136 = load i64, i64* %10, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %134
  %139 = load i32, i32* @AUDIO_CMD_MUTE, align 4
  br label %142

140:                                              ; preds = %134
  %141 = load i32, i32* @AUDIO_CMD_UNMUTE, align 4
  br label %142

142:                                              ; preds = %140, %138
  %143 = phi i32 [ %139, %138 ], [ %141, %140 ]
  %144 = call i32 @audcom(%struct.av7110* %135, i32 %143)
  store i32 %144, i32* %11, align 4
  %145 = load i32, i32* %11, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %153, label %147

147:                                              ; preds = %142
  %148 = load i64, i64* %10, align 8
  %149 = trunc i64 %148 to i32
  %150 = load %struct.av7110*, %struct.av7110** %9, align 8
  %151 = getelementptr inbounds %struct.av7110, %struct.av7110* %150, i32 0, i32 5
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 0
  store i32 %149, i32* %152, align 8
  br label %153

153:                                              ; preds = %147, %142
  br label %352

154:                                              ; preds = %45
  %155 = load i64, i64* %10, align 8
  %156 = trunc i64 %155 to i32
  %157 = load %struct.av7110*, %struct.av7110** %9, align 8
  %158 = getelementptr inbounds %struct.av7110, %struct.av7110* %157, i32 0, i32 5
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 1
  store i32 %156, i32* %159, align 4
  %160 = load %struct.av7110*, %struct.av7110** %9, align 8
  %161 = load i64, i64* %10, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %154
  %164 = load i32, i32* @AUDIO_CMD_SYNC_ON, align 4
  br label %167

165:                                              ; preds = %154
  %166 = load i32, i32* @AUDIO_CMD_SYNC_OFF, align 4
  br label %167

167:                                              ; preds = %165, %163
  %168 = phi i32 [ %164, %163 ], [ %166, %165 ]
  %169 = call i32 @audcom(%struct.av7110* %160, i32 %168)
  store i32 %169, i32* %11, align 4
  br label %352

170:                                              ; preds = %45
  %171 = load %struct.av7110*, %struct.av7110** %9, align 8
  %172 = getelementptr inbounds %struct.av7110, %struct.av7110* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @FW_VERSION(i32 %173)
  %175 = icmp slt i32 %174, 9761
  br i1 %175, label %176, label %179

176:                                              ; preds = %170
  %177 = load i32, i32* @EINVAL, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %11, align 4
  br label %179

179:                                              ; preds = %176, %170
  %180 = load i64, i64* %10, align 8
  %181 = trunc i64 %180 to i32
  %182 = load %struct.av7110*, %struct.av7110** %9, align 8
  %183 = getelementptr inbounds %struct.av7110, %struct.av7110* %182, i32 0, i32 5
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 2
  store i32 %181, i32* %184, align 8
  br label %352

185:                                              ; preds = %45
  %186 = load i64, i64* %10, align 8
  %187 = trunc i64 %186 to i32
  %188 = load %struct.av7110*, %struct.av7110** %9, align 8
  %189 = getelementptr inbounds %struct.av7110, %struct.av7110* %188, i32 0, i32 5
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 3
  store i32 %187, i32* %190, align 4
  %191 = load %struct.av7110*, %struct.av7110** %9, align 8
  %192 = getelementptr inbounds %struct.av7110, %struct.av7110* %191, i32 0, i32 5
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  switch i32 %194, label %279 [
    i32 129, label %195
    i32 140, label %223
    i32 139, label %251
  ]

195:                                              ; preds = %185
  %196 = load %struct.av7110*, %struct.av7110** %9, align 8
  %197 = load i32, i32* @AUDIO_CMD_STEREO, align 4
  %198 = call i32 @audcom(%struct.av7110* %196, i32 %197)
  store i32 %198, i32* %11, align 4
  %199 = load i32, i32* %11, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %222, label %201

201:                                              ; preds = %195
  %202 = load %struct.av7110*, %struct.av7110** %9, align 8
  %203 = getelementptr inbounds %struct.av7110, %struct.av7110* %202, i32 0, i32 6
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @DVB_ADAC_CRYSTAL, align 4
  %206 = icmp eq i32 %204, %205
  br i1 %206, label %207, label %210

207:                                              ; preds = %201
  %208 = load %struct.av7110*, %struct.av7110** %9, align 8
  %209 = call i32 @i2c_writereg(%struct.av7110* %208, i32 32, i32 2, i32 73)
  br label %221

210:                                              ; preds = %201
  %211 = load %struct.av7110*, %struct.av7110** %9, align 8
  %212 = getelementptr inbounds %struct.av7110, %struct.av7110* %211, i32 0, i32 6
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @DVB_ADAC_MSP34x5, align 4
  %215 = icmp eq i32 %213, %214
  br i1 %215, label %216, label %220

216:                                              ; preds = %210
  %217 = load %struct.av7110*, %struct.av7110** %9, align 8
  %218 = load i32, i32* @MSP_WR_DSP, align 4
  %219 = call i32 @msp_writereg(%struct.av7110* %217, i32 %218, i32 8, i32 544)
  br label %220

220:                                              ; preds = %216, %210
  br label %221

221:                                              ; preds = %220, %207
  br label %222

222:                                              ; preds = %221, %195
  br label %282

223:                                              ; preds = %185
  %224 = load %struct.av7110*, %struct.av7110** %9, align 8
  %225 = load i32, i32* @AUDIO_CMD_MONO_L, align 4
  %226 = call i32 @audcom(%struct.av7110* %224, i32 %225)
  store i32 %226, i32* %11, align 4
  %227 = load i32, i32* %11, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %250, label %229

229:                                              ; preds = %223
  %230 = load %struct.av7110*, %struct.av7110** %9, align 8
  %231 = getelementptr inbounds %struct.av7110, %struct.av7110* %230, i32 0, i32 6
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* @DVB_ADAC_CRYSTAL, align 4
  %234 = icmp eq i32 %232, %233
  br i1 %234, label %235, label %238

235:                                              ; preds = %229
  %236 = load %struct.av7110*, %struct.av7110** %9, align 8
  %237 = call i32 @i2c_writereg(%struct.av7110* %236, i32 32, i32 2, i32 74)
  br label %249

238:                                              ; preds = %229
  %239 = load %struct.av7110*, %struct.av7110** %9, align 8
  %240 = getelementptr inbounds %struct.av7110, %struct.av7110* %239, i32 0, i32 6
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* @DVB_ADAC_MSP34x5, align 4
  %243 = icmp eq i32 %241, %242
  br i1 %243, label %244, label %248

244:                                              ; preds = %238
  %245 = load %struct.av7110*, %struct.av7110** %9, align 8
  %246 = load i32, i32* @MSP_WR_DSP, align 4
  %247 = call i32 @msp_writereg(%struct.av7110* %245, i32 %246, i32 8, i32 512)
  br label %248

248:                                              ; preds = %244, %238
  br label %249

249:                                              ; preds = %248, %235
  br label %250

250:                                              ; preds = %249, %223
  br label %282

251:                                              ; preds = %185
  %252 = load %struct.av7110*, %struct.av7110** %9, align 8
  %253 = load i32, i32* @AUDIO_CMD_MONO_R, align 4
  %254 = call i32 @audcom(%struct.av7110* %252, i32 %253)
  store i32 %254, i32* %11, align 4
  %255 = load i32, i32* %11, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %278, label %257

257:                                              ; preds = %251
  %258 = load %struct.av7110*, %struct.av7110** %9, align 8
  %259 = getelementptr inbounds %struct.av7110, %struct.av7110* %258, i32 0, i32 6
  %260 = load i32, i32* %259, align 8
  %261 = load i32, i32* @DVB_ADAC_CRYSTAL, align 4
  %262 = icmp eq i32 %260, %261
  br i1 %262, label %263, label %266

263:                                              ; preds = %257
  %264 = load %struct.av7110*, %struct.av7110** %9, align 8
  %265 = call i32 @i2c_writereg(%struct.av7110* %264, i32 32, i32 2, i32 69)
  br label %277

266:                                              ; preds = %257
  %267 = load %struct.av7110*, %struct.av7110** %9, align 8
  %268 = getelementptr inbounds %struct.av7110, %struct.av7110* %267, i32 0, i32 6
  %269 = load i32, i32* %268, align 8
  %270 = load i32, i32* @DVB_ADAC_MSP34x5, align 4
  %271 = icmp eq i32 %269, %270
  br i1 %271, label %272, label %276

272:                                              ; preds = %266
  %273 = load %struct.av7110*, %struct.av7110** %9, align 8
  %274 = load i32, i32* @MSP_WR_DSP, align 4
  %275 = call i32 @msp_writereg(%struct.av7110* %273, i32 %274, i32 8, i32 528)
  br label %276

276:                                              ; preds = %272, %266
  br label %277

277:                                              ; preds = %276, %263
  br label %278

278:                                              ; preds = %277, %251
  br label %282

279:                                              ; preds = %185
  %280 = load i32, i32* @EINVAL, align 4
  %281 = sub nsw i32 0, %280
  store i32 %281, i32* %11, align 4
  br label %282

282:                                              ; preds = %279, %278, %250, %222
  br label %352

283:                                              ; preds = %45
  %284 = load i8*, i8** %7, align 8
  %285 = load %struct.av7110*, %struct.av7110** %9, align 8
  %286 = getelementptr inbounds %struct.av7110, %struct.av7110* %285, i32 0, i32 5
  %287 = call i32 @memcpy(i8* %284, %struct.TYPE_2__* %286, i32 4)
  br label %352

288:                                              ; preds = %45
  %289 = load %struct.av7110*, %struct.av7110** %9, align 8
  %290 = getelementptr inbounds %struct.av7110, %struct.av7110* %289, i32 0, i32 4
  %291 = load i32, i32* %290, align 4
  %292 = call i32 @FW_VERSION(i32 %291)
  %293 = icmp slt i32 %292, 9761
  br i1 %293, label %294, label %302

294:                                              ; preds = %288
  %295 = load i32, i32* @AUDIO_CAP_LPCM, align 4
  %296 = load i32, i32* @AUDIO_CAP_MP1, align 4
  %297 = or i32 %295, %296
  %298 = load i32, i32* @AUDIO_CAP_MP2, align 4
  %299 = or i32 %297, %298
  %300 = load i8*, i8** %7, align 8
  %301 = bitcast i8* %300 to i32*
  store i32 %299, i32* %301, align 4
  br label %314

302:                                              ; preds = %288
  %303 = load i32, i32* @AUDIO_CAP_LPCM, align 4
  %304 = load i32, i32* @AUDIO_CAP_DTS, align 4
  %305 = or i32 %303, %304
  %306 = load i32, i32* @AUDIO_CAP_AC3, align 4
  %307 = or i32 %305, %306
  %308 = load i32, i32* @AUDIO_CAP_MP1, align 4
  %309 = or i32 %307, %308
  %310 = load i32, i32* @AUDIO_CAP_MP2, align 4
  %311 = or i32 %309, %310
  %312 = load i8*, i8** %7, align 8
  %313 = bitcast i8* %312 to i32*
  store i32 %311, i32* %313, align 4
  br label %314

314:                                              ; preds = %302, %294
  br label %352

315:                                              ; preds = %45
  %316 = load %struct.av7110*, %struct.av7110** %9, align 8
  %317 = getelementptr inbounds %struct.av7110, %struct.av7110* %316, i32 0, i32 3
  %318 = call i32 @dvb_ringbuffer_flush_spinlock_wakeup(i32* %317)
  %319 = load %struct.av7110*, %struct.av7110** %9, align 8
  %320 = getelementptr inbounds %struct.av7110, %struct.av7110* %319, i32 0, i32 2
  %321 = load i32*, i32** %320, align 8
  %322 = getelementptr inbounds i32, i32* %321, i64 0
  %323 = call i32 @av7110_ipack_reset(i32* %322)
  %324 = load %struct.av7110*, %struct.av7110** %9, align 8
  %325 = getelementptr inbounds %struct.av7110, %struct.av7110* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 4
  %327 = load i32, i32* @RP_AV, align 4
  %328 = icmp eq i32 %326, %327
  br i1 %328, label %329, label %335

329:                                              ; preds = %315
  %330 = load %struct.av7110*, %struct.av7110** %9, align 8
  %331 = load i32, i32* @COMTYPE_REC_PLAY, align 4
  %332 = load i32, i32* @__Play, align 4
  %333 = load i32, i32* @AV_PES, align 4
  %334 = call i32 @av7110_fw_cmd(%struct.av7110* %330, i32 %331, i32 %332, i32 2, i32 %333, i32 0)
  store i32 %334, i32* %11, align 4
  br label %335

335:                                              ; preds = %329, %315
  br label %352

336:                                              ; preds = %45
  br label %352

337:                                              ; preds = %45
  %338 = load i8*, i8** %7, align 8
  %339 = bitcast i8* %338 to %struct.audio_mixer*
  store %struct.audio_mixer* %339, %struct.audio_mixer** %12, align 8
  %340 = load %struct.av7110*, %struct.av7110** %9, align 8
  %341 = load %struct.audio_mixer*, %struct.audio_mixer** %12, align 8
  %342 = getelementptr inbounds %struct.audio_mixer, %struct.audio_mixer* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 4
  %344 = load %struct.audio_mixer*, %struct.audio_mixer** %12, align 8
  %345 = getelementptr inbounds %struct.audio_mixer, %struct.audio_mixer* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 4
  %347 = call i32 @av7110_set_volume(%struct.av7110* %340, i32 %343, i32 %346)
  store i32 %347, i32* %11, align 4
  br label %352

348:                                              ; preds = %45
  br label %352

349:                                              ; preds = %45
  %350 = load i32, i32* @ENOIOCTLCMD, align 4
  %351 = sub nsw i32 0, %350
  store i32 %351, i32* %11, align 4
  br label %352

352:                                              ; preds = %349, %348, %337, %336, %335, %314, %283, %282, %179, %167, %153, %128, %127, %109, %97, %70
  %353 = load %struct.av7110*, %struct.av7110** %9, align 8
  %354 = getelementptr inbounds %struct.av7110, %struct.av7110* %353, i32 0, i32 0
  %355 = call i32 @mutex_unlock(i32* %354)
  %356 = load i32, i32* %11, align 4
  store i32 %356, i32* %4, align 4
  br label %357

357:                                              ; preds = %352, %42, %34
  %358 = load i32, i32* %4, align 4
  ret i32 %358
}

declare dso_local i32 @dprintk(i32, i8*, %struct.av7110*, i32) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @av7110_av_stop(%struct.av7110*, i32) #1

declare dso_local i32 @audcom(%struct.av7110*, i32) #1

declare dso_local i32 @av7110_av_start_play(%struct.av7110*, i32) #1

declare dso_local i32 @FW_VERSION(i32) #1

declare dso_local i32 @i2c_writereg(%struct.av7110*, i32, i32, i32) #1

declare dso_local i32 @msp_writereg(%struct.av7110*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i8*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @dvb_ringbuffer_flush_spinlock_wakeup(i32*) #1

declare dso_local i32 @av7110_ipack_reset(i32*) #1

declare dso_local i32 @av7110_fw_cmd(%struct.av7110*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @av7110_set_volume(%struct.av7110*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
