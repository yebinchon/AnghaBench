; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/am437x/extr_am437x-vpfe.c_vpfe_ccdc_get_pixel_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/am437x/extr_am437x-vpfe.c_vpfe_ccdc_get_pixel_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpfe_ccdc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@VPFE_RAW_BAYER = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_YUYV = common dso_local global i32 0, align 4
@CCDC_PIXORDER_YCBYCR = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_UYVY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vpfe_ccdc*)* @vpfe_ccdc_get_pixel_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpfe_ccdc_get_pixel_format(%struct.vpfe_ccdc* %0) #0 {
  %2 = alloca %struct.vpfe_ccdc*, align 8
  %3 = alloca i32, align 4
  store %struct.vpfe_ccdc* %0, %struct.vpfe_ccdc** %2, align 8
  %4 = load %struct.vpfe_ccdc*, %struct.vpfe_ccdc** %2, align 8
  %5 = getelementptr inbounds %struct.vpfe_ccdc, %struct.vpfe_ccdc* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @VPFE_RAW_BAYER, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @V4L2_PIX_FMT_YUYV, align 4
  store i32 %11, i32* %3, align 4
  br label %25

12:                                               ; preds = %1
  %13 = load %struct.vpfe_ccdc*, %struct.vpfe_ccdc** %2, align 8
  %14 = getelementptr inbounds %struct.vpfe_ccdc, %struct.vpfe_ccdc* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CCDC_PIXORDER_YCBYCR, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = load i32, i32* @V4L2_PIX_FMT_YUYV, align 4
  store i32 %21, i32* %3, align 4
  br label %24

22:                                               ; preds = %12
  %23 = load i32, i32* @V4L2_PIX_FMT_UYVY, align 4
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %22, %20
  br label %25

25:                                               ; preds = %24, %10
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
