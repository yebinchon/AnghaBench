; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-streams.c_cx18_prep_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-streams.c_cx18_prep_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i8*, i64 }
%struct.cx18 = type { i32, i32, i64*, i32, i32, %struct.TYPE_8__*, %struct.TYPE_6__, %struct.cx18_stream* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i8* }
%struct.cx18_stream = type { i32, i8*, %struct.TYPE_10__, i64, i32*, %struct.cx18* }
%struct.TYPE_10__ = type { i32, i32*, i32, i32, i32*, %struct.TYPE_6__*, i32 }

@cx18_stream_info = common dso_local global %struct.TYPE_9__* null, align 8
@cx18_first_minor = common dso_local global i32 0, align 4
@CX18_ENC_STREAM_TYPE_RAD = common dso_local global i32 0, align 4
@V4L2_CAP_RADIO = common dso_local global i32 0, align 4
@CX18_ENC_STREAM_TYPE_VBI = common dso_local global i32 0, align 4
@V4L2_CAP_VBI_CAPTURE = common dso_local global i32 0, align 4
@V4L2_CAP_SLICED_VBI_CAPTURE = common dso_local global i32 0, align 4
@PCI_DMA_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"Disabled %s device\0A\00", align 1
@CX18_ENC_STREAM_TYPE_TS = common dso_local global i32 0, align 4
@CX18_HW_DVB = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Couldn't allocate cx18_dvb structure for %s\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@cx18_v4l2_enc_fops = common dso_local global i32 0, align 4
@video_device_release_empty = common dso_local global i32 0, align 4
@CX18_CARD_INPUT_VID_TUNER = common dso_local global i64 0, align 8
@V4L2_STD_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx18*, i32)* @cx18_prep_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx18_prep_dev(%struct.cx18* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx18*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cx18_stream*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cx18* %0, %struct.cx18** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.cx18*, %struct.cx18** %4, align 8
  %11 = getelementptr inbounds %struct.cx18, %struct.cx18* %10, i32 0, i32 7
  %12 = load %struct.cx18_stream*, %struct.cx18_stream** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %12, i64 %14
  store %struct.cx18_stream* %15, %struct.cx18_stream** %6, align 8
  %16 = load %struct.cx18*, %struct.cx18** %4, align 8
  %17 = getelementptr inbounds %struct.cx18, %struct.cx18* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cx18_stream_info, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %8, align 4
  %25 = load %struct.cx18*, %struct.cx18** %4, align 8
  %26 = getelementptr inbounds %struct.cx18, %struct.cx18* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @cx18_first_minor, align 4
  %29 = add nsw i32 %27, %28
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %9, align 4
  %32 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %33 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 5
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %34, align 8
  %35 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %36 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %35, i32 0, i32 4
  store i32* null, i32** %36, align 8
  %37 = load %struct.cx18*, %struct.cx18** %4, align 8
  %38 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %39 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %38, i32 0, i32 5
  store %struct.cx18* %37, %struct.cx18** %39, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %42 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cx18_stream_info, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %50 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @CX18_ENC_STREAM_TYPE_RAD, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %2
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @V4L2_CAP_RADIO, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %198

60:                                               ; preds = %54, %2
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @CX18_ENC_STREAM_TYPE_VBI, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %60
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @V4L2_CAP_VBI_CAPTURE, align 4
  %67 = load i32, i32* @V4L2_CAP_SLICED_VBI_CAPTURE, align 4
  %68 = or i32 %66, %67
  %69 = and i32 %65, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %198

72:                                               ; preds = %64, %60
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cx18_stream_info, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @PCI_DMA_NONE, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %98

81:                                               ; preds = %72
  %82 = load %struct.cx18*, %struct.cx18** %4, align 8
  %83 = getelementptr inbounds %struct.cx18, %struct.cx18* %82, i32 0, i32 2
  %84 = load i64*, i64** %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %81
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cx18_stream_info, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @CX18_INFO(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %96)
  store i32 0, i32* %3, align 4
  br label %198

98:                                               ; preds = %81, %72
  %99 = load %struct.cx18*, %struct.cx18** %4, align 8
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @cx18_stream_init(%struct.cx18* %99, i32 %100)
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* @CX18_ENC_STREAM_TYPE_TS, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %135

105:                                              ; preds = %98
  %106 = load %struct.cx18*, %struct.cx18** %4, align 8
  %107 = getelementptr inbounds %struct.cx18, %struct.cx18* %106, i32 0, i32 5
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @CX18_HW_DVB, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %131

114:                                              ; preds = %105
  %115 = load i32, i32* @GFP_KERNEL, align 4
  %116 = call i32* @kzalloc(i32 4, i32 %115)
  %117 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %118 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %117, i32 0, i32 4
  store i32* %116, i32** %118, align 8
  %119 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %120 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %119, i32 0, i32 4
  %121 = load i32*, i32** %120, align 8
  %122 = icmp eq i32* %121, null
  br i1 %122, label %123, label %130

123:                                              ; preds = %114
  %124 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %125 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %124, i32 0, i32 1
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 @CX18_ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %126)
  %128 = load i32, i32* @ENOMEM, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %3, align 4
  br label %198

