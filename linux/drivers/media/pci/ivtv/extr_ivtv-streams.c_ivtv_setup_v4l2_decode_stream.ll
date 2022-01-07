; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-streams.c_ivtv_setup_v4l2_decode_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-streams.c_ivtv_setup_v4l2_decode_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv_stream = type { i32, %struct.TYPE_4__, %struct.ivtv* }
%struct.TYPE_4__ = type { i32* }
%struct.ivtv = type { %struct.TYPE_6__, i32, i32, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@CX2341X_MBOX_MAX_DATA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Setting some initial decoder settings\0A\00", align 1
@CX2341X_DEC_SET_AUDIO_MODE = common dso_local global i32 0, align 4
@CX2341X_DEC_SET_DISPLAY_BUFFERS = common dso_local global i32 0, align 4
@CX2341X_DEC_SET_PREBUFFERING = common dso_local global i32 0, align 4
@CX2341X_DEC_EXTRACT_VBI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Decoder VBI RE-Insert start 0x%08x size 0x%08x\0A\00", align 1
@OUT_PASSTHROUGH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Setup DEC YUV Stream data[0] = %d\0A\00", align 1
@CX2341X_DEC_SET_DECODER_SOURCE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Couldn't initialize decoder source\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"ivtv_setup_v4l2_decode_stream\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ivtv_stream*)* @ivtv_setup_v4l2_decode_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtv_setup_v4l2_decode_stream(%struct.ivtv_stream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ivtv_stream*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ivtv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ivtv_stream* %0, %struct.ivtv_stream** %3, align 8
  %11 = load i32, i32* @CX2341X_MBOX_MAX_DATA, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %4, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %5, align 8
  %15 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %16 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %15, i32 0, i32 2
  %17 = load %struct.ivtv*, %struct.ivtv** %16, align 8
  store %struct.ivtv* %17, %struct.ivtv** %6, align 8
  %18 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %19 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %106

26:                                               ; preds = %1
  %27 = call i32 (i8*, ...) @IVTV_DEBUG_INFO(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %29 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %8, align 4
  %32 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %33 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %9, align 4
  %36 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %37 = load i32, i32* @CX2341X_DEC_SET_AUDIO_MODE, align 4
  %38 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %39 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %42 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = call i64 (%struct.ivtv*, i32, i32, i32, ...) @ivtv_vapi(%struct.ivtv* %36, i32 %37, i32 2, i32 %40, i32 %43)
  %45 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %46 = load i32, i32* @CX2341X_DEC_SET_DISPLAY_BUFFERS, align 4
  %47 = call i64 (%struct.ivtv*, i32, i32, i32, ...) @ivtv_vapi(%struct.ivtv* %45, i32 %46, i32 1, i32 0)
  %48 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %49 = load i32, i32* @CX2341X_DEC_SET_PREBUFFERING, align 4
  %50 = call i64 (%struct.ivtv*, i32, i32, i32, ...) @ivtv_vapi(%struct.ivtv* %48, i32 %49, i32 1, i32 1)
  %51 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %52 = load i32, i32* @CX2341X_DEC_EXTRACT_VBI, align 4
  %53 = call i32 @ivtv_vapi_result(%struct.ivtv* %51, i32* %14, i32 %52, i32 1, i32 1)
  %54 = getelementptr inbounds i32, i32* %14, i64 0
  %55 = load i32, i32* %54, align 16
  %56 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %57 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 4
  %59 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %60 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds i32, i32* %14, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i8*, ...) @IVTV_DEBUG_INFO(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %64)
  %66 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %67 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  switch i32 %68, label %87 [
    i32 128, label %69
    i32 129, label %86
  ]

69:                                               ; preds = %26
  %70 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %71 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @OUT_PASSTHROUGH, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  store i32 1, i32* %7, align 4
  br label %83

76:                                               ; preds = %69
  store i32 2, i32* %7, align 4
  store i32 720, i32* %8, align 4
  %77 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %78 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i32 576, i32 480
  store i32 %82, i32* %9, align 4
  br label %83

83:                                               ; preds = %76, %75
  %84 = load i32, i32* %7, align 4
  %85 = call i32 (i8*, ...) @IVTV_DEBUG_INFO(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  br label %88

86:                                               ; preds = %26
  br label %87

87:                                               ; preds = %26, %86
  store i32 0, i32* %7, align 4
  br label %88

88:                                               ; preds = %87, %83
  %89 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %90 = load i32, i32* @CX2341X_DEC_SET_DECODER_SOURCE, align 4
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %9, align 4
  %94 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %95 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = call i64 (%struct.ivtv*, i32, i32, i32, ...) @ivtv_vapi(%struct.ivtv* %89, i32 %90, i32 4, i32 %91, i32 %92, i32 %93, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %88
  %101 = call i32 @IVTV_DEBUG_WARN(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %102

102:                                              ; preds = %100, %88
  %103 = call i32 @ivtv_msleep_timeout(i32 10, i32 0)
  %104 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %105 = call i32 @ivtv_firmware_check(%struct.ivtv* %104, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  store i32 %105, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %106

106:                                              ; preds = %102, %23
  %107 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %107)
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @IVTV_DEBUG_INFO(i8*, ...) #2

declare dso_local i64 @ivtv_vapi(%struct.ivtv*, i32, i32, i32, ...) #2

declare dso_local i32 @ivtv_vapi_result(%struct.ivtv*, i32*, i32, i32, i32) #2

declare dso_local i32 @IVTV_DEBUG_WARN(i8*) #2

declare dso_local i32 @ivtv_msleep_timeout(i32, i32) #2

declare dso_local i32 @ivtv_firmware_check(%struct.ivtv*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
