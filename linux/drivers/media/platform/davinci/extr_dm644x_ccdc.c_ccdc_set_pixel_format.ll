; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_dm644x_ccdc.c_ccdc_set_pixel_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_dm644x_ccdc.c_ccdc_set_pixel_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@ccdc_cfg = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@VPFE_RAW_BAYER = common dso_local global i64 0, align 8
@CCDC_PIXFMT_RAW = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_SBGGR8 = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_SBGGR16 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_YUYV = common dso_local global i64 0, align 8
@CCDC_PIXORDER_YCBYCR = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_UYVY = common dso_local global i64 0, align 8
@CCDC_PIXORDER_CBYCRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @ccdc_set_pixel_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccdc_set_pixel_format(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ccdc_cfg, i32 0, i32 0), align 8
  %5 = load i64, i64* @VPFE_RAW_BAYER, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %22

7:                                                ; preds = %1
  %8 = load i32, i32* @CCDC_PIXFMT_RAW, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ccdc_cfg, i32 0, i32 2, i32 1), align 4
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @V4L2_PIX_FMT_SBGGR8, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ccdc_cfg, i32 0, i32 2, i32 0, i32 0, i32 0), align 4
  br label %21

13:                                               ; preds = %7
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @V4L2_PIX_FMT_SBGGR16, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %40

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %20, %12
  br label %39

22:                                               ; preds = %1
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* @V4L2_PIX_FMT_YUYV, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @CCDC_PIXORDER_YCBYCR, align 4
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ccdc_cfg, i32 0, i32 1, i32 0), align 8
  br label %38

28:                                               ; preds = %22
  %29 = load i64, i64* %3, align 8
  %30 = load i64, i64* @V4L2_PIX_FMT_UYVY, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @CCDC_PIXORDER_CBYCRY, align 4
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ccdc_cfg, i32 0, i32 1, i32 0), align 8
  br label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %40

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %37, %26
  br label %39

39:                                               ; preds = %38, %21
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %34, %17
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
