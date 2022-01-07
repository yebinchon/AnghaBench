; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-streams.c_ivtv_prep_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-streams.c_ivtv_prep_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i8*, i64, i32, i32 }
%struct.ivtv = type { i32, i32, i32, %struct.TYPE_7__, %struct.TYPE_6__, %struct.ivtv_stream* }
%struct.TYPE_7__ = type { i8*, i32 }
%struct.TYPE_6__ = type { i64* }
%struct.ivtv_stream = type { i32, i8*, %struct.TYPE_8__, %struct.ivtv* }
%struct.TYPE_8__ = type { i32, i32*, i32, i32, i32, i32, i32, %struct.TYPE_7__*, i32 }

@ivtv_stream_info = common dso_local global %struct.TYPE_9__* null, align 8
@ivtv_first_minor = common dso_local global i32 0, align 4
@IVTV_ENC_STREAM_TYPE_RAD = common dso_local global i32 0, align 4
@V4L2_CAP_RADIO = common dso_local global i32 0, align 4
@IVTV_DEC_STREAM_TYPE_MPG = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@PCI_DMA_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"Disabled %s device\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@V4L2_CAP_SLICED_VBI_OUTPUT = common dso_local global i32 0, align 4
@VFL_DIR_TX = common dso_local global i32 0, align 4
@video_device_release_empty = common dso_local global i32 0, align 4
@V4L2_STD_ALL = common dso_local global i32 0, align 4
@IVTV_DEC_STREAM_TYPE_VBI = common dso_local global i32 0, align 4
@VIDIOC_S_AUDIO = common dso_local global i32 0, align 4
@VIDIOC_G_AUDIO = common dso_local global i32 0, align 4
@VIDIOC_ENUMAUDIO = common dso_local global i32 0, align 4
@VIDIOC_ENUMINPUT = common dso_local global i32 0, align 4
@VIDIOC_S_INPUT = common dso_local global i32 0, align 4
@VIDIOC_G_INPUT = common dso_local global i32 0, align 4
@VIDIOC_S_FREQUENCY = common dso_local global i32 0, align 4
@VIDIOC_G_FREQUENCY = common dso_local global i32 0, align 4
@VIDIOC_S_TUNER = common dso_local global i32 0, align 4
@VIDIOC_G_TUNER = common dso_local global i32 0, align 4
@VIDIOC_S_STD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ivtv*, i32)* @ivtv_prep_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtv_prep_dev(%struct.ivtv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ivtv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ivtv_stream*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ivtv* %0, %struct.ivtv** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %10 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %9, i32 0, i32 5
  %11 = load %struct.ivtv_stream*, %struct.ivtv_stream** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %11, i64 %13
  store %struct.ivtv_stream* %14, %struct.ivtv_stream** %6, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ivtv_stream_info, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %7, align 4
  %21 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %22 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @ivtv_first_minor, align 4
  %25 = add nsw i32 %23, %24
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %8, align 4
  %28 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %29 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 7
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %30, align 8
  %31 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %32 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %33 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %32, i32 0, i32 3
  store %struct.ivtv* %31, %struct.ivtv** %33, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %36 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ivtv_stream_info, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %44 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @IVTV_ENC_STREAM_TYPE_RAD, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %2
  %49 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %50 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @V4L2_CAP_RADIO, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %220

56:                                               ; preds = %48, %2
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @IVTV_DEC_STREAM_TYPE_MPG, align 4
  %59 = icmp sge i32 %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %56
  %61 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %62 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @V4L2_CAP_VIDEO_OUTPUT, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %220

68:                                               ; preds = %60, %56
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ivtv_stream_info, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @PCI_DMA_NONE, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %95

77:                                               ; preds = %68
  %78 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %79 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i64*, i64** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %77
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ivtv_stream_info, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @IVTV_INFO(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %93)
  store i32 0, i32* %3, align 4
  br label %220

95:                                               ; preds = %77, %68
  %96 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @ivtv_stream_init(%struct.ivtv* %96, i32 %97)
  %99 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %100 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 8
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %104 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %108 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @snprintf(i32 %102, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %106, i8* %109)
  %111 = load i32, i32* %8, align 4
  %112 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %113 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  store i32 %111, i32* %114, align 8
  %115 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %116 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %115, i32 0, i32 3
  %117 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %118 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 7
  store %struct.TYPE_7__* %116, %struct.TYPE_7__** %119, align 8
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ivtv_stream_info, align 8
  %121 = load i32, i32* %5, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @V4L2_CAP_VIDEO_OUTPUT, align 4
  %127 = load i32, i32* @V4L2_CAP_SLICED_VBI_OUTPUT, align 4
  %128 = or i32 %126, %127
  %129 = and i32 %125, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %95
  %132 = load i32, i32* @VFL_DIR_TX, align 4
  %133 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %134 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 6
  store i32 %132, i32* %135, align 8
  br label %136

136:                                              ; preds = %131, %95
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ivtv_stream_info, align 8
  %138 = load i32, i32* %5, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %144 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 5
  store i32 %142, i32* %145, align 4
  %146 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %147 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %151 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 4
  store i32 %149, i32* %152, align 8
  %153 = load i32, i32* @video_device_release_empty, align 4
  %154 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %155 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 3
  store i32 %153, i32* %156, align 4
  %157 = load i32, i32* @V4L2_STD_ALL, align 4
  %158 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %159 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 2
  store i32 %157, i32* %160, align 8
  %161 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %162 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %161, i32 0, i32 2
  %163 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %164 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 1
  store i32* %162, i32** %165, align 8
  %166 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %167 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @IVTV_DEC_STREAM_TYPE_VBI, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %216

171:                                              ; preds = %136
  %172 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %173 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %172, i32 0, i32 2
  %174 = load i32, i32* @VIDIOC_S_AUDIO, align 4
  %175 = call i32 @v4l2_disable_ioctl(%struct.TYPE_8__* %173, i32 %174)
  %176 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %177 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %176, i32 0, i32 2
  %178 = load i32, i32* @VIDIOC_G_AUDIO, align 4
  %179 = call i32 @v4l2_disable_ioctl(%struct.TYPE_8__* %177, i32 %178)
  %180 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %181 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %180, i32 0, i32 2
  %182 = load i32, i32* @VIDIOC_ENUMAUDIO, align 4
  %183 = call i32 @v4l2_disable_ioctl(%struct.TYPE_8__* %181, i32 %182)
  %184 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %185 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %184, i32 0, i32 2
  %186 = load i32, i32* @VIDIOC_ENUMINPUT, align 4
  %187 = call i32 @v4l2_disable_ioctl(%struct.TYPE_8__* %185, i32 %186)
  %188 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %189 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %188, i32 0, i32 2
  %190 = load i32, i32* @VIDIOC_S_INPUT, align 4
  %191 = call i32 @v4l2_disable_ioctl(%struct.TYPE_8__* %189, i32 %190)
  %192 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %193 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %192, i32 0, i32 2
  %194 = load i32, i32* @VIDIOC_G_INPUT, align 4
  %195 = call i32 @v4l2_disable_ioctl(%struct.TYPE_8__* %193, i32 %194)
  %196 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %197 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %196, i32 0, i32 2
  %198 = load i32, i32* @VIDIOC_S_FREQUENCY, align 4
  %199 = call i32 @v4l2_disable_ioctl(%struct.TYPE_8__* %197, i32 %198)
  %200 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %201 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %200, i32 0, i32 2
  %202 = load i32, i32* @VIDIOC_G_FREQUENCY, align 4
  %203 = call i32 @v4l2_disable_ioctl(%struct.TYPE_8__* %201, i32 %202)
  %204 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %205 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %204, i32 0, i32 2
  %206 = load i32, i32* @VIDIOC_S_TUNER, align 4
  %207 = call i32 @v4l2_disable_ioctl(%struct.TYPE_8__* %205, i32 %206)
  %208 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %209 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %208, i32 0, i32 2
  %210 = load i32, i32* @VIDIOC_G_TUNER, align 4
  %211 = call i32 @v4l2_disable_ioctl(%struct.TYPE_8__* %209, i32 %210)
  %212 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %213 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %212, i32 0, i32 2
  %214 = load i32, i32* @VIDIOC_S_STD, align 4
  %215 = call i32 @v4l2_disable_ioctl(%struct.TYPE_8__* %213, i32 %214)
  br label %216

216:                                              ; preds = %171, %136
  %217 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %218 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %217, i32 0, i32 2
  %219 = call i32 @ivtv_set_funcs(%struct.TYPE_8__* %218)
  store i32 0, i32* %3, align 4
  br label %220

220:                                              ; preds = %216, %87, %67, %55
  %221 = load i32, i32* %3, align 4
  ret i32 %221
}

declare dso_local i32 @IVTV_INFO(i8*, i8*) #1

declare dso_local i32 @ivtv_stream_init(%struct.ivtv*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8*) #1

declare dso_local i32 @v4l2_disable_ioctl(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @ivtv_set_funcs(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
