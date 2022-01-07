; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_isif.c_isif_set_pixel_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_isif.c_isif_set_pixel_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i8*, %struct.TYPE_9__, %struct.TYPE_8__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@isif_cfg = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@VPFE_RAW_BAYER = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_SBGGR8 = common dso_local global i32 0, align 4
@ISIF_ALAW = common dso_local global i64 0, align 8
@ISIF_DPCM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Either configure A-Law or DPCM\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ISIF_PACK_8BIT = common dso_local global i8* null, align 8
@V4L2_PIX_FMT_SBGGR16 = common dso_local global i32 0, align 4
@ISIF_NO_COMPRESSION = common dso_local global i64 0, align 8
@ISIF_PACK_16BIT = common dso_local global i8* null, align 8
@CCDC_PIXFMT_RAW = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_YUYV = common dso_local global i32 0, align 4
@CCDC_PIXORDER_YCBYCR = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_UYVY = common dso_local global i32 0, align 4
@CCDC_PIXORDER_CBYCRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @isif_set_pixel_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isif_set_pixel_format(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @isif_cfg, i32 0, i32 0), align 8
  %5 = load i64, i64* @VPFE_RAW_BAYER, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %39

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @V4L2_PIX_FMT_SBGGR8, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %26

11:                                               ; preds = %7
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @isif_cfg, i32 0, i32 3, i32 1, i32 0, i32 0), align 8
  %13 = load i64, i64* @ISIF_ALAW, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %11
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @isif_cfg, i32 0, i32 3, i32 1, i32 0, i32 0), align 8
  %17 = load i64, i64* @ISIF_DPCM, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @isif_cfg, i32 0, i32 4), align 8
  %21 = call i32 @dev_dbg(i32 %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %58

24:                                               ; preds = %15, %11
  %25 = load i8*, i8** @ISIF_PACK_8BIT, align 8
  store i8* %25, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @isif_cfg, i32 0, i32 1), align 8
  br label %37

26:                                               ; preds = %7
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @V4L2_PIX_FMT_SBGGR16, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i64, i64* @ISIF_NO_COMPRESSION, align 8
  store i64 %31, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @isif_cfg, i32 0, i32 3, i32 1, i32 0, i32 0), align 8
  %32 = load i8*, i8** @ISIF_PACK_16BIT, align 8
  store i8* %32, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @isif_cfg, i32 0, i32 1), align 8
  br label %36

33:                                               ; preds = %26
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %58

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36, %24
  %38 = load i32, i32* @CCDC_PIXFMT_RAW, align 4
  store i32 %38, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @isif_cfg, i32 0, i32 3, i32 0), align 8
  br label %57

39:                                               ; preds = %1
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @V4L2_PIX_FMT_YUYV, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @CCDC_PIXORDER_YCBYCR, align 4
  store i32 %44, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @isif_cfg, i32 0, i32 2, i32 0), align 8
  br label %55

45:                                               ; preds = %39
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @V4L2_PIX_FMT_UYVY, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* @CCDC_PIXORDER_CBYCRY, align 4
  store i32 %50, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @isif_cfg, i32 0, i32 2, i32 0), align 8
  br label %54

51:                                               ; preds = %45
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %58

54:                                               ; preds = %49
  br label %55

55:                                               ; preds = %54, %43
  %56 = load i8*, i8** @ISIF_PACK_8BIT, align 8
  store i8* %56, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @isif_cfg, i32 0, i32 1), align 8
  br label %57

57:                                               ; preds = %55, %37
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %51, %33, %19
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
