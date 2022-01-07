; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_vdec_drv_if.c_vdec_if_decode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_vdec_drv_if.c_vdec_if_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_vcodec_ctx = type { %struct.TYPE_8__*, i32, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 (i32, %struct.mtk_vcodec_mem*, %struct.vdec_fb*, i32*)* }
%struct.mtk_vcodec_mem = type { i32 }
%struct.vdec_fb = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"bs dma_addr should 64 byte align\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"frame buffer dma_addr should 512 byte align\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vdec_if_decode(%struct.mtk_vcodec_ctx* %0, %struct.mtk_vcodec_mem* %1, %struct.vdec_fb* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtk_vcodec_ctx*, align 8
  %7 = alloca %struct.mtk_vcodec_mem*, align 8
  %8 = alloca %struct.vdec_fb*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.mtk_vcodec_ctx* %0, %struct.mtk_vcodec_ctx** %6, align 8
  store %struct.mtk_vcodec_mem* %1, %struct.mtk_vcodec_mem** %7, align 8
  store %struct.vdec_fb* %2, %struct.vdec_fb** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %7, align 8
  %12 = icmp ne %struct.mtk_vcodec_mem* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %4
  %14 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %7, align 8
  %15 = getelementptr inbounds %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 63
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = call i32 @mtk_v4l2_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %103

23:                                               ; preds = %13
  br label %24

24:                                               ; preds = %23, %4
  %25 = load %struct.vdec_fb*, %struct.vdec_fb** %8, align 8
  %26 = icmp ne %struct.vdec_fb* %25, null
  br i1 %26, label %27, label %46

27:                                               ; preds = %24
  %28 = load %struct.vdec_fb*, %struct.vdec_fb** %8, align 8
  %29 = getelementptr inbounds %struct.vdec_fb, %struct.vdec_fb* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 511
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %27
  %35 = load %struct.vdec_fb*, %struct.vdec_fb** %8, align 8
  %36 = getelementptr inbounds %struct.vdec_fb, %struct.vdec_fb* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 511
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %34, %27
  %42 = call i32 @mtk_v4l2_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %103

45:                                               ; preds = %34
  br label %46

46:                                               ; preds = %45, %24
  %47 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %6, align 8
  %48 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* @EIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %103

54:                                               ; preds = %46
  %55 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %6, align 8
  %56 = call i32 @mtk_vdec_lock(%struct.mtk_vcodec_ctx* %55)
  %57 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %6, align 8
  %58 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %57, i32 0, i32 0
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %6, align 8
  %61 = call i32 @mtk_vcodec_set_curr_ctx(%struct.TYPE_8__* %59, %struct.mtk_vcodec_ctx* %60)
  %62 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %6, align 8
  %63 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %62, i32 0, i32 0
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = call i32 @mtk_vcodec_dec_clock_on(i32* %65)
  %67 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %6, align 8
  %68 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %67, i32 0, i32 0
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @enable_irq(i32 %71)
  %73 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %6, align 8
  %74 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %73, i32 0, i32 2
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32 (i32, %struct.mtk_vcodec_mem*, %struct.vdec_fb*, i32*)*, i32 (i32, %struct.mtk_vcodec_mem*, %struct.vdec_fb*, i32*)** %76, align 8
  %78 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %6, align 8
  %79 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %7, align 8
  %82 = load %struct.vdec_fb*, %struct.vdec_fb** %8, align 8
  %83 = load i32*, i32** %9, align 8
  %84 = call i32 %77(i32 %80, %struct.mtk_vcodec_mem* %81, %struct.vdec_fb* %82, i32* %83)
  store i32 %84, i32* %10, align 4
  %85 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %6, align 8
  %86 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %85, i32 0, i32 0
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @disable_irq(i32 %89)
  %91 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %6, align 8
  %92 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %91, i32 0, i32 0
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = call i32 @mtk_vcodec_dec_clock_off(i32* %94)
  %96 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %6, align 8
  %97 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %96, i32 0, i32 0
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = call i32 @mtk_vcodec_set_curr_ctx(%struct.TYPE_8__* %98, %struct.mtk_vcodec_ctx* null)
  %100 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %6, align 8
  %101 = call i32 @mtk_vdec_unlock(%struct.mtk_vcodec_ctx* %100)
  %102 = load i32, i32* %10, align 4
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %54, %51, %41, %19
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i32 @mtk_v4l2_err(i8*) #1

declare dso_local i32 @mtk_vdec_lock(%struct.mtk_vcodec_ctx*) #1

declare dso_local i32 @mtk_vcodec_set_curr_ctx(%struct.TYPE_8__*, %struct.mtk_vcodec_ctx*) #1

declare dso_local i32 @mtk_vcodec_dec_clock_on(i32*) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @mtk_vcodec_dec_clock_off(i32*) #1

declare dso_local i32 @mtk_vdec_unlock(%struct.mtk_vcodec_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
