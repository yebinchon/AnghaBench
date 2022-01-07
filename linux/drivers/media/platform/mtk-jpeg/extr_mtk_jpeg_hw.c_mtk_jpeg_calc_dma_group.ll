; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-jpeg/extr_mtk_jpeg_hw.c_mtk_jpeg_calc_dma_group.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-jpeg/extr_mtk_jpeg_hw.c_mtk_jpeg_calc_dma_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_jpeg_dec_param = type { i32, i64, i32, i32, i32, i32 }

@MTK_JPEG_COLOR_444 = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_YUV422M = common dso_local global i64 0, align 8
@MTK_JPEG_COLOR_422V = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_YUV420M = common dso_local global i64 0, align 8
@MTK_JPEG_COLOR_422X2 = common dso_local global i32 0, align 4
@MTK_JPEG_COLOR_400 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_jpeg_dec_param*)* @mtk_jpeg_calc_dma_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_jpeg_calc_dma_group(%struct.mtk_jpeg_dec_param* %0) #0 {
  %2 = alloca %struct.mtk_jpeg_dec_param*, align 8
  %3 = alloca i32, align 4
  store %struct.mtk_jpeg_dec_param* %0, %struct.mtk_jpeg_dec_param** %2, align 8
  store i32 3, i32* %3, align 4
  %4 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %2, align 8
  %5 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @MTK_JPEG_COLOR_444, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %2, align 8
  %11 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @V4L2_PIX_FMT_YUV422M, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  store i32 4, i32* %3, align 4
  br label %58

16:                                               ; preds = %9, %1
  %17 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %2, align 8
  %18 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @MTK_JPEG_COLOR_422V, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %2, align 8
  %24 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @V4L2_PIX_FMT_YUV420M, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 4, i32* %3, align 4
  br label %57

29:                                               ; preds = %22, %16
  %30 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %2, align 8
  %31 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @MTK_JPEG_COLOR_422X2, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %2, align 8
  %37 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @V4L2_PIX_FMT_YUV422M, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 2, i32* %3, align 4
  br label %56

42:                                               ; preds = %35, %29
  %43 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %2, align 8
  %44 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @MTK_JPEG_COLOR_400, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %2, align 8
  %50 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = and i32 %51, 65535
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48, %42
  store i32 4, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %48
  br label %56

56:                                               ; preds = %55, %41
  br label %57

57:                                               ; preds = %56, %28
  br label %58

58:                                               ; preds = %57, %15
  %59 = load i32, i32* %3, align 4
  %60 = shl i32 1, %59
  %61 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %2, align 8
  %62 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %2, align 8
  %64 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %2, align 8
  %67 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = sdiv i32 %65, %68
  %70 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %2, align 8
  %71 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  %72 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %2, align 8
  %73 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %2, align 8
  %76 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = srem i32 %74, %77
  %79 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %2, align 8
  %80 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %79, i32 0, i32 5
  store i32 %78, i32* %80, align 4
  %81 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %2, align 8
  %82 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %58
  %86 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %2, align 8
  %87 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 4
  br label %96

90:                                               ; preds = %58
  %91 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %2, align 8
  %92 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %2, align 8
  %95 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %94, i32 0, i32 5
  store i32 %93, i32* %95, align 4
  br label %96

96:                                               ; preds = %90, %85
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
