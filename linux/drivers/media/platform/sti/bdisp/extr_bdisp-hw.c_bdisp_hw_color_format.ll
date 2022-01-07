; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-hw.c_bdisp_hw_color_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-hw.c_bdisp_hw_color_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BDISP_YUV_3B = common dso_local global i32 0, align 4
@BLT_TTY_COL_SHIFT = common dso_local global i32 0, align 4
@BDISP_NV12 = common dso_local global i32 0, align 4
@BLT_TTY_BIG_END = common dso_local global i32 0, align 4
@BDISP_RGB565 = common dso_local global i32 0, align 4
@BDISP_XRGB8888 = common dso_local global i32 0, align 4
@BDISP_RGB888 = common dso_local global i32 0, align 4
@BDISP_ARGB8888 = common dso_local global i32 0, align 4
@BLT_TTY_ALPHA_R = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bdisp_hw_color_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bdisp_hw_color_format(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %30 [
    i32 128, label %5
    i32 132, label %9
    i32 130, label %15
    i32 129, label %19
    i32 131, label %23
    i32 133, label %29
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @BDISP_YUV_3B, align 4
  %7 = load i32, i32* @BLT_TTY_COL_SHIFT, align 4
  %8 = shl i32 %6, %7
  store i32 %8, i32* %3, align 4
  br label %36

9:                                                ; preds = %1
  %10 = load i32, i32* @BDISP_NV12, align 4
  %11 = load i32, i32* @BLT_TTY_COL_SHIFT, align 4
  %12 = shl i32 %10, %11
  %13 = load i32, i32* @BLT_TTY_BIG_END, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %3, align 4
  br label %36

15:                                               ; preds = %1
  %16 = load i32, i32* @BDISP_RGB565, align 4
  %17 = load i32, i32* @BLT_TTY_COL_SHIFT, align 4
  %18 = shl i32 %16, %17
  store i32 %18, i32* %3, align 4
  br label %36

19:                                               ; preds = %1
  %20 = load i32, i32* @BDISP_XRGB8888, align 4
  %21 = load i32, i32* @BLT_TTY_COL_SHIFT, align 4
  %22 = shl i32 %20, %21
  store i32 %22, i32* %3, align 4
  br label %36

23:                                               ; preds = %1
  %24 = load i32, i32* @BDISP_RGB888, align 4
  %25 = load i32, i32* @BLT_TTY_COL_SHIFT, align 4
  %26 = shl i32 %24, %25
  %27 = load i32, i32* @BLT_TTY_BIG_END, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %3, align 4
  br label %36

29:                                               ; preds = %1
  br label %30

30:                                               ; preds = %1, %29
  %31 = load i32, i32* @BDISP_ARGB8888, align 4
  %32 = load i32, i32* @BLT_TTY_COL_SHIFT, align 4
  %33 = shl i32 %31, %32
  %34 = load i32, i32* @BLT_TTY_ALPHA_R, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %30, %23, %19, %15, %9, %5
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
