; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_update_profile_level_ctrls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_update_profile_level_ctrls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coda_ctx = type { %struct.TYPE_4__*, %struct.v4l2_ctrl*, %struct.v4l2_ctrl*, %struct.v4l2_ctrl*, %struct.v4l2_ctrl*, %struct.v4l2_ctrl*, %struct.v4l2_ctrl*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.v4l2_ctrl = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"H264\00", align 1
@V4L2_CID_MPEG_VIDEO_H264_PROFILE = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_H264_LEVEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"MPEG-2\00", align 1
@V4L2_CID_MPEG_VIDEO_MPEG2_PROFILE = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_MPEG2_LEVEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"MPEG-4\00", align 1
@V4L2_CID_MPEG_VIDEO_MPEG4_PROFILE = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_MPEG4_LEVEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Invalid %s profile: %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Parsed %s profile: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Invalid %s level: %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Parsed %s level: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @coda_update_profile_level_ctrls(%struct.coda_ctx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.coda_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.v4l2_ctrl*, align 8
  %10 = alloca %struct.v4l2_ctrl*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.coda_ctx* %0, %struct.coda_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %16 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %17 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %16, i32 0, i32 7
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %60 [
    i32 130, label %21
    i32 129, label %34
    i32 128, label %47
  ]

21:                                               ; preds = %3
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %22 = load i32, i32* @V4L2_CID_MPEG_VIDEO_H264_PROFILE, align 4
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* @V4L2_CID_MPEG_VIDEO_H264_LEVEL, align 4
  store i32 %23, i32* %13, align 4
  %24 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %25 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %24, i32 0, i32 6
  %26 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %25, align 8
  store %struct.v4l2_ctrl* %26, %struct.v4l2_ctrl** %9, align 8
  %27 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %28 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %27, i32 0, i32 5
  %29 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %28, align 8
  store %struct.v4l2_ctrl* %29, %struct.v4l2_ctrl** %10, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @coda_h264_profile(i32 %30)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @coda_h264_level(i32 %32)
  store i32 %33, i32* %15, align 4
  br label %61

34:                                               ; preds = %3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  %35 = load i32, i32* @V4L2_CID_MPEG_VIDEO_MPEG2_PROFILE, align 4
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* @V4L2_CID_MPEG_VIDEO_MPEG2_LEVEL, align 4
  store i32 %36, i32* %13, align 4
  %37 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %38 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %37, i32 0, i32 4
  %39 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %38, align 8
  store %struct.v4l2_ctrl* %39, %struct.v4l2_ctrl** %9, align 8
  %40 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %41 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %40, i32 0, i32 3
  %42 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %41, align 8
  store %struct.v4l2_ctrl* %42, %struct.v4l2_ctrl** %10, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @coda_mpeg2_profile(i32 %43)
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @coda_mpeg2_level(i32 %45)
  store i32 %46, i32* %15, align 4
  br label %61

47:                                               ; preds = %3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  %48 = load i32, i32* @V4L2_CID_MPEG_VIDEO_MPEG4_PROFILE, align 4
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* @V4L2_CID_MPEG_VIDEO_MPEG4_LEVEL, align 4
  store i32 %49, i32* %13, align 4
  %50 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %51 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %50, i32 0, i32 2
  %52 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %51, align 8
  store %struct.v4l2_ctrl* %52, %struct.v4l2_ctrl** %9, align 8
  %53 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %54 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %53, i32 0, i32 1
  %55 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %54, align 8
  store %struct.v4l2_ctrl* %55, %struct.v4l2_ctrl** %10, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @coda_mpeg4_profile(i32 %56)
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @coda_mpeg4_level(i32 %58)
  store i32 %59, i32* %15, align 4
  br label %61

60:                                               ; preds = %3
  br label %111

61:                                               ; preds = %47, %34, %21
  %62 = load i32, i32* %12, align 4
  %63 = call i8** @v4l2_ctrl_get_menu(i32 %62)
  store i8** %63, i8*** %7, align 8
  %64 = load i32, i32* %13, align 4
  %65 = call i8** @v4l2_ctrl_get_menu(i32 %64)
  store i8** %65, i8*** %8, align 8
  %66 = load i32, i32* %14, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %61
  %69 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %70 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i8*, i8** %11, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @v4l2_warn(i32* %72, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %73, i32 %74)
  br label %88

76:                                               ; preds = %61
  %77 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %78 = load i8*, i8** %11, align 8
  %79 = load i8**, i8*** %7, align 8
  %80 = load i32, i32* %14, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @coda_dbg(i32 1, %struct.coda_ctx* %77, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* %78, i8* %83)
  %85 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %9, align 8
  %86 = load i32, i32* %14, align 4
  %87 = call i32 @coda_update_menu_ctrl(%struct.v4l2_ctrl* %85, i32 %86)
  br label %88

88:                                               ; preds = %76, %68
  %89 = load i32, i32* %15, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %88
  %92 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %93 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i8*, i8** %11, align 8
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @v4l2_warn(i32* %95, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %96, i32 %97)
  br label %111

99:                                               ; preds = %88
  %100 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %101 = load i8*, i8** %11, align 8
  %102 = load i8**, i8*** %8, align 8
  %103 = load i32, i32* %15, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8*, i8** %102, i64 %104
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @coda_dbg(i32 1, %struct.coda_ctx* %100, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8* %101, i8* %106)
  %108 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %10, align 8
  %109 = load i32, i32* %15, align 4
  %110 = call i32 @coda_update_menu_ctrl(%struct.v4l2_ctrl* %108, i32 %109)
  br label %111

111:                                              ; preds = %60, %99, %91
  ret void
}

declare dso_local i32 @coda_h264_profile(i32) #1

declare dso_local i32 @coda_h264_level(i32) #1

declare dso_local i32 @coda_mpeg2_profile(i32) #1

declare dso_local i32 @coda_mpeg2_level(i32) #1

declare dso_local i32 @coda_mpeg4_profile(i32) #1

declare dso_local i32 @coda_mpeg4_level(i32) #1

declare dso_local i8** @v4l2_ctrl_get_menu(i32) #1

declare dso_local i32 @v4l2_warn(i32*, i8*, i8*, i32) #1

declare dso_local i32 @coda_dbg(i32, %struct.coda_ctx*, i8*, i8*, i8*) #1

declare dso_local i32 @coda_update_menu_ctrl(%struct.v4l2_ctrl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
