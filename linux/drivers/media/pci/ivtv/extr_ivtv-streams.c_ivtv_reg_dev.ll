; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-streams.c_ivtv_reg_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-streams.c_ivtv_reg_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.ivtv = type { %struct.TYPE_6__, i32, %struct.ivtv_stream*, i64 }
%struct.TYPE_6__ = type { i32* }
%struct.ivtv_stream = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32, i32* }

@ivtv_stream_info = common dso_local global %struct.TYPE_8__* null, align 8
@IVTV_ENC_STREAM_TYPE_MPG = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_OUTPUT_OVERLAY = common dso_local global i32 0, align 4
@IVTV_DEC_STREAM_TYPE_YUV = common dso_local global i64 0, align 8
@IVTV_DEC_STREAM_TYPE_MPG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [62 x i8] c"Couldn't register v4l2 device for %s (device node number %d)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Registered device %s for %s (%d kB)\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Registered device %s for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ivtv*, i32)* @ivtv_reg_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtv_reg_dev(%struct.ivtv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ivtv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ivtv_stream*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ivtv_stream*, align 8
  store %struct.ivtv* %0, %struct.ivtv** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %12 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %11, i32 0, i32 2
  %13 = load %struct.ivtv_stream*, %struct.ivtv_stream** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %13, i64 %15
  store %struct.ivtv_stream* %16, %struct.ivtv_stream** %6, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ivtv_stream_info, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  %23 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %24 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %175

29:                                               ; preds = %2
  %30 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %31 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @IVTV_ENC_STREAM_TYPE_MPG, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %62

37:                                               ; preds = %29
  %38 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %39 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %38, i32 0, i32 2
  %40 = load %struct.ivtv_stream*, %struct.ivtv_stream** %39, align 8
  %41 = load i32, i32* @IVTV_ENC_STREAM_TYPE_MPG, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %40, i64 %42
  store %struct.ivtv_stream* %43, %struct.ivtv_stream** %10, align 8
  %44 = load %struct.ivtv_stream*, %struct.ivtv_stream** %10, align 8
  %45 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %61

49:                                               ; preds = %37
  %50 = load %struct.ivtv_stream*, %struct.ivtv_stream** %10, align 8
  %51 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ivtv_stream_info, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %53, %59
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %49, %37
  br label %62

62:                                               ; preds = %61, %29
  %63 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %64 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %67 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  store i32 %65, i32* %68, align 4
  %69 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %70 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %99

73:                                               ; preds = %62
  %74 = load i32, i32* @V4L2_CAP_VIDEO_OUTPUT_OVERLAY, align 4
  %75 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %76 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %75, i32 0, i32 2
  %77 = load %struct.ivtv_stream*, %struct.ivtv_stream** %76, align 8
  %78 = load i64, i64* @IVTV_DEC_STREAM_TYPE_YUV, align 8
  %79 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %77, i64 %78
  %80 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %74
  store i32 %83, i32* %81, align 4
  %84 = load i32, i32* @V4L2_CAP_VIDEO_OUTPUT_OVERLAY, align 4
  %85 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %86 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %85, i32 0, i32 2
  %87 = load %struct.ivtv_stream*, %struct.ivtv_stream** %86, align 8
  %88 = load i64, i64* @IVTV_DEC_STREAM_TYPE_MPG, align 8
  %89 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %87, i64 %88
  %90 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %84
  store i32 %93, i32* %91, align 4
  %94 = load i32, i32* @V4L2_CAP_VIDEO_OUTPUT_OVERLAY, align 4
  %95 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %96 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 8
  br label %99

99:                                               ; preds = %73, %62
  %100 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %101 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %100, i32 0, i32 1
  %102 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %103 = call i32 @video_set_drvdata(%struct.TYPE_7__* %101, %struct.ivtv_stream* %102)
  %104 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %105 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %104, i32 0, i32 1
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %9, align 4
  %108 = call i64 @video_register_device_no_warn(%struct.TYPE_7__* %105, i32 %106, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %99
  %111 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %112 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = call i32 @IVTV_ERR(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %113, i32 %114)
  %116 = load i32, i32* @ENOMEM, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %3, align 4
  br label %175

118:                                              ; preds = %99
  %119 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %120 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %119, i32 0, i32 1
  %121 = call i8* @video_device_node_name(%struct.TYPE_7__* %120)
  store i8* %121, i8** %8, align 8
  %122 = load i32, i32* %7, align 4
  switch i32 %122, label %174 [
    i32 130, label %123
    i32 129, label %137
    i32 128, label %143
  ]

123:                                              ; preds = %118
  %124 = load i8*, i8** %8, align 8
  %125 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %126 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %129 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %5, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = call i32 (i8*, i8*, i32, ...) @IVTV_INFO(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %124, i32 %127, i32 %135)
  br label %174

137:                                              ; preds = %118
  %138 = load i8*, i8** %8, align 8
  %139 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %140 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 (i8*, i8*, i32, ...) @IVTV_INFO(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %138, i32 %141)
  br label %174

143:                                              ; preds = %118
  %144 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %145 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %5, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %167

153:                                              ; preds = %143
  %154 = load i8*, i8** %8, align 8
  %155 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %156 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %159 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %5, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = call i32 (i8*, i8*, i32, ...) @IVTV_INFO(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %154, i32 %157, i32 %165)
  br label %173

167:                                              ; preds = %143
  %168 = load i8*, i8** %8, align 8
  %169 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %170 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = call i32 (i8*, i8*, i32, ...) @IVTV_INFO(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %168, i32 %171)
  br label %173

173:                                              ; preds = %167, %153
  br label %174

174:                                              ; preds = %118, %173, %137, %123
  store i32 0, i32* %3, align 4
  br label %175

175:                                              ; preds = %174, %110, %28
  %176 = load i32, i32* %3, align 4
  ret i32 %176
}

declare dso_local i32 @video_set_drvdata(%struct.TYPE_7__*, %struct.ivtv_stream*) #1

declare dso_local i64 @video_register_device_no_warn(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @IVTV_ERR(i8*, i32, i32) #1

declare dso_local i8* @video_device_node_name(%struct.TYPE_7__*) #1

declare dso_local i32 @IVTV_INFO(i8*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
