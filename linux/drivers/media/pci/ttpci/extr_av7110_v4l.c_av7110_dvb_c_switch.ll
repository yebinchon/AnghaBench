; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110_v4l.c_av7110_dvb_c_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110_v4l.c_av7110_dvb_c_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_fh = type { %struct.saa7146_dev* }
%struct.saa7146_dev = type { i64, %struct.saa7146_vv* }
%struct.saa7146_vv = type { i32, i32*, i32* }
%struct.av7110 = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%p\0A\00", align 1
@STATUS_OVERLAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"suspending video failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"switching to analog TV:\0A\00", align 1
@SAA7146_HPS_SOURCE_PORT_B = common dso_local global i32 0, align 4
@SAA7146_HPS_SYNC_PORT_B = common dso_local global i32 0, align 4
@standard = common dso_local global i32 0, align 4
@analog_standard = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"switching SAA7113 to Analog Tuner Input\0A\00", align 1
@MSP_WR_DSP = common dso_local global i32 0, align 4
@ANALOG_TUNER_VES1820 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"setting band in demodulator failed\0A\00", align 1
@ANALOG_TUNER_STV0297 = common dso_local global i32 0, align 4
@SAA7146_GPIO_OUTHI = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"saa7113 write failed @ card %d\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"switching SAA7113 to Video AV CVBS Input\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"switching SAA7113 to Video AV Y/C Input\0A\00", align 1
@.str.8 = private unnamed_addr constant [60 x i8] c"switching SAA7113 to Input: AV7110: SAA7113: invalid input\0A\00", align 1
@SAA7146_HPS_SOURCE_PORT_A = common dso_local global i32 0, align 4
@SAA7146_HPS_SYNC_PORT_A = common dso_local global i32 0, align 4
@dvb_standard = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [20 x i8] c"switching DVB mode\0A\00", align 1
@SAA7146_GPIO_OUTLO = common dso_local global i32 0, align 4
@COMTYPE_AUDIODAC = common dso_local global i32 0, align 4
@ADSwitch = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [16 x i8] c"ADSwitch error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7146_fh*)* @av7110_dvb_c_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @av7110_dvb_c_switch(%struct.saa7146_fh* %0) #0 {
  %2 = alloca %struct.saa7146_fh*, align 8
  %3 = alloca %struct.saa7146_dev*, align 8
  %4 = alloca %struct.saa7146_vv*, align 8
  %5 = alloca %struct.av7110*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.saa7146_fh* %0, %struct.saa7146_fh** %2, align 8
  %10 = load %struct.saa7146_fh*, %struct.saa7146_fh** %2, align 8
  %11 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %10, i32 0, i32 0
  %12 = load %struct.saa7146_dev*, %struct.saa7146_dev** %11, align 8
  store %struct.saa7146_dev* %12, %struct.saa7146_dev** %3, align 8
  %13 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %14 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %13, i32 0, i32 1
  %15 = load %struct.saa7146_vv*, %struct.saa7146_vv** %14, align 8
  store %struct.saa7146_vv* %15, %struct.saa7146_vv** %4, align 8
  %16 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %17 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.av7110*
  store %struct.av7110* %19, %struct.av7110** %5, align 8
  %20 = load %struct.av7110*, %struct.av7110** %5, align 8
  %21 = call i32 (i32, i8*, ...) @dprintk(i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.av7110* %20)
  %22 = load %struct.saa7146_vv*, %struct.saa7146_vv** %4, align 8
  %23 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @STATUS_OVERLAY, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %1
  %29 = load %struct.saa7146_vv*, %struct.saa7146_vv** %4, align 8
  %30 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.saa7146_vv*, %struct.saa7146_vv** %4, align 8
  %33 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %32, i32 0, i32 1
  store i32* %31, i32** %33, align 8
  %34 = load %struct.saa7146_vv*, %struct.saa7146_vv** %4, align 8
  %35 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @saa7146_stop_preview(i32* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %28
  %41 = call i32 (i32, i8*, ...) @dprintk(i32 2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.saa7146_vv*, %struct.saa7146_vv** %4, align 8
  %43 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %42, i32 0, i32 1
  store i32* null, i32** %43, align 8
  br label %44

44:                                               ; preds = %40, %28
  br label %45

45:                                               ; preds = %44, %1
  %46 = load %struct.av7110*, %struct.av7110** %5, align 8
  %47 = getelementptr inbounds %struct.av7110, %struct.av7110* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 0, %48
  br i1 %49, label %50, label %146

50:                                               ; preds = %45
  %51 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  %52 = load i32, i32* @SAA7146_HPS_SOURCE_PORT_B, align 4
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* @SAA7146_HPS_SYNC_PORT_B, align 4
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* @standard, align 4
  %55 = load i32, i32* @analog_standard, align 4
  %56 = call i32 @memcpy(i32 %54, i32 %55, i32 8)
  %57 = load %struct.av7110*, %struct.av7110** %5, align 8
  %58 = getelementptr inbounds %struct.av7110, %struct.av7110* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  switch i32 %59, label %143 [
    i32 1, label %60
    i32 2, label %119
    i32 3, label %131
  ]

60:                                               ; preds = %50
  %61 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %62 = load %struct.av7110*, %struct.av7110** %5, align 8
  %63 = load i32, i32* @MSP_WR_DSP, align 4
  %64 = call i32 @msp_writereg(%struct.av7110* %62, i32 %63, i32 8, i32 0)
  %65 = load %struct.av7110*, %struct.av7110** %5, align 8
  %66 = load i32, i32* @MSP_WR_DSP, align 4
  %67 = call i32 @msp_writereg(%struct.av7110* %65, i32 %66, i32 9, i32 0)
  %68 = load %struct.av7110*, %struct.av7110** %5, align 8
  %69 = load i32, i32* @MSP_WR_DSP, align 4
  %70 = call i32 @msp_writereg(%struct.av7110* %68, i32 %69, i32 10, i32 0)
  %71 = load %struct.av7110*, %struct.av7110** %5, align 8
  %72 = load i32, i32* @MSP_WR_DSP, align 4
  %73 = call i32 @msp_writereg(%struct.av7110* %71, i32 %72, i32 14, i32 12288)
  %74 = load %struct.av7110*, %struct.av7110** %5, align 8
  %75 = load i32, i32* @MSP_WR_DSP, align 4
  %76 = call i32 @msp_writereg(%struct.av7110* %74, i32 %75, i32 0, i32 20224)
  %77 = load %struct.av7110*, %struct.av7110** %5, align 8
  %78 = load i32, i32* @MSP_WR_DSP, align 4
  %79 = call i32 @msp_writereg(%struct.av7110* %77, i32 %78, i32 7, i32 20224)
  %80 = load %struct.av7110*, %struct.av7110** %5, align 8
  %81 = getelementptr inbounds %struct.av7110, %struct.av7110* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @ANALOG_TUNER_VES1820, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %60
  %87 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %88 = call i64 @ves1820_writereg(%struct.saa7146_dev* %87, i32 9, i32 15, i32 96)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %86
  br label %108

93:                                               ; preds = %60
  %94 = load %struct.av7110*, %struct.av7110** %5, align 8
  %95 = getelementptr inbounds %struct.av7110, %struct.av7110* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @ANALOG_TUNER_STV0297, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %93
  %101 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %102 = load i32, i32* @SAA7146_GPIO_OUTHI, align 4
  %103 = call i32 @saa7146_setgpio(%struct.saa7146_dev* %101, i32 1, i32 %102)
  %104 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %105 = load i32, i32* @SAA7146_GPIO_OUTHI, align 4
  %106 = call i32 @saa7146_setgpio(%struct.saa7146_dev* %104, i32 3, i32 %105)
  br label %107

107:                                              ; preds = %100, %93
  br label %108

108:                                              ; preds = %107, %92
  %109 = load %struct.av7110*, %struct.av7110** %5, align 8
  %110 = call i32 @i2c_writereg(%struct.av7110* %109, i32 72, i32 2, i32 208)
  %111 = icmp ne i32 %110, 1
  br i1 %111, label %112, label %118

112:                                              ; preds = %108
  %113 = load %struct.av7110*, %struct.av7110** %5, align 8
  %114 = getelementptr inbounds %struct.av7110, %struct.av7110* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %112, %108
  br label %145

119:                                              ; preds = %50
  %120 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  %121 = load %struct.av7110*, %struct.av7110** %5, align 8
  %122 = call i32 @i2c_writereg(%struct.av7110* %121, i32 72, i32 2, i32 210)
  %123 = icmp ne i32 %122, 1
  br i1 %123, label %124, label %130

124:                                              ; preds = %119
  %125 = load %struct.av7110*, %struct.av7110** %5, align 8
  %126 = getelementptr inbounds %struct.av7110, %struct.av7110* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %128)
  br label %130

130:                                              ; preds = %124, %119
  br label %145

131:                                              ; preds = %50
  %132 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  %133 = load %struct.av7110*, %struct.av7110** %5, align 8
  %134 = call i32 @i2c_writereg(%struct.av7110* %133, i32 72, i32 2, i32 217)
  %135 = icmp ne i32 %134, 1
  br i1 %135, label %136, label %142

136:                                              ; preds = %131
  %137 = load %struct.av7110*, %struct.av7110** %5, align 8
  %138 = getelementptr inbounds %struct.av7110, %struct.av7110* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %140)
  br label %142

