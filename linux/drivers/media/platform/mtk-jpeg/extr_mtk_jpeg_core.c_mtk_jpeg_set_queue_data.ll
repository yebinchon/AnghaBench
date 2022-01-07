; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-jpeg/extr_mtk_jpeg_core.c_mtk_jpeg_set_queue_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-jpeg/extr_mtk_jpeg_core.c_mtk_jpeg_set_queue_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_jpeg_ctx = type { %struct.mtk_jpeg_q_data, %struct.mtk_jpeg_q_data, %struct.mtk_jpeg_dev* }
%struct.mtk_jpeg_q_data = type { i32*, i32*, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mtk_jpeg_dev = type { i32 }
%struct.mtk_jpeg_dec_param = type { i32, i32, i32, i32, i32, i32*, i32* }

@MTK_JPEG_FMT_TYPE_CAPTURE = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"set_parse cap:%c%c%c%c pic(%u, %u), buf(%u, %u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_dec_param*)* @mtk_jpeg_set_queue_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_jpeg_set_queue_data(%struct.mtk_jpeg_ctx* %0, %struct.mtk_jpeg_dec_param* %1) #0 {
  %3 = alloca %struct.mtk_jpeg_ctx*, align 8
  %4 = alloca %struct.mtk_jpeg_dec_param*, align 8
  %5 = alloca %struct.mtk_jpeg_dev*, align 8
  %6 = alloca %struct.mtk_jpeg_q_data*, align 8
  %7 = alloca i32, align 4
  store %struct.mtk_jpeg_ctx* %0, %struct.mtk_jpeg_ctx** %3, align 8
  store %struct.mtk_jpeg_dec_param* %1, %struct.mtk_jpeg_dec_param** %4, align 8
  %8 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.mtk_jpeg_ctx, %struct.mtk_jpeg_ctx* %8, i32 0, i32 2
  %10 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %9, align 8
  store %struct.mtk_jpeg_dev* %10, %struct.mtk_jpeg_dev** %5, align 8
  %11 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.mtk_jpeg_ctx, %struct.mtk_jpeg_ctx* %11, i32 0, i32 1
  store %struct.mtk_jpeg_q_data* %12, %struct.mtk_jpeg_q_data** %6, align 8
  %13 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %4, align 8
  %14 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.mtk_jpeg_q_data*, %struct.mtk_jpeg_q_data** %6, align 8
  %17 = getelementptr inbounds %struct.mtk_jpeg_q_data, %struct.mtk_jpeg_q_data* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 4
  %18 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %4, align 8
  %19 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.mtk_jpeg_q_data*, %struct.mtk_jpeg_q_data** %6, align 8
  %22 = getelementptr inbounds %struct.mtk_jpeg_q_data, %struct.mtk_jpeg_q_data* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 8
  %23 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %3, align 8
  %24 = getelementptr inbounds %struct.mtk_jpeg_ctx, %struct.mtk_jpeg_ctx* %23, i32 0, i32 0
  store %struct.mtk_jpeg_q_data* %24, %struct.mtk_jpeg_q_data** %6, align 8
  %25 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %4, align 8
  %26 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.mtk_jpeg_q_data*, %struct.mtk_jpeg_q_data** %6, align 8
  %29 = getelementptr inbounds %struct.mtk_jpeg_q_data, %struct.mtk_jpeg_q_data* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 4
  %30 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %4, align 8
  %31 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mtk_jpeg_q_data*, %struct.mtk_jpeg_q_data** %6, align 8
  %34 = getelementptr inbounds %struct.mtk_jpeg_q_data, %struct.mtk_jpeg_q_data* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 8
  %35 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %3, align 8
  %36 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %4, align 8
  %37 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @MTK_JPEG_FMT_TYPE_CAPTURE, align 4
  %40 = call %struct.TYPE_2__* @mtk_jpeg_find_format(%struct.mtk_jpeg_ctx* %35, i32 %38, i32 %39)
  %41 = load %struct.mtk_jpeg_q_data*, %struct.mtk_jpeg_q_data** %6, align 8
  %42 = getelementptr inbounds %struct.mtk_jpeg_q_data, %struct.mtk_jpeg_q_data* %41, i32 0, i32 2
  store %struct.TYPE_2__* %40, %struct.TYPE_2__** %42, align 8
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %78, %2
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.mtk_jpeg_q_data*, %struct.mtk_jpeg_q_data** %6, align 8
  %46 = getelementptr inbounds %struct.mtk_jpeg_q_data, %struct.mtk_jpeg_q_data* %45, i32 0, i32 2
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %44, %49
  br i1 %50, label %51, label %81

51:                                               ; preds = %43
  %52 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %4, align 8
  %53 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %52, i32 0, i32 6
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.mtk_jpeg_q_data*, %struct.mtk_jpeg_q_data** %6, align 8
  %60 = getelementptr inbounds %struct.mtk_jpeg_q_data, %struct.mtk_jpeg_q_data* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 %58, i32* %64, align 4
  %65 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %4, align 8
  %66 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %65, i32 0, i32 5
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.mtk_jpeg_q_data*, %struct.mtk_jpeg_q_data** %6, align 8
  %73 = getelementptr inbounds %struct.mtk_jpeg_q_data, %struct.mtk_jpeg_q_data* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %71, i32* %77, align 4
  br label %78

78:                                               ; preds = %51
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %7, align 4
  br label %43

81:                                               ; preds = %43
  %82 = load i32, i32* @debug, align 4
  %83 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %5, align 8
  %84 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %83, i32 0, i32 0
  %85 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %4, align 8
  %86 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = and i32 %87, 255
  %89 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %4, align 8
  %90 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = ashr i32 %91, 8
  %93 = and i32 %92, 255
  %94 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %4, align 8
  %95 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = ashr i32 %96, 16
  %98 = and i32 %97, 255
  %99 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %4, align 8
  %100 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = ashr i32 %101, 24
  %103 = and i32 %102, 255
  %104 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %4, align 8
  %105 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %4, align 8
  %108 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %4, align 8
  %111 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %4, align 8
  %114 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @v4l2_dbg(i32 1, i32 %82, i32* %84, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %88, i32 %93, i32 %98, i32 %103, i32 %106, i32 %109, i32 %112, i32 %115)
  ret void
}

declare dso_local %struct.TYPE_2__* @mtk_jpeg_find_format(%struct.mtk_jpeg_ctx*, i32, i32) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
