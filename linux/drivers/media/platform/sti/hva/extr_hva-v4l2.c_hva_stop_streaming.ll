; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-v4l2.c_hva_stop_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-v4l2.c_hva_stop_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i64 }
%struct.hva_ctx = type { i64, i32, %struct.hva_enc*, i32, %struct.TYPE_8__, i64, i64 }
%struct.hva_enc = type { i32 (%struct.hva_ctx.0*)*, i32 }
%struct.hva_ctx.0 = type opaque
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.hva_dev = type { i32, i32** }
%struct.device = type { i32 }
%struct.vb2_v4l2_buffer = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"%s %s stop streaming\0A\00", align 1
@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i64 0, align 8
@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"%s %s out=%d cap=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"%s %s encoder closed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_queue*)* @hva_stop_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hva_stop_streaming(%struct.vb2_queue* %0) #0 {
  %2 = alloca %struct.vb2_queue*, align 8
  %3 = alloca %struct.hva_ctx*, align 8
  %4 = alloca %struct.hva_dev*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.hva_enc*, align 8
  %7 = alloca %struct.vb2_v4l2_buffer*, align 8
  store %struct.vb2_queue* %0, %struct.vb2_queue** %2, align 8
  %8 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %9 = call %struct.hva_ctx* @vb2_get_drv_priv(%struct.vb2_queue* %8)
  store %struct.hva_ctx* %9, %struct.hva_ctx** %3, align 8
  %10 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %11 = call %struct.hva_dev* @ctx_to_hdev(%struct.hva_ctx* %10)
  store %struct.hva_dev* %11, %struct.hva_dev** %4, align 8
  %12 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %13 = call %struct.device* @ctx_to_dev(%struct.hva_ctx* %12)
  store %struct.device* %13, %struct.device** %5, align 8
  %14 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %15 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %14, i32 0, i32 2
  %16 = load %struct.hva_enc*, %struct.hva_enc** %15, align 8
  store %struct.hva_enc* %16, %struct.hva_enc** %6, align 8
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %19 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %22 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @to_type_str(i64 %23)
  %25 = call i32 (%struct.device*, i8*, i32, i32, ...) @dev_dbg(%struct.device* %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %24)
  %26 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %27 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %1
  %32 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %33 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %32, i32 0, i32 6
  store i64 0, i64* %33, align 8
  br label %34

34:                                               ; preds = %41, %31
  %35 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %36 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(%struct.TYPE_9__* %38)
  store %struct.vb2_v4l2_buffer* %39, %struct.vb2_v4l2_buffer** %7, align 8
  %40 = icmp ne %struct.vb2_v4l2_buffer* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %43 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  %44 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %42, i32 %43)
  br label %34

45:                                               ; preds = %34
  br label %61

46:                                               ; preds = %1
  %47 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %48 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %47, i32 0, i32 5
  store i64 0, i64* %48, align 8
  br label %49

49:                                               ; preds = %56, %46
  %50 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %51 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(%struct.TYPE_9__* %53)
  store %struct.vb2_v4l2_buffer* %54, %struct.vb2_v4l2_buffer** %7, align 8
  %55 = icmp ne %struct.vb2_v4l2_buffer* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %58 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  %59 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %57, i32 %58)
  br label %49

60:                                               ; preds = %49
  br label %61

61:                                               ; preds = %60, %45
  %62 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %63 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i64 @V4L2_TYPE_IS_OUTPUT(i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %61
  %68 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %69 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = call i64 @vb2_is_streaming(i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %91, label %76

76:                                               ; preds = %67, %61
  %77 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %78 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i64 @V4L2_TYPE_IS_OUTPUT(i64 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %115, label %82

82:                                               ; preds = %76
  %83 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %84 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = call i64 @vb2_is_streaming(i32* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %115

91:                                               ; preds = %82, %67
  %92 = load %struct.device*, %struct.device** %5, align 8
  %93 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %94 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %97 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @to_type_str(i64 %98)
  %100 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %101 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = call i64 @vb2_is_streaming(i32* %105)
  %107 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %108 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %107, i32 0, i32 4
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = call i64 @vb2_is_streaming(i32* %112)
  %114 = call i32 (%struct.device*, i8*, i32, i32, ...) @dev_dbg(%struct.device* %92, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %95, i32 %99, i64 %106, i64 %113)
  br label %149

115:                                              ; preds = %82, %76
  %116 = load %struct.hva_enc*, %struct.hva_enc** %6, align 8
  %117 = icmp ne %struct.hva_enc* %116, null
  br i1 %117, label %118, label %146

118:                                              ; preds = %115
  %119 = load %struct.device*, %struct.device** %5, align 8
  %120 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %121 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.hva_enc*, %struct.hva_enc** %6, align 8
  %124 = getelementptr inbounds %struct.hva_enc, %struct.hva_enc* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = call i32 (%struct.device*, i8*, i32, i32, ...) @dev_dbg(%struct.device* %119, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %122, i32 %125)
  %127 = load %struct.hva_enc*, %struct.hva_enc** %6, align 8
  %128 = getelementptr inbounds %struct.hva_enc, %struct.hva_enc* %127, i32 0, i32 0
  %129 = load i32 (%struct.hva_ctx.0*)*, i32 (%struct.hva_ctx.0*)** %128, align 8
  %130 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %131 = bitcast %struct.hva_ctx* %130 to %struct.hva_ctx.0*
  %132 = call i32 %129(%struct.hva_ctx.0* %131)
  %133 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %134 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %133, i32 0, i32 2
  store %struct.hva_enc* null, %struct.hva_enc** %134, align 8
  %135 = load %struct.hva_dev*, %struct.hva_dev** %4, align 8
  %136 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %135, i32 0, i32 1
  %137 = load i32**, i32*** %136, align 8
  %138 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %139 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds i32*, i32** %137, i64 %140
  store i32* null, i32** %141, align 8
  %142 = load %struct.hva_dev*, %struct.hva_dev** %4, align 8
  %143 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = add nsw i32 %144, -1
  store i32 %145, i32* %143, align 8
  br label %146

146:                                              ; preds = %118, %115
  %147 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %148 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %147, i32 0, i32 1
  store i32 0, i32* %148, align 8
  br label %149

149:                                              ; preds = %146, %91
  ret void
}

declare dso_local %struct.hva_ctx* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local %struct.hva_dev* @ctx_to_hdev(%struct.hva_ctx*) #1

declare dso_local %struct.device* @ctx_to_dev(%struct.hva_ctx*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, ...) #1

declare dso_local i32 @to_type_str(i64) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(%struct.TYPE_9__*) #1

declare dso_local i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer*, i32) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(%struct.TYPE_9__*) #1

declare dso_local i64 @V4L2_TYPE_IS_OUTPUT(i64) #1

declare dso_local i64 @vb2_is_streaming(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
