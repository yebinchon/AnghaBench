; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_isif.c_isif_get_pixel_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_isif.c_isif_get_pixel_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@isif_cfg = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@VPFE_RAW_BAYER = common dso_local global i64 0, align 8
@ISIF_ALAW = common dso_local global i64 0, align 8
@ISIF_DPCM = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_SBGGR8 = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_SBGGR16 = common dso_local global i32 0, align 4
@CCDC_PIXORDER_YCBYCR = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_YUYV = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_UYVY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @isif_get_pixel_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isif_get_pixel_format() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @isif_cfg, i32 0, i32 0), align 8
  %3 = load i64, i64* @VPFE_RAW_BAYER, align 8
  %4 = icmp eq i64 %2, %3
  br i1 %4, label %5, label %18

5:                                                ; preds = %0
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @isif_cfg, i32 0, i32 2, i32 0, i32 0, i32 0), align 8
  %7 = load i64, i64* @ISIF_ALAW, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @isif_cfg, i32 0, i32 2, i32 0, i32 0, i32 0), align 8
  %11 = load i64, i64* @ISIF_DPCM, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9, %5
  %14 = load i32, i32* @V4L2_PIX_FMT_SBGGR8, align 4
  store i32 %14, i32* %1, align 4
  br label %17

15:                                               ; preds = %9
  %16 = load i32, i32* @V4L2_PIX_FMT_SBGGR16, align 4
  store i32 %16, i32* %1, align 4
  br label %17

17:                                               ; preds = %15, %13
  br label %27

18:                                               ; preds = %0
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @isif_cfg, i32 0, i32 1, i32 0), align 8
  %20 = load i64, i64* @CCDC_PIXORDER_YCBYCR, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @V4L2_PIX_FMT_YUYV, align 4
  store i32 %23, i32* %1, align 4
  br label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @V4L2_PIX_FMT_UYVY, align 4
  store i32 %25, i32* %1, align 4
  br label %26

26:                                               ; preds = %24, %22
  br label %27

27:                                               ; preds = %26, %17
  %28 = load i32, i32* %1, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
