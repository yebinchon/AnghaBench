; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispresizer.c_resizer_set_filters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispresizer.c_resizer_set_filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_res_device = type { i32 }
%struct.isp_device = type { i32 }

@ISPRSZ_HFILT10 = common dso_local global i32 0, align 4
@ISPRSZ_VFILT10 = common dso_local global i32 0, align 4
@COEFF_CNT = common dso_local global i32 0, align 4
@ISPRSZ_HFILT_COEF1_SHIFT = common dso_local global i32 0, align 4
@ISPRSZ_VFILT_COEF1_SHIFT = common dso_local global i32 0, align 4
@OMAP3_ISP_IOMEM_RESZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_res_device*, i32*, i32*)* @resizer_set_filters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resizer_set_filters(%struct.isp_res_device* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.isp_res_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.isp_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.isp_res_device* %0, %struct.isp_res_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load %struct.isp_res_device*, %struct.isp_res_device** %4, align 8
  %14 = call %struct.isp_device* @to_isp_device(%struct.isp_res_device* %13)
  store %struct.isp_device* %14, %struct.isp_device** %7, align 8
  %15 = load i32, i32* @ISPRSZ_HFILT10, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* @ISPRSZ_VFILT10, align 4
  store i32 %16, i32* %9, align 4
  store i32 0, i32* %12, align 4
  br label %17

17:                                               ; preds = %64, %3
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* @COEFF_CNT, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %67

21:                                               ; preds = %17
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %12, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %12, align 4
  %29 = add nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ISPRSZ_HFILT_COEF1_SHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = or i32 %26, %34
  store i32 %35, i32* %10, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %12, align 4
  %43 = add nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @ISPRSZ_VFILT_COEF1_SHIFT, align 4
  %48 = shl i32 %46, %47
  %49 = or i32 %40, %48
  store i32 %49, i32* %11, align 4
  %50 = load %struct.isp_device*, %struct.isp_device** %7, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @OMAP3_ISP_IOMEM_RESZ, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @isp_reg_writel(%struct.isp_device* %50, i32 %51, i32 %52, i32 %53)
  %55 = load %struct.isp_device*, %struct.isp_device** %7, align 8
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @OMAP3_ISP_IOMEM_RESZ, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @isp_reg_writel(%struct.isp_device* %55, i32 %56, i32 %57, i32 %58)
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 4
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 4
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %21
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, 2
  store i32 %66, i32* %12, align 4
  br label %17

67:                                               ; preds = %17
  ret void
}

declare dso_local %struct.isp_device* @to_isp_device(%struct.isp_res_device*) #1

declare dso_local i32 @isp_reg_writel(%struct.isp_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
