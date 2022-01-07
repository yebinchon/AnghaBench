; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-jpeg/extr_mtk_jpeg_core.c_mtk_jpeg_queue_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-jpeg/extr_mtk_jpeg_core.c_mtk_jpeg_queue_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.device = type { i32 }
%struct.mtk_jpeg_ctx = type { %struct.mtk_jpeg_dev* }
%struct.mtk_jpeg_dev = type { i32 }
%struct.mtk_jpeg_q_data = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"(%d) buf_req count=%u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"sizeimage[%d]=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32*, i32*, i32*, %struct.device**)* @mtk_jpeg_queue_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_jpeg_queue_setup(%struct.vb2_queue* %0, i32* %1, i32* %2, i32* %3, %struct.device** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vb2_queue*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.device**, align 8
  %12 = alloca %struct.mtk_jpeg_ctx*, align 8
  %13 = alloca %struct.mtk_jpeg_q_data*, align 8
  %14 = alloca %struct.mtk_jpeg_dev*, align 8
  %15 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.device** %4, %struct.device*** %11, align 8
  %16 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %17 = call %struct.mtk_jpeg_ctx* @vb2_get_drv_priv(%struct.vb2_queue* %16)
  store %struct.mtk_jpeg_ctx* %17, %struct.mtk_jpeg_ctx** %12, align 8
  store %struct.mtk_jpeg_q_data* null, %struct.mtk_jpeg_q_data** %13, align 8
  %18 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %12, align 8
  %19 = getelementptr inbounds %struct.mtk_jpeg_ctx, %struct.mtk_jpeg_ctx* %18, i32 0, i32 0
  %20 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %19, align 8
  store %struct.mtk_jpeg_dev* %20, %struct.mtk_jpeg_dev** %14, align 8
  %21 = load i32, i32* @debug, align 4
  %22 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %14, align 8
  %23 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %22, i32 0, i32 0
  %24 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %25 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @v4l2_dbg(i32 1, i32 %21, i32* %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %28)
  %30 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %12, align 8
  %31 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %32 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.mtk_jpeg_q_data* @mtk_jpeg_get_q_data(%struct.mtk_jpeg_ctx* %30, i32 %33)
  store %struct.mtk_jpeg_q_data* %34, %struct.mtk_jpeg_q_data** %13, align 8
  %35 = load %struct.mtk_jpeg_q_data*, %struct.mtk_jpeg_q_data** %13, align 8
  %36 = icmp ne %struct.mtk_jpeg_q_data* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %5
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  br label %81

40:                                               ; preds = %5
  %41 = load %struct.mtk_jpeg_q_data*, %struct.mtk_jpeg_q_data** %13, align 8
  %42 = getelementptr inbounds %struct.mtk_jpeg_q_data, %struct.mtk_jpeg_q_data* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %9, align 8
  store i32 %45, i32* %46, align 4
  store i32 0, i32* %15, align 4
  br label %47

47:                                               ; preds = %77, %40
  %48 = load i32, i32* %15, align 4
  %49 = load %struct.mtk_jpeg_q_data*, %struct.mtk_jpeg_q_data** %13, align 8
  %50 = getelementptr inbounds %struct.mtk_jpeg_q_data, %struct.mtk_jpeg_q_data* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ult i32 %48, %53
  br i1 %54, label %55, label %80

55:                                               ; preds = %47
  %56 = load %struct.mtk_jpeg_q_data*, %struct.mtk_jpeg_q_data** %13, align 8
  %57 = getelementptr inbounds %struct.mtk_jpeg_q_data, %struct.mtk_jpeg_q_data* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %15, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %10, align 8
  %64 = load i32, i32* %15, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 %62, i32* %66, align 4
  %67 = load i32, i32* @debug, align 4
  %68 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %14, align 8
  %69 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %68, i32 0, i32 0
  %70 = load i32, i32* %15, align 4
  %71 = load i32*, i32** %10, align 8
  %72 = load i32, i32* %15, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @v4l2_dbg(i32 1, i32 %67, i32* %69, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %70, i32 %75)
  br label %77

77:                                               ; preds = %55
  %78 = load i32, i32* %15, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %15, align 4
  br label %47

80:                                               ; preds = %47
  store i32 0, i32* %6, align 4
  br label %81

81:                                               ; preds = %80, %37
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

declare dso_local %struct.mtk_jpeg_ctx* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*, i32, i32) #1

declare dso_local %struct.mtk_jpeg_q_data* @mtk_jpeg_get_q_data(%struct.mtk_jpeg_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
