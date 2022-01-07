; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_ccdc_has_all_fields.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccdc.c_ccdc_has_all_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_ccdc_device = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.isp_pipeline = type { i32 }
%struct.isp_device = type { i32 }

@CCDC_PAD_SOURCE_OF = common dso_local global i64 0, align 8
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@OMAP3_ISP_IOMEM_CCDC = common dso_local global i32 0, align 4
@ISPCCDC_SYN_MODE = common dso_local global i32 0, align 4
@ISPCCDC_SYN_MODE_FLDSTAT = common dso_local global i32 0, align 4
@V4L2_FIELD_BOTTOM = common dso_local global i32 0, align 4
@V4L2_FIELD_TOP = common dso_local global i32 0, align 4
@V4L2_FIELD_ALTERNATE = common dso_local global i32 0, align 4
@CCDC_FIELD_BOTTOM = common dso_local global i32 0, align 4
@CCDC_FIELD_TOP = common dso_local global i32 0, align 4
@CCDC_FIELD_BOTH = common dso_local global i32 0, align 4
@V4L2_FIELD_INTERLACED_TB = common dso_local global i32 0, align 4
@V4L2_FIELD_INTERLACED_BT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isp_ccdc_device*)* @ccdc_has_all_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccdc_has_all_fields(%struct.isp_ccdc_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.isp_ccdc_device*, align 8
  %4 = alloca %struct.isp_pipeline*, align 8
  %5 = alloca %struct.isp_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.isp_ccdc_device* %0, %struct.isp_ccdc_device** %3, align 8
  %8 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %3, align 8
  %9 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = call %struct.isp_pipeline* @to_isp_pipeline(i32* %10)
  store %struct.isp_pipeline* %11, %struct.isp_pipeline** %4, align 8
  %12 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %3, align 8
  %13 = call %struct.isp_device* @to_isp_device(%struct.isp_ccdc_device* %12)
  store %struct.isp_device* %13, %struct.isp_device** %5, align 8
  %14 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %3, align 8
  %15 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = load i64, i64* @CCDC_PAD_SOURCE_OF, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %86

25:                                               ; preds = %1
  %26 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %27 = load i32, i32* @OMAP3_ISP_IOMEM_CCDC, align 4
  %28 = load i32, i32* @ISPCCDC_SYN_MODE, align 4
  %29 = call i32 @isp_reg_readl(%struct.isp_device* %26, i32 %27, i32 %28)
  %30 = load i32, i32* @ISPCCDC_SYN_MODE_FLDSTAT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* @V4L2_FIELD_BOTTOM, align 4
  br label %37

35:                                               ; preds = %25
  %36 = load i32, i32* @V4L2_FIELD_TOP, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @V4L2_FIELD_ALTERNATE, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.isp_pipeline*, %struct.isp_pipeline** %4, align 8
  %45 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  store i32 1, i32* %2, align 4
  br label %86

46:                                               ; preds = %37
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @V4L2_FIELD_BOTTOM, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* @CCDC_FIELD_BOTTOM, align 4
  br label %54

52:                                               ; preds = %46
  %53 = load i32, i32* @CCDC_FIELD_TOP, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  %56 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %3, align 8
  %57 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  %60 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %3, align 8
  %61 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @CCDC_FIELD_BOTH, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %86

66:                                               ; preds = %54
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @V4L2_FIELD_INTERLACED_TB, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @V4L2_FIELD_TOP, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %82, label %74

74:                                               ; preds = %70, %66
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @V4L2_FIELD_INTERLACED_BT, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @V4L2_FIELD_BOTTOM, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %78, %70
  store i32 0, i32* %2, align 4
  br label %86

83:                                               ; preds = %78, %74
  %84 = load %struct.isp_ccdc_device*, %struct.isp_ccdc_device** %3, align 8
  %85 = getelementptr inbounds %struct.isp_ccdc_device, %struct.isp_ccdc_device* %84, i32 0, i32 0
  store i32 0, i32* %85, align 8
  store i32 1, i32* %2, align 4
  br label %86

86:                                               ; preds = %83, %82, %65, %42, %24
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local %struct.isp_pipeline* @to_isp_pipeline(i32*) #1

declare dso_local %struct.isp_device* @to_isp_device(%struct.isp_ccdc_device*) #1

declare dso_local i32 @isp_reg_readl(%struct.isp_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
