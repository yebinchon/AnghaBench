; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-bit.c_coda_bitstream_try_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-bit.c_coda_bitstream_try_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coda_ctx = type { i64, i32, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.vb2_v4l2_buffer = type { i32, i64, i32 }

@.str = private unnamed_addr constant [30 x i8] c"trying to queue empty buffer\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"pad with %u-byte header\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"bitstream buffer overflow\0A\00", align 1
@CODA_960 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [60 x i8] c"could not parse header, sequence initialization might fail\0A\00", align 1
@V4L2_PIX_FMT_H264 = common dso_local global i64 0, align 8
@V4L2_BUF_FLAG_LAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.coda_ctx*, %struct.vb2_v4l2_buffer*)* @coda_bitstream_try_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coda_bitstream_try_queue(%struct.coda_ctx* %0, %struct.vb2_v4l2_buffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.coda_ctx*, align 8
  %5 = alloca %struct.vb2_v4l2_buffer*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.coda_ctx* %0, %struct.coda_ctx** %4, align 8
  store %struct.vb2_v4l2_buffer* %1, %struct.vb2_v4l2_buffer** %5, align 8
  %11 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %12 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %11, i32 0, i32 2
  %13 = call i64 @vb2_get_plane_payload(i32* %12, i32 0)
  store i64 %13, i64* %6, align 8
  %14 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %15 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %14, i32 0, i32 2
  %16 = call i32* @vb2_plane_vaddr(i32* %15, i32 0)
  store i32* %16, i32** %7, align 8
  %17 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %18 = call i64 @coda_get_bitstream_payload(%struct.coda_ctx* %17)
  %19 = load i64, i64* %6, align 8
  %20 = add i64 %18, %19
  %21 = add i64 %20, 512
  %22 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %23 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp uge i64 %21, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %163

28:                                               ; preds = %2
  %29 = load i32*, i32** %7, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %28
  %32 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %33 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %32, i32 0, i32 2
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = call i32 @v4l2_err(i32* %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %163

37:                                               ; preds = %28
  %38 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %39 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %97

42:                                               ; preds = %37
  %43 = load i64, i64* %6, align 8
  %44 = icmp ult i64 %43, 512
  br i1 %44, label %45, label %97

45:                                               ; preds = %42
  %46 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %47 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %48 = load i64, i64* %6, align 8
  %49 = call i64 @coda_buffer_parse_headers(%struct.coda_ctx* %46, %struct.vb2_v4l2_buffer* %47, i64 %48)
  store i64 %49, i64* %10, align 8
  %50 = load i64, i64* %10, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %93

52:                                               ; preds = %45
  %53 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %54 = load i64, i64* %10, align 8
  %55 = call i32 (i32, %struct.coda_ctx*, i8*, ...) @coda_dbg(i32 1, %struct.coda_ctx* %53, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %54)
  %56 = load i64, i64* %6, align 8
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %86, %52
  %59 = load i32, i32* %9, align 4
  %60 = icmp slt i32 %59, 512
  br i1 %60, label %61, label %92

61:                                               ; preds = %58
  %62 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = load i64, i64* %10, align 8
  %65 = call i32 @coda_bitstream_queue(%struct.coda_ctx* %62, i32* %63, i64 %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %61
  %69 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %70 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %69, i32 0, i32 2
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = call i32 @v4l2_err(i32* %72, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %163

74:                                               ; preds = %61
  %75 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %76 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %75, i32 0, i32 2
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @CODA_960, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %74
  br label %92

85:                                               ; preds = %74
  br label %86

86:                                               ; preds = %85
  %87 = load i64, i64* %10, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = add i64 %89, %87
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %9, align 4
  br label %58

92:                                               ; preds = %84, %58
  br label %96

93:                                               ; preds = %45
  %94 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %95 = call i32 (i32, %struct.coda_ctx*, i8*, ...) @coda_dbg(i32 1, %struct.coda_ctx* %94, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0))
  br label %96

96:                                               ; preds = %93, %92
  br label %97

97:                                               ; preds = %96, %42, %37
  %98 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %99 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %119

102:                                              ; preds = %97
  %103 = load i64, i64* %6, align 8
  %104 = icmp ult i64 %103, 512
  br i1 %104, label %105, label %119

105:                                              ; preds = %102
  %106 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %107 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %106, i32 0, i32 3
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @V4L2_PIX_FMT_H264, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %105
  %114 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %115 = load i64, i64* %6, align 8
  %116 = sub i64 512, %115
  %117 = trunc i64 %116 to i32
  %118 = call i32 @coda_h264_bitstream_pad(%struct.coda_ctx* %114, i32 %117)
  br label %119

119:                                              ; preds = %113, %105, %102, %97
  %120 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %121 = load i32*, i32** %7, align 8
  %122 = load i64, i64* %6, align 8
  %123 = call i32 @coda_bitstream_queue(%struct.coda_ctx* %120, i32* %121, i64 %122)
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* %8, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %119
  %127 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %128 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %127, i32 0, i32 2
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 1
  %131 = call i32 @v4l2_err(i32* %130, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %163

132:                                              ; preds = %119
  %133 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %134 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %135, 1
  store i64 %136, i64* %134, align 8
  %137 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %138 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %137, i32 0, i32 1
  store i64 %135, i64* %138, align 8
  %139 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %140 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %141 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %140, i32 0, i32 2
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call %struct.coda_ctx* @v4l2_m2m_get_curr_priv(i32 %144)
  %146 = icmp eq %struct.coda_ctx* %139, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %132
  %148 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %149 = call i32 @coda_kfifo_sync_to_device_write(%struct.coda_ctx* %148)
  br label %150

150:                                              ; preds = %147, %132
  %151 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %152 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @V4L2_BUF_FLAG_LAST, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %150
  %158 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %159 = call i32 @coda_bit_stream_end_flag(%struct.coda_ctx* %158)
  br label %160

160:                                              ; preds = %157, %150
  %161 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %162 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %161, i32 0, i32 1
  store i32 0, i32* %162, align 8
  store i32 1, i32* %3, align 4
  br label %163

163:                                              ; preds = %160, %126, %68, %31, %27
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

declare dso_local i64 @vb2_get_plane_payload(i32*, i32) #1

declare dso_local i32* @vb2_plane_vaddr(i32*, i32) #1

declare dso_local i64 @coda_get_bitstream_payload(%struct.coda_ctx*) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

declare dso_local i64 @coda_buffer_parse_headers(%struct.coda_ctx*, %struct.vb2_v4l2_buffer*, i64) #1

declare dso_local i32 @coda_dbg(i32, %struct.coda_ctx*, i8*, ...) #1

declare dso_local i32 @coda_bitstream_queue(%struct.coda_ctx*, i32*, i64) #1

declare dso_local i32 @coda_h264_bitstream_pad(%struct.coda_ctx*, i32) #1

declare dso_local %struct.coda_ctx* @v4l2_m2m_get_curr_priv(i32) #1

declare dso_local i32 @coda_kfifo_sync_to_device_write(%struct.coda_ctx*) #1

declare dso_local i32 @coda_bit_stream_end_flag(%struct.coda_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
