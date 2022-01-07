; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-jpeg/extr_mtk_jpeg_core.c_mtk_jpeg_check_resolution_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-jpeg/extr_mtk_jpeg_core.c_mtk_jpeg_check_resolution_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_jpeg_ctx = type { %struct.mtk_jpeg_q_data, %struct.mtk_jpeg_q_data, %struct.mtk_jpeg_dev* }
%struct.mtk_jpeg_q_data = type { i64, i64, i64 }
%struct.mtk_jpeg_dev = type { i32 }
%struct.mtk_jpeg_dec_param = type { i64, i64, i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Picture size change\0A\00", align 1
@MTK_JPEG_FMT_TYPE_CAPTURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"format change\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_dec_param*)* @mtk_jpeg_check_resolution_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_jpeg_check_resolution_change(%struct.mtk_jpeg_ctx* %0, %struct.mtk_jpeg_dec_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtk_jpeg_ctx*, align 8
  %5 = alloca %struct.mtk_jpeg_dec_param*, align 8
  %6 = alloca %struct.mtk_jpeg_dev*, align 8
  %7 = alloca %struct.mtk_jpeg_q_data*, align 8
  store %struct.mtk_jpeg_ctx* %0, %struct.mtk_jpeg_ctx** %4, align 8
  store %struct.mtk_jpeg_dec_param* %1, %struct.mtk_jpeg_dec_param** %5, align 8
  %8 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %4, align 8
  %9 = getelementptr inbounds %struct.mtk_jpeg_ctx, %struct.mtk_jpeg_ctx* %8, i32 0, i32 2
  %10 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %9, align 8
  store %struct.mtk_jpeg_dev* %10, %struct.mtk_jpeg_dev** %6, align 8
  %11 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %4, align 8
  %12 = getelementptr inbounds %struct.mtk_jpeg_ctx, %struct.mtk_jpeg_ctx* %11, i32 0, i32 1
  store %struct.mtk_jpeg_q_data* %12, %struct.mtk_jpeg_q_data** %7, align 8
  %13 = load %struct.mtk_jpeg_q_data*, %struct.mtk_jpeg_q_data** %7, align 8
  %14 = getelementptr inbounds %struct.mtk_jpeg_q_data, %struct.mtk_jpeg_q_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %5, align 8
  %17 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %15, %18
  br i1 %19, label %28, label %20

20:                                               ; preds = %2
  %21 = load %struct.mtk_jpeg_q_data*, %struct.mtk_jpeg_q_data** %7, align 8
  %22 = getelementptr inbounds %struct.mtk_jpeg_q_data, %struct.mtk_jpeg_q_data* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %5, align 8
  %25 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %20, %2
  %29 = load i32, i32* @debug, align 4
  %30 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %6, align 8
  %31 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %30, i32 0, i32 0
  %32 = call i32 @v4l2_dbg(i32 1, i32 %29, i32* %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %52

33:                                               ; preds = %20
  %34 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %4, align 8
  %35 = getelementptr inbounds %struct.mtk_jpeg_ctx, %struct.mtk_jpeg_ctx* %34, i32 0, i32 0
  store %struct.mtk_jpeg_q_data* %35, %struct.mtk_jpeg_q_data** %7, align 8
  %36 = load %struct.mtk_jpeg_q_data*, %struct.mtk_jpeg_q_data** %7, align 8
  %37 = getelementptr inbounds %struct.mtk_jpeg_q_data, %struct.mtk_jpeg_q_data* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %4, align 8
  %40 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %5, align 8
  %41 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @MTK_JPEG_FMT_TYPE_CAPTURE, align 4
  %44 = call i64 @mtk_jpeg_find_format(%struct.mtk_jpeg_ctx* %39, i32 %42, i32 %43)
  %45 = icmp ne i64 %38, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %33
  %47 = load i32, i32* @debug, align 4
  %48 = load %struct.mtk_jpeg_dev*, %struct.mtk_jpeg_dev** %6, align 8
  %49 = getelementptr inbounds %struct.mtk_jpeg_dev, %struct.mtk_jpeg_dev* %48, i32 0, i32 0
  %50 = call i32 @v4l2_dbg(i32 1, i32 %47, i32* %49, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %52

51:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %46, %28
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*) #1

declare dso_local i64 @mtk_jpeg_find_format(%struct.mtk_jpeg_ctx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
