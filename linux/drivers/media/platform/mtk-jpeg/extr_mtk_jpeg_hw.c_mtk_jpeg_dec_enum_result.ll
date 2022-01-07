; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-jpeg/extr_mtk_jpeg_hw.c_mtk_jpeg_dec_enum_result.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-jpeg/extr_mtk_jpeg_hw.c_mtk_jpeg_dec_enum_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BIT_INQST_MASK_EOF = common dso_local global i32 0, align 4
@MTK_JPEG_DEC_RESULT_EOF_DONE = common dso_local global i32 0, align 4
@BIT_INQST_MASK_PAUSE = common dso_local global i32 0, align 4
@MTK_JPEG_DEC_RESULT_PAUSE = common dso_local global i32 0, align 4
@BIT_INQST_MASK_UNDERFLOW = common dso_local global i32 0, align 4
@MTK_JPEG_DEC_RESULT_UNDERFLOW = common dso_local global i32 0, align 4
@BIT_INQST_MASK_OVERFLOW = common dso_local global i32 0, align 4
@MTK_JPEG_DEC_RESULT_OVERFLOW = common dso_local global i32 0, align 4
@BIT_INQST_MASK_ERROR_BS = common dso_local global i32 0, align 4
@MTK_JPEG_DEC_RESULT_ERROR_BS = common dso_local global i32 0, align 4
@MTK_JPEG_DEC_RESULT_ERROR_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtk_jpeg_dec_enum_result(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @BIT_INQST_MASK_EOF, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @MTK_JPEG_DEC_RESULT_EOF_DONE, align 4
  store i32 %9, i32* %2, align 4
  br label %40

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @BIT_INQST_MASK_PAUSE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i32, i32* @MTK_JPEG_DEC_RESULT_PAUSE, align 4
  store i32 %16, i32* %2, align 4
  br label %40

17:                                               ; preds = %10
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @BIT_INQST_MASK_UNDERFLOW, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @MTK_JPEG_DEC_RESULT_UNDERFLOW, align 4
  store i32 %23, i32* %2, align 4
  br label %40

24:                                               ; preds = %17
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @BIT_INQST_MASK_OVERFLOW, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @MTK_JPEG_DEC_RESULT_OVERFLOW, align 4
  store i32 %30, i32* %2, align 4
  br label %40

31:                                               ; preds = %24
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @BIT_INQST_MASK_ERROR_BS, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @MTK_JPEG_DEC_RESULT_ERROR_BS, align 4
  store i32 %37, i32* %2, align 4
  br label %40

38:                                               ; preds = %31
  %39 = load i32, i32* @MTK_JPEG_DEC_RESULT_ERROR_UNKNOWN, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %38, %36, %29, %22, %15, %8
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
