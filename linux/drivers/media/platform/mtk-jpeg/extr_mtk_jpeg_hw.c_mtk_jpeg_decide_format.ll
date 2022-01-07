; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-jpeg/extr_mtk_jpeg_hw.c_mtk_jpeg_decide_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-jpeg/extr_mtk_jpeg_hw.c_mtk_jpeg_decide_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_jpeg_dec_param = type { i32, i32*, i32*, i32, i8* }

@V4L2_PIX_FMT_YUV422M = common dso_local global i8* null, align 8
@V4L2_PIX_FMT_YUV420M = common dso_local global i8* null, align 8
@V4L2_PIX_FMT_GREY = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_jpeg_dec_param*)* @mtk_jpeg_decide_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_jpeg_decide_format(%struct.mtk_jpeg_dec_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtk_jpeg_dec_param*, align 8
  store %struct.mtk_jpeg_dec_param* %0, %struct.mtk_jpeg_dec_param** %3, align 8
  %4 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %3, align 8
  %5 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %4, i32 0, i32 1
  %6 = load i32*, i32** %5, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = load i32, i32* %7, align 4
  %9 = shl i32 %8, 20
  %10 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %3, align 8
  %11 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = shl i32 %14, 16
  %16 = or i32 %9, %15
  %17 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %3, align 8
  %18 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %21, 12
  %23 = or i32 %16, %22
  %24 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %3, align 8
  %25 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 8
  %30 = or i32 %23, %29
  %31 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %3, align 8
  %32 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 %35, 4
  %37 = or i32 %30, %36
  %38 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %3, align 8
  %39 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %37, %42
  %44 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %3, align 8
  %45 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %3, align 8
  %47 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %46, i32 0, i32 3
  store i32 0, i32* %47, align 8
  %48 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %3, align 8
  %49 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  switch i32 %50, label %75 [
    i32 128, label %51
    i32 129, label %57
    i32 132, label %57
    i32 131, label %61
    i32 130, label %61
    i32 133, label %67
    i32 134, label %71
  ]

51:                                               ; preds = %1
  %52 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %3, align 8
  %53 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %52, i32 0, i32 3
  store i32 1, i32* %53, align 8
  %54 = load i8*, i8** @V4L2_PIX_FMT_YUV422M, align 8
  %55 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %3, align 8
  %56 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %55, i32 0, i32 4
  store i8* %54, i8** %56, align 8
  br label %78

57:                                               ; preds = %1, %1
  %58 = load i8*, i8** @V4L2_PIX_FMT_YUV422M, align 8
  %59 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %3, align 8
  %60 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %59, i32 0, i32 4
  store i8* %58, i8** %60, align 8
  br label %78

61:                                               ; preds = %1, %1
  %62 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %3, align 8
  %63 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %62, i32 0, i32 3
  store i32 1, i32* %63, align 8
  %64 = load i8*, i8** @V4L2_PIX_FMT_YUV420M, align 8
  %65 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %3, align 8
  %66 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %65, i32 0, i32 4
  store i8* %64, i8** %66, align 8
  br label %78

67:                                               ; preds = %1
  %68 = load i8*, i8** @V4L2_PIX_FMT_YUV420M, align 8
  %69 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %3, align 8
  %70 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %69, i32 0, i32 4
  store i8* %68, i8** %70, align 8
  br label %78

71:                                               ; preds = %1
  %72 = load i8*, i8** @V4L2_PIX_FMT_GREY, align 8
  %73 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %3, align 8
  %74 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %73, i32 0, i32 4
  store i8* %72, i8** %74, align 8
  br label %78

75:                                               ; preds = %1
  %76 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %3, align 8
  %77 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %76, i32 0, i32 4
  store i8* null, i8** %77, align 8
  store i32 -1, i32* %2, align 4
  br label %79

78:                                               ; preds = %71, %67, %61, %57, %51
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %78, %75
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
