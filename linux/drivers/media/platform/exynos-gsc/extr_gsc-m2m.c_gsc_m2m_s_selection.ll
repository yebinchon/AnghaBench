; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-m2m.c_gsc_m2m_s_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-m2m.c_gsc_m2m_s_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_selection = type { i64, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.gsc_frame = type { %struct.TYPE_9__ }
%struct.gsc_ctx = type { i32, %struct.TYPE_8__, %struct.gsc_frame, %struct.gsc_frame, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.gsc_variant* }
%struct.gsc_variant = type { i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_SEL_FLAG_LE = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@V4L2_SEL_FLAG_GE = common dso_local global i32 0, align 4
@GSC_DST_FMT = common dso_local global i32 0, align 4
@GSC_SRC_FMT = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"Out of scaler range\00", align 1
@GSC_PARAMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_selection*)* @gsc_m2m_s_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gsc_m2m_s_selection(%struct.file* %0, i8* %1, %struct.v4l2_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_selection*, align 8
  %8 = alloca %struct.gsc_frame*, align 8
  %9 = alloca %struct.gsc_ctx*, align 8
  %10 = alloca %struct.gsc_variant*, align 8
  %11 = alloca %struct.v4l2_selection, align 8
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_selection* %2, %struct.v4l2_selection** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call %struct.gsc_ctx* @fh_to_ctx(i8* %13)
  store %struct.gsc_ctx* %14, %struct.gsc_ctx** %9, align 8
  %15 = load %struct.gsc_ctx*, %struct.gsc_ctx** %9, align 8
  %16 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %15, i32 0, i32 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.gsc_variant*, %struct.gsc_variant** %18, align 8
  store %struct.gsc_variant* %19, %struct.gsc_variant** %10, align 8
  %20 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %21 = bitcast %struct.v4l2_selection* %11 to i8*
  %22 = bitcast %struct.v4l2_selection* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 24, i1 false)
  %23 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %3
  %29 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %180

37:                                               ; preds = %28, %3
  %38 = load %struct.gsc_ctx*, %struct.gsc_ctx** %9, align 8
  %39 = call i32 @gsc_try_selection(%struct.gsc_ctx* %38, %struct.v4l2_selection* %11)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %4, align 4
  br label %180

44:                                               ; preds = %37
  %45 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @V4L2_SEL_FLAG_LE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %11, i32 0, i32 3
  %53 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %54 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %53, i32 0, i32 3
  %55 = call i32 @is_rectangle_enclosed(%struct.TYPE_9__* %52, %struct.TYPE_9__* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %51
  %58 = load i32, i32* @ERANGE, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %180

60:                                               ; preds = %51, %44
  %61 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %62 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @V4L2_SEL_FLAG_GE, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %60
  %68 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %69 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %11, i32 0, i32 3
  %71 = call i32 @is_rectangle_enclosed(%struct.TYPE_9__* %69, %struct.TYPE_9__* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %67
  %74 = load i32, i32* @ERANGE, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %180

76:                                               ; preds = %67, %60
  %77 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %78 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %11, i32 0, i32 3
  %80 = bitcast %struct.TYPE_9__* %78 to i8*
  %81 = bitcast %struct.TYPE_9__* %79 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %80, i8* align 8 %81, i64 8, i1 false)
  %82 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %83 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  switch i32 %84, label %91 [
    i32 132, label %85
    i32 131, label %85
    i32 133, label %85
    i32 129, label %88
    i32 130, label %88
    i32 128, label %88
  ]

85:                                               ; preds = %76, %76, %76
  %86 = load %struct.gsc_ctx*, %struct.gsc_ctx** %9, align 8
  %87 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %86, i32 0, i32 2
  store %struct.gsc_frame* %87, %struct.gsc_frame** %8, align 8
  br label %94

88:                                               ; preds = %76, %76, %76
  %89 = load %struct.gsc_ctx*, %struct.gsc_ctx** %9, align 8
  %90 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %89, i32 0, i32 3
  store %struct.gsc_frame* %90, %struct.gsc_frame** %8, align 8
  br label %94

91:                                               ; preds = %76
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %4, align 4
  br label %180

94:                                               ; preds = %88, %85
  %95 = load i32, i32* @GSC_DST_FMT, align 4
  %96 = load i32, i32* @GSC_SRC_FMT, align 4
  %97 = or i32 %95, %96
  %98 = load %struct.gsc_ctx*, %struct.gsc_ctx** %9, align 8
  %99 = call i64 @gsc_ctx_state_is_set(i32 %97, %struct.gsc_ctx* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %171

101:                                              ; preds = %94
  %102 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %103 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %135

107:                                              ; preds = %101
  %108 = load %struct.gsc_variant*, %struct.gsc_variant** %10, align 8
  %109 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %11, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %11, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.gsc_ctx*, %struct.gsc_ctx** %9, align 8
  %116 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.gsc_ctx*, %struct.gsc_ctx** %9, align 8
  %121 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.gsc_ctx*, %struct.gsc_ctx** %9, align 8
  %126 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.gsc_ctx*, %struct.gsc_ctx** %9, align 8
  %132 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @gsc_check_scaler_ratio(%struct.gsc_variant* %108, i32 %111, i32 %114, i32 %119, i32 %124, i32 %130, i32 %133)
  store i32 %134, i32* %12, align 4
  br label %163

135:                                              ; preds = %101
  %136 = load %struct.gsc_variant*, %struct.gsc_variant** %10, align 8
  %137 = load %struct.gsc_ctx*, %struct.gsc_ctx** %9, align 8
  %138 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.gsc_ctx*, %struct.gsc_ctx** %9, align 8
  %143 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %11, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %11, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.gsc_ctx*, %struct.gsc_ctx** %9, align 8
  %154 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.gsc_ctx*, %struct.gsc_ctx** %9, align 8
  %160 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @gsc_check_scaler_ratio(%struct.gsc_variant* %136, i32 %141, i32 %146, i32 %149, i32 %152, i32 %158, i32 %161)
  store i32 %162, i32* %12, align 4
  br label %163

163:                                              ; preds = %135, %107
  %164 = load i32, i32* %12, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %163
  %167 = call i32 @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %168 = load i32, i32* @EINVAL, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %4, align 4
  br label %180

170:                                              ; preds = %163
  br label %171

171:                                              ; preds = %170, %94
  %172 = load %struct.gsc_frame*, %struct.gsc_frame** %8, align 8
  %173 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %11, i32 0, i32 3
  %175 = bitcast %struct.TYPE_9__* %173 to i8*
  %176 = bitcast %struct.TYPE_9__* %174 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %175, i8* align 8 %176, i64 8, i1 false)
  %177 = load i32, i32* @GSC_PARAMS, align 4
  %178 = load %struct.gsc_ctx*, %struct.gsc_ctx** %9, align 8
  %179 = call i32 @gsc_ctx_state_lock_set(i32 %177, %struct.gsc_ctx* %178)
  store i32 0, i32* %4, align 4
  br label %180

180:                                              ; preds = %171, %166, %91, %73, %57, %42, %34
  %181 = load i32, i32* %4, align 4
  ret i32 %181
}

declare dso_local %struct.gsc_ctx* @fh_to_ctx(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @gsc_try_selection(%struct.gsc_ctx*, %struct.v4l2_selection*) #1

declare dso_local i32 @is_rectangle_enclosed(%struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local i64 @gsc_ctx_state_is_set(i32, %struct.gsc_ctx*) #1

declare dso_local i32 @gsc_check_scaler_ratio(%struct.gsc_variant*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @gsc_ctx_state_lock_set(i32, %struct.gsc_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
