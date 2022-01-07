; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-mdp/extr_mtk_mdp_m2m.c_mtk_mdp_m2m_g_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-mdp/extr_mtk_mdp_m2m.c_mtk_mdp_m2m_g_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_selection = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.mtk_mdp_frame = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.mtk_mdp_ctx = type { i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"[%d] invalid type:%d,%u\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_selection*)* @mtk_mdp_m2m_g_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_mdp_m2m_g_selection(%struct.file* %0, i8* %1, %struct.v4l2_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_selection*, align 8
  %8 = alloca %struct.mtk_mdp_frame*, align 8
  %9 = alloca %struct.mtk_mdp_ctx*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_selection* %2, %struct.v4l2_selection** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call %struct.mtk_mdp_ctx* @fh_to_ctx(i8* %11)
  store %struct.mtk_mdp_ctx* %12, %struct.mtk_mdp_ctx** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %3
  %19 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @mtk_mdp_is_target_compose(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 1, i32* %10, align 4
  br label %25

25:                                               ; preds = %24, %18
  br label %41

26:                                               ; preds = %3
  %27 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %26
  %33 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @mtk_mdp_is_target_crop(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 1, i32* %10, align 4
  br label %39

39:                                               ; preds = %38, %32
  br label %40

40:                                               ; preds = %39, %26
  br label %41

41:                                               ; preds = %40, %25
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %57, label %44

44:                                               ; preds = %41
  %45 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %9, align 8
  %46 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %49 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %52 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @mtk_mdp_dbg(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %50, i32 %53)
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %117

57:                                               ; preds = %41
  %58 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %9, align 8
  %59 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %60 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call %struct.mtk_mdp_frame* @mtk_mdp_ctx_get_frame(%struct.mtk_mdp_ctx* %58, i32 %61)
  store %struct.mtk_mdp_frame* %62, %struct.mtk_mdp_frame** %8, align 8
  %63 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %64 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  switch i32 %65, label %114 [
    i32 131, label %66
    i32 132, label %66
    i32 129, label %66
    i32 128, label %66
    i32 133, label %85
    i32 130, label %85
  ]

66:                                               ; preds = %57, %57, %57, %57
  %67 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %68 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 3
  store i32 0, i32* %69, align 4
  %70 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %71 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  store i32 0, i32* %72, align 4
  %73 = load %struct.mtk_mdp_frame*, %struct.mtk_mdp_frame** %8, align 8
  %74 = getelementptr inbounds %struct.mtk_mdp_frame, %struct.mtk_mdp_frame* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %77 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  store i32 %75, i32* %78, align 4
  %79 = load %struct.mtk_mdp_frame*, %struct.mtk_mdp_frame** %8, align 8
  %80 = getelementptr inbounds %struct.mtk_mdp_frame, %struct.mtk_mdp_frame* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %83 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  store i32 %81, i32* %84, align 4
  store i32 0, i32* %4, align 4
  br label %117

85:                                               ; preds = %57, %57
  %86 = load %struct.mtk_mdp_frame*, %struct.mtk_mdp_frame** %8, align 8
  %87 = getelementptr inbounds %struct.mtk_mdp_frame, %struct.mtk_mdp_frame* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %91 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 3
  store i32 %89, i32* %92, align 4
  %93 = load %struct.mtk_mdp_frame*, %struct.mtk_mdp_frame** %8, align 8
  %94 = getelementptr inbounds %struct.mtk_mdp_frame, %struct.mtk_mdp_frame* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %98 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 2
  store i32 %96, i32* %99, align 4
  %100 = load %struct.mtk_mdp_frame*, %struct.mtk_mdp_frame** %8, align 8
  %101 = getelementptr inbounds %struct.mtk_mdp_frame, %struct.mtk_mdp_frame* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %105 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  store i32 %103, i32* %106, align 4
  %107 = load %struct.mtk_mdp_frame*, %struct.mtk_mdp_frame** %8, align 8
  %108 = getelementptr inbounds %struct.mtk_mdp_frame, %struct.mtk_mdp_frame* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %112 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  store i32 %110, i32* %113, align 4
  store i32 0, i32* %4, align 4
  br label %117

114:                                              ; preds = %57
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %114, %85, %66, %44
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local %struct.mtk_mdp_ctx* @fh_to_ctx(i8*) #1

declare dso_local i64 @mtk_mdp_is_target_compose(i32) #1

declare dso_local i64 @mtk_mdp_is_target_crop(i32) #1

declare dso_local i32 @mtk_mdp_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local %struct.mtk_mdp_frame* @mtk_mdp_ctx_get_frame(%struct.mtk_mdp_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
