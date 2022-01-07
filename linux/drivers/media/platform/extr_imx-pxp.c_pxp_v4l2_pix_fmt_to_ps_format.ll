; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_imx-pxp.c_pxp_v4l2_pix_fmt_to_ps_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_imx-pxp.c_pxp_v4l2_pix_fmt_to_ps_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BV_PXP_PS_CTRL_FORMAT__RGB888 = common dso_local global i32 0, align 4
@BV_PXP_PS_CTRL_FORMAT__RGB555 = common dso_local global i32 0, align 4
@BV_PXP_PS_CTRL_FORMAT__RGB444 = common dso_local global i32 0, align 4
@BV_PXP_PS_CTRL_FORMAT__RGB565 = common dso_local global i32 0, align 4
@BV_PXP_PS_CTRL_FORMAT__YUV1P444 = common dso_local global i32 0, align 4
@BV_PXP_PS_CTRL_FORMAT__UYVY1P422 = common dso_local global i32 0, align 4
@BM_PXP_PS_CTRL_WB_SWAP = common dso_local global i32 0, align 4
@BV_PXP_PS_CTRL_FORMAT__VYUY1P422 = common dso_local global i32 0, align 4
@BV_PXP_PS_CTRL_FORMAT__Y8 = common dso_local global i32 0, align 4
@BV_PXP_PS_CTRL_FORMAT__Y4 = common dso_local global i32 0, align 4
@BV_PXP_PS_CTRL_FORMAT__YUV2P422 = common dso_local global i32 0, align 4
@BV_PXP_PS_CTRL_FORMAT__YUV2P420 = common dso_local global i32 0, align 4
@BV_PXP_PS_CTRL_FORMAT__YVU2P420 = common dso_local global i32 0, align 4
@BV_PXP_PS_CTRL_FORMAT__YVU2P422 = common dso_local global i32 0, align 4
@BV_PXP_PS_CTRL_FORMAT__YUV422 = common dso_local global i32 0, align 4
@BV_PXP_PS_CTRL_FORMAT__YUV420 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pxp_v4l2_pix_fmt_to_ps_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxp_v4l2_pix_fmt_to_ps_format(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %29 [
    i32 133, label %5
    i32 138, label %7
    i32 139, label %9
    i32 137, label %11
    i32 135, label %13
    i32 136, label %15
    i32 129, label %17
    i32 134, label %21
    i32 128, label %23
    i32 144, label %27
    i32 132, label %30
    i32 142, label %32
    i32 143, label %34
    i32 141, label %36
    i32 140, label %38
    i32 130, label %40
    i32 131, label %42
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @BV_PXP_PS_CTRL_FORMAT__RGB888, align 4
  store i32 %6, i32* %2, align 4
  br label %44

7:                                                ; preds = %1
  %8 = load i32, i32* @BV_PXP_PS_CTRL_FORMAT__RGB555, align 4
  store i32 %8, i32* %2, align 4
  br label %44

9:                                                ; preds = %1
  %10 = load i32, i32* @BV_PXP_PS_CTRL_FORMAT__RGB444, align 4
  store i32 %10, i32* %2, align 4
  br label %44

11:                                               ; preds = %1
  %12 = load i32, i32* @BV_PXP_PS_CTRL_FORMAT__RGB565, align 4
  store i32 %12, i32* %2, align 4
  br label %44

13:                                               ; preds = %1
  %14 = load i32, i32* @BV_PXP_PS_CTRL_FORMAT__YUV1P444, align 4
  store i32 %14, i32* %2, align 4
  br label %44

15:                                               ; preds = %1
  %16 = load i32, i32* @BV_PXP_PS_CTRL_FORMAT__UYVY1P422, align 4
  store i32 %16, i32* %2, align 4
  br label %44

17:                                               ; preds = %1
  %18 = load i32, i32* @BM_PXP_PS_CTRL_WB_SWAP, align 4
  %19 = load i32, i32* @BV_PXP_PS_CTRL_FORMAT__UYVY1P422, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %2, align 4
  br label %44

21:                                               ; preds = %1
  %22 = load i32, i32* @BV_PXP_PS_CTRL_FORMAT__VYUY1P422, align 4
  store i32 %22, i32* %2, align 4
  br label %44

23:                                               ; preds = %1
  %24 = load i32, i32* @BM_PXP_PS_CTRL_WB_SWAP, align 4
  %25 = load i32, i32* @BV_PXP_PS_CTRL_FORMAT__VYUY1P422, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %2, align 4
  br label %44

27:                                               ; preds = %1
  %28 = load i32, i32* @BV_PXP_PS_CTRL_FORMAT__Y8, align 4
  store i32 %28, i32* %2, align 4
  br label %44

29:                                               ; preds = %1
  br label %30

30:                                               ; preds = %1, %29
  %31 = load i32, i32* @BV_PXP_PS_CTRL_FORMAT__Y4, align 4
  store i32 %31, i32* %2, align 4
  br label %44

32:                                               ; preds = %1
  %33 = load i32, i32* @BV_PXP_PS_CTRL_FORMAT__YUV2P422, align 4
  store i32 %33, i32* %2, align 4
  br label %44

34:                                               ; preds = %1
  %35 = load i32, i32* @BV_PXP_PS_CTRL_FORMAT__YUV2P420, align 4
  store i32 %35, i32* %2, align 4
  br label %44

36:                                               ; preds = %1
  %37 = load i32, i32* @BV_PXP_PS_CTRL_FORMAT__YVU2P420, align 4
  store i32 %37, i32* %2, align 4
  br label %44

38:                                               ; preds = %1
  %39 = load i32, i32* @BV_PXP_PS_CTRL_FORMAT__YVU2P422, align 4
  store i32 %39, i32* %2, align 4
  br label %44

40:                                               ; preds = %1
  %41 = load i32, i32* @BV_PXP_PS_CTRL_FORMAT__YUV422, align 4
  store i32 %41, i32* %2, align 4
  br label %44

42:                                               ; preds = %1
  %43 = load i32, i32* @BV_PXP_PS_CTRL_FORMAT__YUV420, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %42, %40, %38, %36, %34, %32, %30, %27, %23, %21, %17, %15, %13, %11, %9, %7, %5
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
