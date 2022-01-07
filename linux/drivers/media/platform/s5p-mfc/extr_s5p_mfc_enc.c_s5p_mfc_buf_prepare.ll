; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_enc.c_s5p_mfc_buf_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_enc.c_s5p_mfc_buf_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { %struct.vb2_queue* }
%struct.vb2_queue = type { i64, i32 }
%struct.s5p_mfc_ctx = type { i64, i64, i64, i32, i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"plane size: %ld, dst size: %zu\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"plane size is too small for capture\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"plane size: %ld, luma size: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"plane size: %ld, chroma size: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"plane size is too small for output\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"invalid queue type: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_buffer*)* @s5p_mfc_buf_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_mfc_buf_prepare(%struct.vb2_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vb2_buffer*, align 8
  %4 = alloca %struct.vb2_queue*, align 8
  %5 = alloca %struct.s5p_mfc_ctx*, align 8
  %6 = alloca i32, align 4
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %3, align 8
  %7 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %8 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %7, i32 0, i32 0
  %9 = load %struct.vb2_queue*, %struct.vb2_queue** %8, align 8
  store %struct.vb2_queue* %9, %struct.vb2_queue** %4, align 8
  %10 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %11 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.s5p_mfc_ctx* @fh_to_ctx(i32 %12)
  store %struct.s5p_mfc_ctx* %13, %struct.s5p_mfc_ctx** %5, align 8
  %14 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %15 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %47

19:                                               ; preds = %1
  %20 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %5, align 8
  %21 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %24 = call i32 @check_vb_with_fmt(i32 %22, %struct.vb2_buffer* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %2, align 4
  br label %103

29:                                               ; preds = %19
  %30 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %31 = call i64 @vb2_plane_size(%struct.vb2_buffer* %30, i32 0)
  %32 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %5, align 8
  %33 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @mfc_debug(i32 2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %31, i64 %34)
  %36 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %37 = call i64 @vb2_plane_size(%struct.vb2_buffer* %36, i32 0)
  %38 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %5, align 8
  %39 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %37, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %29
  %43 = call i32 (i8*, ...) @mfc_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %103

46:                                               ; preds = %29
  br label %102

47:                                               ; preds = %1
  %48 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %49 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %94

53:                                               ; preds = %47
  %54 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %5, align 8
  %55 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %58 = call i32 @check_vb_with_fmt(i32 %56, %struct.vb2_buffer* %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %2, align 4
  br label %103

63:                                               ; preds = %53
  %64 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %65 = call i64 @vb2_plane_size(%struct.vb2_buffer* %64, i32 0)
  %66 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %5, align 8
  %67 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @mfc_debug(i32 2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %65, i64 %68)
  %70 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %71 = call i64 @vb2_plane_size(%struct.vb2_buffer* %70, i32 1)
  %72 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %5, align 8
  %73 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @mfc_debug(i32 2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i64 %71, i64 %74)
  %76 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %77 = call i64 @vb2_plane_size(%struct.vb2_buffer* %76, i32 0)
  %78 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %5, align 8
  %79 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp slt i64 %77, %80
  br i1 %81, label %89, label %82

82:                                               ; preds = %63
  %83 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %84 = call i64 @vb2_plane_size(%struct.vb2_buffer* %83, i32 1)
  %85 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %5, align 8
  %86 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp slt i64 %84, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %82, %63
  %90 = call i32 (i8*, ...) @mfc_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %2, align 4
  br label %103

93:                                               ; preds = %82
  br label %101

94:                                               ; preds = %47
  %95 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %96 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i32 (i8*, ...) @mfc_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i64 %97)
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %2, align 4
  br label %103

101:                                              ; preds = %93
  br label %102

102:                                              ; preds = %101, %46
  store i32 0, i32* %2, align 4
  br label %103

103:                                              ; preds = %102, %94, %89, %61, %42, %27
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local %struct.s5p_mfc_ctx* @fh_to_ctx(i32) #1

declare dso_local i32 @check_vb_with_fmt(i32, %struct.vb2_buffer*) #1

declare dso_local i32 @mfc_debug(i32, i8*, i64, i64) #1

declare dso_local i64 @vb2_plane_size(%struct.vb2_buffer*, i32) #1

declare dso_local i32 @mfc_err(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
