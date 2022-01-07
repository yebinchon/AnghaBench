; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-mdp/extr_mtk_mdp_m2m.c_mtk_mdp_set_default_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-mdp/extr_mtk_mdp_m2m.c_mtk_mdp_set_default_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_mdp_ctx = type { %struct.mtk_mdp_dev* }
%struct.mtk_mdp_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.mtk_mdp_frame = type { i32, i32, i32*, i8* }

@V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_mdp_ctx*)* @mtk_mdp_set_default_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_mdp_set_default_params(%struct.mtk_mdp_ctx* %0) #0 {
  %2 = alloca %struct.mtk_mdp_ctx*, align 8
  %3 = alloca %struct.mtk_mdp_dev*, align 8
  %4 = alloca %struct.mtk_mdp_frame*, align 8
  store %struct.mtk_mdp_ctx* %0, %struct.mtk_mdp_ctx** %2, align 8
  %5 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %2, align 8
  %6 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %5, i32 0, i32 0
  %7 = load %struct.mtk_mdp_dev*, %struct.mtk_mdp_dev** %6, align 8
  store %struct.mtk_mdp_dev* %7, %struct.mtk_mdp_dev** %3, align 8
  %8 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %2, align 8
  %9 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 4
  %10 = call %struct.mtk_mdp_frame* @mtk_mdp_ctx_get_frame(%struct.mtk_mdp_ctx* %8, i32 %9)
  store %struct.mtk_mdp_frame* %10, %struct.mtk_mdp_frame** %4, align 8
  %11 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 4
  %12 = call i8* @mtk_mdp_find_fmt_by_index(i32 0, i32 %11)
  %13 = load %struct.mtk_mdp_frame*, %struct.mtk_mdp_frame** %4, align 8
  %14 = getelementptr inbounds %struct.mtk_mdp_frame, %struct.mtk_mdp_frame* %13, i32 0, i32 3
  store i8* %12, i8** %14, align 8
  %15 = load %struct.mtk_mdp_dev*, %struct.mtk_mdp_dev** %3, align 8
  %16 = getelementptr inbounds %struct.mtk_mdp_dev, %struct.mtk_mdp_dev* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.mtk_mdp_frame*, %struct.mtk_mdp_frame** %4, align 8
  %23 = getelementptr inbounds %struct.mtk_mdp_frame, %struct.mtk_mdp_frame* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.mtk_mdp_dev*, %struct.mtk_mdp_dev** %3, align 8
  %25 = getelementptr inbounds %struct.mtk_mdp_dev, %struct.mtk_mdp_dev* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mtk_mdp_frame*, %struct.mtk_mdp_frame** %4, align 8
  %32 = getelementptr inbounds %struct.mtk_mdp_frame, %struct.mtk_mdp_frame* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.mtk_mdp_frame*, %struct.mtk_mdp_frame** %4, align 8
  %34 = getelementptr inbounds %struct.mtk_mdp_frame, %struct.mtk_mdp_frame* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.mtk_mdp_frame*, %struct.mtk_mdp_frame** %4, align 8
  %37 = getelementptr inbounds %struct.mtk_mdp_frame, %struct.mtk_mdp_frame* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %35, %38
  %40 = load %struct.mtk_mdp_frame*, %struct.mtk_mdp_frame** %4, align 8
  %41 = getelementptr inbounds %struct.mtk_mdp_frame, %struct.mtk_mdp_frame* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32 %39, i32* %43, align 4
  %44 = load %struct.mtk_mdp_frame*, %struct.mtk_mdp_frame** %4, align 8
  %45 = getelementptr inbounds %struct.mtk_mdp_frame, %struct.mtk_mdp_frame* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = sdiv i32 %48, 2
  %50 = load %struct.mtk_mdp_frame*, %struct.mtk_mdp_frame** %4, align 8
  %51 = getelementptr inbounds %struct.mtk_mdp_frame, %struct.mtk_mdp_frame* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  store i32 %49, i32* %53, align 4
  %54 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %2, align 8
  %55 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 4
  %56 = call %struct.mtk_mdp_frame* @mtk_mdp_ctx_get_frame(%struct.mtk_mdp_ctx* %54, i32 %55)
  store %struct.mtk_mdp_frame* %56, %struct.mtk_mdp_frame** %4, align 8
  %57 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 4
  %58 = call i8* @mtk_mdp_find_fmt_by_index(i32 0, i32 %57)
  %59 = load %struct.mtk_mdp_frame*, %struct.mtk_mdp_frame** %4, align 8
  %60 = getelementptr inbounds %struct.mtk_mdp_frame, %struct.mtk_mdp_frame* %59, i32 0, i32 3
  store i8* %58, i8** %60, align 8
  %61 = load %struct.mtk_mdp_dev*, %struct.mtk_mdp_dev** %3, align 8
  %62 = getelementptr inbounds %struct.mtk_mdp_dev, %struct.mtk_mdp_dev* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.mtk_mdp_frame*, %struct.mtk_mdp_frame** %4, align 8
  %69 = getelementptr inbounds %struct.mtk_mdp_frame, %struct.mtk_mdp_frame* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.mtk_mdp_dev*, %struct.mtk_mdp_dev** %3, align 8
  %71 = getelementptr inbounds %struct.mtk_mdp_dev, %struct.mtk_mdp_dev* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.mtk_mdp_frame*, %struct.mtk_mdp_frame** %4, align 8
  %78 = getelementptr inbounds %struct.mtk_mdp_frame, %struct.mtk_mdp_frame* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load %struct.mtk_mdp_frame*, %struct.mtk_mdp_frame** %4, align 8
  %80 = getelementptr inbounds %struct.mtk_mdp_frame, %struct.mtk_mdp_frame* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.mtk_mdp_frame*, %struct.mtk_mdp_frame** %4, align 8
  %83 = getelementptr inbounds %struct.mtk_mdp_frame, %struct.mtk_mdp_frame* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = mul nsw i32 %81, %84
  %86 = load %struct.mtk_mdp_frame*, %struct.mtk_mdp_frame** %4, align 8
  %87 = getelementptr inbounds %struct.mtk_mdp_frame, %struct.mtk_mdp_frame* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  store i32 %85, i32* %89, align 4
  %90 = load %struct.mtk_mdp_frame*, %struct.mtk_mdp_frame** %4, align 8
  %91 = getelementptr inbounds %struct.mtk_mdp_frame, %struct.mtk_mdp_frame* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = sdiv i32 %94, 2
  %96 = load %struct.mtk_mdp_frame*, %struct.mtk_mdp_frame** %4, align 8
  %97 = getelementptr inbounds %struct.mtk_mdp_frame, %struct.mtk_mdp_frame* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  store i32 %95, i32* %99, align 4
  ret void
}

declare dso_local %struct.mtk_mdp_frame* @mtk_mdp_ctx_get_frame(%struct.mtk_mdp_ctx*, i32) #1

declare dso_local i8* @mtk_mdp_find_fmt_by_index(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