130:                                              ; preds = %114
  br label %134

131:                                              ; preds = %105
  %132 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %133 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %132, i32 0, i32 3
  store i64 0, i64* %133, align 8
  br label %134

134:                                              ; preds = %131, %130
  br label %135

135:                                              ; preds = %134, %98
  %136 = load i32, i32* %8, align 4
  %137 = icmp eq i32 %136, -1
  br i1 %137, label %138, label %139

138:                                              ; preds = %135
  store i32 0, i32* %3, align 4
  br label %198

139:                                              ; preds = %135
  %140 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %141 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 6
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.cx18*, %struct.cx18** %4, align 8
  %145 = getelementptr inbounds %struct.cx18, %struct.cx18* %144, i32 0, i32 6
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  %148 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %149 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %148, i32 0, i32 1
  %150 = load i8*, i8** %149, align 8
  %151 = call i32 @snprintf(i32 %143, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %147, i8* %150)
  %152 = load i32, i32* %9, align 4
  %153 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %154 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  store i32 %152, i32* %155, align 8
  %156 = load %struct.cx18*, %struct.cx18** %4, align 8
  %157 = getelementptr inbounds %struct.cx18, %struct.cx18* %156, i32 0, i32 6
  %158 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %159 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 5
  store %struct.TYPE_6__* %157, %struct.TYPE_6__** %160, align 8
  %161 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %162 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 4
  store i32* @cx18_v4l2_enc_fops, i32** %163, align 8
  %164 = load i32, i32* @video_device_release_empty, align 4
  %165 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %166 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 3
  store i32 %164, i32* %167, align 4
  %168 = load %struct.cx18*, %struct.cx18** %4, align 8
  %169 = getelementptr inbounds %struct.cx18, %struct.cx18* %168, i32 0, i32 5
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @CX18_CARD_INPUT_VID_TUNER, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %184

177:                                              ; preds = %139
  %178 = load %struct.cx18*, %struct.cx18** %4, align 8
  %179 = getelementptr inbounds %struct.cx18, %struct.cx18* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %182 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 2
  store i32 %180, i32* %183, align 8
  br label %189

184:                                              ; preds = %139
  %185 = load i32, i32* @V4L2_STD_ALL, align 4
  %186 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %187 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 2
  store i32 %185, i32* %188, align 8
  br label %189

189:                                              ; preds = %184, %177
  %190 = load %struct.cx18*, %struct.cx18** %4, align 8
  %191 = getelementptr inbounds %struct.cx18, %struct.cx18* %190, i32 0, i32 3
  %192 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %193 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 1
  store i32* %191, i32** %194, align 8
  %195 = load %struct.cx18_stream*, %struct.cx18_stream** %6, align 8
  %196 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %195, i32 0, i32 2
  %197 = call i32 @cx18_set_funcs(%struct.TYPE_10__* %196)
  store i32 0, i32* %3, align 4
  br label %198

198:                                              ; preds = %189, %138, %123, %90, %71, %59
  %199 = load i32, i32* %3, align 4
  ret i32 %199
}

declare dso_local i32 @CX18_INFO(i8*, i8*) #1

declare dso_local i32 @cx18_stream_init(%struct.cx18*, i32) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @CX18_ERR(i8*, i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8*) #1

declare dso_local i32 @cx18_set_funcs(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
