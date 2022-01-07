; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-v4l2.c_hva_start_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-v4l2.c_hva_start_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i64 }
%struct.hva_ctx = type { i32, i32, %struct.TYPE_12__, i32, %struct.TYPE_11__, %struct.TYPE_10__, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.hva_dev = type { i32, %struct.hva_ctx** }
%struct.device = type { i32 }
%struct.vb2_v4l2_buffer = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"%s %s start streaming\0A\00", align 1
@HVA_MAX_INSTANCES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"%s maximum instances reached\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i64 0, align 8
@VB2_BUF_STATE_QUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32)* @hva_start_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hva_start_streaming(%struct.vb2_queue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vb2_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hva_ctx*, align 8
  %7 = alloca %struct.hva_dev*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.vb2_v4l2_buffer*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %14 = call %struct.hva_ctx* @vb2_get_drv_priv(%struct.vb2_queue* %13)
  store %struct.hva_ctx* %14, %struct.hva_ctx** %6, align 8
  %15 = load %struct.hva_ctx*, %struct.hva_ctx** %6, align 8
  %16 = call %struct.hva_dev* @ctx_to_hdev(%struct.hva_ctx* %15)
  store %struct.hva_dev* %16, %struct.hva_dev** %7, align 8
  %17 = load %struct.hva_ctx*, %struct.hva_ctx** %6, align 8
  %18 = call %struct.device* @ctx_to_dev(%struct.hva_ctx* %17)
  store %struct.device* %18, %struct.device** %8, align 8
  store i32 0, i32* %12, align 4
  %19 = load %struct.device*, %struct.device** %8, align 8
  %20 = load %struct.hva_ctx*, %struct.hva_ctx** %6, align 8
  %21 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %24 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @to_type_str(i64 %25)
  %27 = call i32 @dev_dbg(%struct.device* %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %26)
  %28 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %29 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @V4L2_TYPE_IS_OUTPUT(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %2
  %34 = load %struct.hva_ctx*, %struct.hva_ctx** %6, align 8
  %35 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = call i32 @vb2_start_streaming_called(i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %173

43:                                               ; preds = %33
  br label %55

44:                                               ; preds = %2
  %45 = load %struct.hva_ctx*, %struct.hva_ctx** %6, align 8
  %46 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = call i32 @vb2_start_streaming_called(i32* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %173

54:                                               ; preds = %44
  br label %55

55:                                               ; preds = %54, %43
  store i32 0, i32* %11, align 4
  br label %56

56:                                               ; preds = %81, %55
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @HVA_MAX_INSTANCES, align 4
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %60, label %84

60:                                               ; preds = %56
  %61 = load %struct.hva_dev*, %struct.hva_dev** %7, align 8
  %62 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %61, i32 0, i32 1
  %63 = load %struct.hva_ctx**, %struct.hva_ctx*** %62, align 8
  %64 = load i32, i32* %11, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.hva_ctx*, %struct.hva_ctx** %63, i64 %65
  %67 = load %struct.hva_ctx*, %struct.hva_ctx** %66, align 8
  %68 = icmp ne %struct.hva_ctx* %67, null
  br i1 %68, label %80, label %69

69:                                               ; preds = %60
  %70 = load %struct.hva_ctx*, %struct.hva_ctx** %6, align 8
  %71 = load %struct.hva_dev*, %struct.hva_dev** %7, align 8
  %72 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %71, i32 0, i32 1
  %73 = load %struct.hva_ctx**, %struct.hva_ctx*** %72, align 8
  %74 = load i32, i32* %11, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.hva_ctx*, %struct.hva_ctx** %73, i64 %75
  store %struct.hva_ctx* %70, %struct.hva_ctx** %76, align 8
  %77 = load i32, i32* %11, align 4
  %78 = load %struct.hva_ctx*, %struct.hva_ctx** %6, align 8
  %79 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  store i32 1, i32* %12, align 4
  br label %84

80:                                               ; preds = %60
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %11, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %11, align 4
  br label %56

84:                                               ; preds = %69, %56
  %85 = load i32, i32* %12, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %95, label %87

87:                                               ; preds = %84
  %88 = load %struct.device*, %struct.device** %8, align 8
  %89 = load %struct.hva_ctx*, %struct.hva_ctx** %6, align 8
  %90 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @dev_err(%struct.device* %88, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %10, align 4
  br label %135

95:                                               ; preds = %84
  %96 = load %struct.hva_dev*, %struct.hva_dev** %7, align 8
  %97 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 8
  %100 = load %struct.hva_ctx*, %struct.hva_ctx** %6, align 8
  %101 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %121, label %104

104:                                              ; preds = %95
  %105 = load %struct.hva_ctx*, %struct.hva_ctx** %6, align 8
  %106 = load %struct.hva_ctx*, %struct.hva_ctx** %6, align 8
  %107 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %106, i32 0, i32 5
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.hva_ctx*, %struct.hva_ctx** %6, align 8
  %111 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.hva_ctx*, %struct.hva_ctx** %6, align 8
  %115 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %114, i32 0, i32 3
  %116 = call i32 @hva_open_encoder(%struct.hva_ctx* %105, i32 %109, i32 %113, i32* %115)
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* %10, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %104
  br label %122

120:                                              ; preds = %104
  br label %121

121:                                              ; preds = %120, %95
  store i32 0, i32* %3, align 4
  br label %173

122:                                              ; preds = %119
  %123 = load %struct.hva_dev*, %struct.hva_dev** %7, align 8
  %124 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %123, i32 0, i32 1
  %125 = load %struct.hva_ctx**, %struct.hva_ctx*** %124, align 8
  %126 = load %struct.hva_ctx*, %struct.hva_ctx** %6, align 8
  %127 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds %struct.hva_ctx*, %struct.hva_ctx** %125, i64 %129
  store %struct.hva_ctx* null, %struct.hva_ctx** %130, align 8
  %131 = load %struct.hva_dev*, %struct.hva_dev** %7, align 8
  %132 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = add nsw i32 %133, -1
  store i32 %134, i32* %132, align 8
  br label %135

135:                                              ; preds = %122, %87
  %136 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %137 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %154

141:                                              ; preds = %135
  br label %142

142:                                              ; preds = %149, %141
  %143 = load %struct.hva_ctx*, %struct.hva_ctx** %6, align 8
  %144 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %145, align 8
  %147 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(%struct.TYPE_13__* %146)
  store %struct.vb2_v4l2_buffer* %147, %struct.vb2_v4l2_buffer** %9, align 8
  %148 = icmp ne %struct.vb2_v4l2_buffer* %147, null
  br i1 %148, label %149, label %153

149:                                              ; preds = %142
  %150 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %9, align 8
  %151 = load i32, i32* @VB2_BUF_STATE_QUEUED, align 4
  %152 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %150, i32 %151)
  br label %142

153:                                              ; preds = %142
  br label %167

154:                                              ; preds = %135
  br label %155

155:                                              ; preds = %162, %154
  %156 = load %struct.hva_ctx*, %struct.hva_ctx** %6, align 8
  %157 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %158, align 8
  %160 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(%struct.TYPE_13__* %159)
  store %struct.vb2_v4l2_buffer* %160, %struct.vb2_v4l2_buffer** %9, align 8
  %161 = icmp ne %struct.vb2_v4l2_buffer* %160, null
  br i1 %161, label %162, label %166

162:                                              ; preds = %155
  %163 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %9, align 8
  %164 = load i32, i32* @VB2_BUF_STATE_QUEUED, align 4
  %165 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %163, i32 %164)
  br label %155

166:                                              ; preds = %155
  br label %167

167:                                              ; preds = %166, %153
  %168 = load %struct.hva_ctx*, %struct.hva_ctx** %6, align 8
  %169 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %169, align 4
  %172 = load i32, i32* %10, align 4
  store i32 %172, i32* %3, align 4
  br label %173

173:                                              ; preds = %167, %121, %53, %42
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local %struct.hva_ctx* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local %struct.hva_dev* @ctx_to_hdev(%struct.hva_ctx*) #1

declare dso_local %struct.device* @ctx_to_dev(%struct.hva_ctx*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @to_type_str(i64) #1

declare dso_local i64 @V4L2_TYPE_IS_OUTPUT(i64) #1

declare dso_local i32 @vb2_start_streaming_called(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @hva_open_encoder(%struct.hva_ctx*, i32, i32, i32*) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(%struct.TYPE_13__*) #1

declare dso_local i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer*, i32) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