142:                                              ; preds = %136, %131
  br label %145

143:                                              ; preds = %50
  %144 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.8, i64 0, i64 0))
  br label %145

145:                                              ; preds = %143, %142, %130, %118
  br label %200

146:                                              ; preds = %45
  store i32 0, i32* %6, align 4
  %147 = load i32, i32* @SAA7146_HPS_SOURCE_PORT_A, align 4
  store i32 %147, i32* %7, align 4
  %148 = load i32, i32* @SAA7146_HPS_SYNC_PORT_A, align 4
  store i32 %148, i32* %8, align 4
  %149 = load i32, i32* @standard, align 4
  %150 = load i32, i32* @dvb_standard, align 4
  %151 = call i32 @memcpy(i32 %149, i32 %150, i32 8)
  %152 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  %153 = load %struct.av7110*, %struct.av7110** %5, align 8
  %154 = load i32, i32* @MSP_WR_DSP, align 4
  %155 = call i32 @msp_writereg(%struct.av7110* %153, i32 %154, i32 8, i32 544)
  %156 = load %struct.av7110*, %struct.av7110** %5, align 8
  %157 = load i32, i32* @MSP_WR_DSP, align 4
  %158 = call i32 @msp_writereg(%struct.av7110* %156, i32 %157, i32 9, i32 544)
  %159 = load %struct.av7110*, %struct.av7110** %5, align 8
  %160 = load i32, i32* @MSP_WR_DSP, align 4
  %161 = call i32 @msp_writereg(%struct.av7110* %159, i32 %160, i32 10, i32 544)
  %162 = load %struct.av7110*, %struct.av7110** %5, align 8
  %163 = load i32, i32* @MSP_WR_DSP, align 4
  %164 = call i32 @msp_writereg(%struct.av7110* %162, i32 %163, i32 14, i32 12288)
  %165 = load %struct.av7110*, %struct.av7110** %5, align 8
  %166 = load i32, i32* @MSP_WR_DSP, align 4
  %167 = call i32 @msp_writereg(%struct.av7110* %165, i32 %166, i32 0, i32 32512)
  %168 = load %struct.av7110*, %struct.av7110** %5, align 8
  %169 = load i32, i32* @MSP_WR_DSP, align 4
  %170 = call i32 @msp_writereg(%struct.av7110* %168, i32 %169, i32 7, i32 32512)
  %171 = load %struct.av7110*, %struct.av7110** %5, align 8
  %172 = getelementptr inbounds %struct.av7110, %struct.av7110* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @ANALOG_TUNER_VES1820, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %184

