; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccp2.c_ccp2_if_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispccp2.c_ccp2_if_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_ccp2_device = type { i64 }
%struct.isp_device = type { i32 }

@CCP2_LCx_CHANS_NUM = common dso_local global i32 0, align 4
@OMAP3_ISP_IOMEM_CCP2 = common dso_local global i32 0, align 4
@ISPCCP2_LCx_CTRL_CHAN_EN = common dso_local global i32 0, align 4
@ISPCCP2_CTRL = common dso_local global i32 0, align 4
@ISPCCP2_CTRL_MODE = common dso_local global i32 0, align 4
@ISPCCP2_CTRL_IF_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isp_ccp2_device*, i64)* @ccp2_if_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccp2_if_enable(%struct.isp_ccp2_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.isp_ccp2_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.isp_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.isp_ccp2_device* %0, %struct.isp_ccp2_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %4, align 8
  %10 = call %struct.isp_device* @to_isp_device(%struct.isp_ccp2_device* %9)
  store %struct.isp_device* %10, %struct.isp_device** %6, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %2
  %14 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %4, align 8
  %15 = getelementptr inbounds %struct.isp_ccp2_device, %struct.isp_ccp2_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %4, align 8
  %20 = getelementptr inbounds %struct.isp_ccp2_device, %struct.isp_ccp2_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @regulator_enable(i64 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %80

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %27, %13, %2
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %47, %28
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @CCP2_LCx_CHANS_NUM, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %50

33:                                               ; preds = %29
  %34 = load %struct.isp_device*, %struct.isp_device** %6, align 8
  %35 = load i32, i32* @OMAP3_ISP_IOMEM_CCP2, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @ISPCCP2_LCx_CTRL(i32 %36)
  %38 = load i32, i32* @ISPCCP2_LCx_CTRL_CHAN_EN, align 4
  %39 = load i64, i64* %5, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* @ISPCCP2_LCx_CTRL_CHAN_EN, align 4
  br label %44

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %41
  %45 = phi i32 [ %42, %41 ], [ 0, %43 ]
  %46 = call i32 @isp_reg_clr_set(%struct.isp_device* %34, i32 %35, i32 %37, i32 %38, i32 %45)
  br label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %29

50:                                               ; preds = %29
  %51 = load %struct.isp_device*, %struct.isp_device** %6, align 8
  %52 = load i32, i32* @OMAP3_ISP_IOMEM_CCP2, align 4
  %53 = load i32, i32* @ISPCCP2_CTRL, align 4
  %54 = load i32, i32* @ISPCCP2_CTRL_MODE, align 4
  %55 = load i32, i32* @ISPCCP2_CTRL_IF_EN, align 4
  %56 = or i32 %54, %55
  %57 = load i64, i64* %5, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %50
  %60 = load i32, i32* @ISPCCP2_CTRL_MODE, align 4
  %61 = load i32, i32* @ISPCCP2_CTRL_IF_EN, align 4
  %62 = or i32 %60, %61
  br label %64

63:                                               ; preds = %50
  br label %64

64:                                               ; preds = %63, %59
  %65 = phi i32 [ %62, %59 ], [ 0, %63 ]
  %66 = call i32 @isp_reg_clr_set(%struct.isp_device* %51, i32 %52, i32 %53, i32 %56, i32 %65)
  %67 = load i64, i64* %5, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %79, label %69

69:                                               ; preds = %64
  %70 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %4, align 8
  %71 = getelementptr inbounds %struct.isp_ccp2_device, %struct.isp_ccp2_device* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load %struct.isp_ccp2_device*, %struct.isp_ccp2_device** %4, align 8
  %76 = getelementptr inbounds %struct.isp_ccp2_device, %struct.isp_ccp2_device* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @regulator_disable(i64 %77)
  br label %79

79:                                               ; preds = %74, %69, %64
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %25
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.isp_device* @to_isp_device(%struct.isp_ccp2_device*) #1

declare dso_local i32 @regulator_enable(i64) #1

declare dso_local i32 @isp_reg_clr_set(%struct.isp_device*, i32, i32, i32, i32) #1

declare dso_local i32 @ISPCCP2_LCx_CTRL(i32) #1

declare dso_local i32 @regulator_disable(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
