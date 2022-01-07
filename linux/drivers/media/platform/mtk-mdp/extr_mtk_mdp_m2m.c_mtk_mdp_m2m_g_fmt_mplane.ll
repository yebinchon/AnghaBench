; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-mdp/extr_mtk_mdp_m2m.c_mtk_mdp_m2m_g_fmt_mplane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-mdp/extr_mtk_mdp_m2m.c_mtk_mdp_m2m_g_fmt_mplane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.v4l2_pix_format_mplane }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, %struct.TYPE_6__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.mtk_mdp_ctx = type { i32, i32, i32, i32, i32 }
%struct.mtk_mdp_frame = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32*, i32*, i32 }

@.str = private unnamed_addr constant [13 x i8] c"[%d] type:%d\00", align 1
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"[%d] wxh:%dx%d\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"[%d] p%d, bpl:%d, sizeimage:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @mtk_mdp_m2m_g_fmt_mplane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_mdp_m2m_g_fmt_mplane(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca %struct.mtk_mdp_ctx*, align 8
  %8 = alloca %struct.mtk_mdp_frame*, align 8
  %9 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call %struct.mtk_mdp_ctx* @fh_to_ctx(i8* %11)
  store %struct.mtk_mdp_ctx* %12, %struct.mtk_mdp_ctx** %7, align 8
  %13 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %7, align 8
  %14 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %17 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (i32, i8*, i32, i32, ...) @mtk_mdp_dbg(i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18)
  %20 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %7, align 8
  %21 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %22 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.mtk_mdp_frame* @mtk_mdp_ctx_get_frame(%struct.mtk_mdp_ctx* %20, i32 %23)
  store %struct.mtk_mdp_frame* %24, %struct.mtk_mdp_frame** %8, align 8
  %25 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %26 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store %struct.v4l2_pix_format_mplane* %27, %struct.v4l2_pix_format_mplane** %9, align 8
  %28 = load %struct.mtk_mdp_frame*, %struct.mtk_mdp_frame** %8, align 8
  %29 = getelementptr inbounds %struct.mtk_mdp_frame, %struct.mtk_mdp_frame* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %32 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.mtk_mdp_frame*, %struct.mtk_mdp_frame** %8, align 8
  %34 = getelementptr inbounds %struct.mtk_mdp_frame, %struct.mtk_mdp_frame* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %37 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %39 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %40 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %39, i32 0, i32 9
  store i32 %38, i32* %40, align 4
  %41 = load %struct.mtk_mdp_frame*, %struct.mtk_mdp_frame** %8, align 8
  %42 = getelementptr inbounds %struct.mtk_mdp_frame, %struct.mtk_mdp_frame* %41, i32 0, i32 2
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %47 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %46, i32 0, i32 8
  store i32 %45, i32* %47, align 8
  %48 = load %struct.mtk_mdp_frame*, %struct.mtk_mdp_frame** %8, align 8
  %49 = getelementptr inbounds %struct.mtk_mdp_frame, %struct.mtk_mdp_frame* %48, i32 0, i32 2
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %54 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %7, align 8
  %56 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %59 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %58, i32 0, i32 7
  store i32 %57, i32* %59, align 4
  %60 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %7, align 8
  %61 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %64 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %63, i32 0, i32 6
  store i32 %62, i32* %64, align 8
  %65 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %7, align 8
  %66 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %69 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %68, i32 0, i32 5
  store i32 %67, i32* %69, align 4
  %70 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %7, align 8
  %71 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %74 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 8
  %75 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %7, align 8
  %76 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %79 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %82 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (i32, i8*, i32, i32, ...) @mtk_mdp_dbg(i32 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %77, i32 %80, i32 %83)
  store i32 0, i32* %10, align 4
  br label %85

85:                                               ; preds = %159, %3
  %86 = load i32, i32* %10, align 4
  %87 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %88 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %162

91:                                               ; preds = %85
  %92 = load %struct.mtk_mdp_frame*, %struct.mtk_mdp_frame** %8, align 8
  %93 = getelementptr inbounds %struct.mtk_mdp_frame, %struct.mtk_mdp_frame* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.mtk_mdp_frame*, %struct.mtk_mdp_frame** %8, align 8
  %96 = getelementptr inbounds %struct.mtk_mdp_frame, %struct.mtk_mdp_frame* %95, i32 0, i32 2
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = mul nsw i32 %94, %103
  %105 = sdiv i32 %104, 8
  %106 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %107 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %106, i32 0, i32 3
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  store i32 %105, i32* %112, align 4
  %113 = load %struct.mtk_mdp_frame*, %struct.mtk_mdp_frame** %8, align 8
  %114 = getelementptr inbounds %struct.mtk_mdp_frame, %struct.mtk_mdp_frame* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.mtk_mdp_frame*, %struct.mtk_mdp_frame** %8, align 8
  %117 = getelementptr inbounds %struct.mtk_mdp_frame, %struct.mtk_mdp_frame* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = mul nsw i32 %115, %118
  %120 = load %struct.mtk_mdp_frame*, %struct.mtk_mdp_frame** %8, align 8
  %121 = getelementptr inbounds %struct.mtk_mdp_frame, %struct.mtk_mdp_frame* %120, i32 0, i32 2
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = mul nsw i32 %119, %128
  %130 = sdiv i32 %129, 8
  %131 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %132 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %131, i32 0, i32 3
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %132, align 8
  %134 = load i32, i32* %10, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  store i32 %130, i32* %137, align 4
  %138 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %7, align 8
  %139 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %10, align 4
  %142 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %143 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %142, i32 0, i32 3
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %143, align 8
  %145 = load i32, i32* %10, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %151 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %150, i32 0, i32 3
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %151, align 8
  %153 = load i32, i32* %10, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i32 (i32, i8*, i32, i32, ...) @mtk_mdp_dbg(i32 2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %140, i32 %141, i32 %149, i32 %157)
  br label %159

159:                                              ; preds = %91
  %160 = load i32, i32* %10, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %10, align 4
  br label %85

162:                                              ; preds = %85
  ret i32 0
}

declare dso_local %struct.mtk_mdp_ctx* @fh_to_ctx(i8*) #1

declare dso_local i32 @mtk_mdp_dbg(i32, i8*, i32, i32, ...) #1

declare dso_local %struct.mtk_mdp_frame* @mtk_mdp_ctx_get_frame(%struct.mtk_mdp_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
