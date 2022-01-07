; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispresizer.c_resizer_set_ratio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispresizer.c_resizer_set_ratio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32*, i32*, i32* }
%struct.isp_res_device = type { i32 }
%struct.resizer_ratio = type { i32, i32 }
%struct.isp_device = type { i32 }

@OMAP3_ISP_IOMEM_RESZ = common dso_local global i32 0, align 4
@ISPRSZ_CNT = common dso_local global i32 0, align 4
@ISPRSZ_CNT_HRSZ_MASK = common dso_local global i32 0, align 4
@ISPRSZ_CNT_VRSZ_MASK = common dso_local global i32 0, align 4
@ISPRSZ_CNT_HRSZ_SHIFT = common dso_local global i32 0, align 4
@ISPRSZ_CNT_VRSZ_SHIFT = common dso_local global i32 0, align 4
@MID_RESIZE_VALUE = common dso_local global i32 0, align 4
@filter_coefs = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_res_device*, %struct.resizer_ratio*)* @resizer_set_ratio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resizer_set_ratio(%struct.isp_res_device* %0, %struct.resizer_ratio* %1) #0 {
  %3 = alloca %struct.isp_res_device*, align 8
  %4 = alloca %struct.resizer_ratio*, align 8
  %5 = alloca %struct.isp_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.isp_res_device* %0, %struct.isp_res_device** %3, align 8
  store %struct.resizer_ratio* %1, %struct.resizer_ratio** %4, align 8
  %9 = load %struct.isp_res_device*, %struct.isp_res_device** %3, align 8
  %10 = call %struct.isp_device* @to_isp_device(%struct.isp_res_device* %9)
  store %struct.isp_device* %10, %struct.isp_device** %5, align 8
  %11 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %12 = load i32, i32* @OMAP3_ISP_IOMEM_RESZ, align 4
  %13 = load i32, i32* @ISPRSZ_CNT, align 4
  %14 = call i32 @isp_reg_readl(%struct.isp_device* %11, i32 %12, i32 %13)
  %15 = load i32, i32* @ISPRSZ_CNT_HRSZ_MASK, align 4
  %16 = load i32, i32* @ISPRSZ_CNT_VRSZ_MASK, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = and i32 %14, %18
  store i32 %19, i32* %8, align 4
  %20 = load %struct.resizer_ratio*, %struct.resizer_ratio** %4, align 8
  %21 = getelementptr inbounds %struct.resizer_ratio, %struct.resizer_ratio* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %22, 1
  %24 = load i32, i32* @ISPRSZ_CNT_HRSZ_SHIFT, align 4
  %25 = shl i32 %23, %24
  %26 = load i32, i32* @ISPRSZ_CNT_HRSZ_MASK, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* %8, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %8, align 4
  %30 = load %struct.resizer_ratio*, %struct.resizer_ratio** %4, align 8
  %31 = getelementptr inbounds %struct.resizer_ratio, %struct.resizer_ratio* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %32, 1
  %34 = load i32, i32* @ISPRSZ_CNT_VRSZ_SHIFT, align 4
  %35 = shl i32 %33, %34
  %36 = load i32, i32* @ISPRSZ_CNT_VRSZ_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* %8, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %8, align 4
  %40 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @OMAP3_ISP_IOMEM_RESZ, align 4
  %43 = load i32, i32* @ISPRSZ_CNT, align 4
  %44 = call i32 @isp_reg_writel(%struct.isp_device* %40, i32 %41, i32 %42, i32 %43)
  %45 = load %struct.resizer_ratio*, %struct.resizer_ratio** %4, align 8
  %46 = getelementptr inbounds %struct.resizer_ratio, %struct.resizer_ratio* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @MID_RESIZE_VALUE, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %2
  %51 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @filter_coefs, i32 0, i32 3), align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  store i32* %52, i32** %6, align 8
  br label %56

53:                                               ; preds = %2
  %54 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @filter_coefs, i32 0, i32 2), align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  store i32* %55, i32** %6, align 8
  br label %56

56:                                               ; preds = %53, %50
  %57 = load %struct.resizer_ratio*, %struct.resizer_ratio** %4, align 8
  %58 = getelementptr inbounds %struct.resizer_ratio, %struct.resizer_ratio* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @MID_RESIZE_VALUE, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @filter_coefs, i32 0, i32 1), align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  store i32* %64, i32** %7, align 8
  br label %68

65:                                               ; preds = %56
  %66 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @filter_coefs, i32 0, i32 0), align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  store i32* %67, i32** %7, align 8
  br label %68

68:                                               ; preds = %65, %62
  %69 = load %struct.isp_res_device*, %struct.isp_res_device** %3, align 8
  %70 = load i32*, i32** %6, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = call i32 @resizer_set_filters(%struct.isp_res_device* %69, i32* %70, i32* %71)
  ret void
}

declare dso_local %struct.isp_device* @to_isp_device(%struct.isp_res_device*) #1

declare dso_local i32 @isp_reg_readl(%struct.isp_device*, i32, i32) #1

declare dso_local i32 @isp_reg_writel(%struct.isp_device*, i32, i32, i32) #1

declare dso_local i32 @resizer_set_filters(%struct.isp_res_device*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