177:                                              ; preds = %146
  %178 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %179 = call i64 @ves1820_writereg(%struct.saa7146_dev* %178, i32 9, i32 15, i32 32)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %177
  %182 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %183

183:                                              ; preds = %181, %177
  br label %199

184:                                              ; preds = %146
  %185 = load %struct.av7110*, %struct.av7110** %5, align 8
  %186 = getelementptr inbounds %struct.av7110, %struct.av7110* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @ANALOG_TUNER_STV0297, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %198

191:                                              ; preds = %184
  %192 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %193 = load i32, i32* @SAA7146_GPIO_OUTLO, align 4
  %194 = call i32 @saa7146_setgpio(%struct.saa7146_dev* %192, i32 1, i32 %193)
  %195 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %196 = load i32, i32* @SAA7146_GPIO_OUTLO, align 4
  %197 = call i32 @saa7146_setgpio(%struct.saa7146_dev* %195, i32 3, i32 %196)
  br label %198

198:                                              ; preds = %191, %184
  br label %199

199:                                              ; preds = %198, %183
  br label %200

200:                                              ; preds = %199, %145
  %201 = load %struct.av7110*, %struct.av7110** %5, align 8
  %202 = load i32, i32* @COMTYPE_AUDIODAC, align 4
  %203 = load i32, i32* @ADSwitch, align 4
  %204 = load i32, i32* %6, align 4
  %205 = call i64 @av7110_fw_cmd(%struct.av7110* %201, i32 %202, i32 %203, i32 1, i32 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %200
  %208 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  br label %209

209:                                              ; preds = %207, %200
  %210 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %211 = load i32, i32* %7, align 4
  %212 = load i32, i32* %8, align 4
  %213 = call i32 @saa7146_set_hps_source_and_sync(%struct.saa7146_dev* %210, i32 %211, i32 %212)
  %214 = load %struct.saa7146_vv*, %struct.saa7146_vv** %4, align 8
  %215 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %214, i32 0, i32 1
  %216 = load i32*, i32** %215, align 8
  %217 = icmp ne i32* %216, null
  br i1 %217, label %218, label %225

218:                                              ; preds = %209
  %219 = load %struct.saa7146_vv*, %struct.saa7146_vv** %4, align 8
  %220 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %219, i32 0, i32 1
  %221 = load i32*, i32** %220, align 8
  %222 = call i32 @saa7146_start_preview(i32* %221)
  %223 = load %struct.saa7146_vv*, %struct.saa7146_vv** %4, align 8
  %224 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %223, i32 0, i32 1
  store i32* null, i32** %224, align 8
  br label %225

225:                                              ; preds = %218, %209
  ret i32 0
}

declare dso_local i32 @dprintk(i32, i8*, ...) #1

declare dso_local i32 @saa7146_stop_preview(i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @msp_writereg(%struct.av7110*, i32, i32, i32) #1

declare dso_local i64 @ves1820_writereg(%struct.saa7146_dev*, i32, i32, i32) #1

declare dso_local i32 @saa7146_setgpio(%struct.saa7146_dev*, i32, i32) #1

declare dso_local i32 @i2c_writereg(%struct.av7110*, i32, i32, i32) #1

declare dso_local i64 @av7110_fw_cmd(%struct.av7110*, i32, i32, i32, i32) #1

declare dso_local i32 @saa7146_set_hps_source_and_sync(%struct.saa7146_dev*, i32, i32) #1

declare dso_local i32 @saa7146_start_preview(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
