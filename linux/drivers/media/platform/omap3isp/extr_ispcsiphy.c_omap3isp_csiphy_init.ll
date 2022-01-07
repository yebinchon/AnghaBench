; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispcsiphy.c_omap3isp_csiphy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispcsiphy.c_omap3isp_csiphy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_device = type { i64, i32, i32, %struct.isp_csiphy, %struct.isp_csiphy }
%struct.isp_csiphy = type { i32, i32, i32, i32*, i32, %struct.isp_device* }

@ISP_CSIPHY2_NUM_DATA_LANES = common dso_local global i32 0, align 4
@OMAP3_ISP_IOMEM_CSI2A_REGS1 = common dso_local global i32 0, align 4
@OMAP3_ISP_IOMEM_CSIPHY2 = common dso_local global i32 0, align 4
@ISP_REVISION_15_0 = common dso_local global i64 0, align 8
@ISP_CSIPHY1_NUM_DATA_LANES = common dso_local global i32 0, align 4
@OMAP3_ISP_IOMEM_CSI2C_REGS1 = common dso_local global i32 0, align 4
@OMAP3_ISP_IOMEM_CSIPHY1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap3isp_csiphy_init(%struct.isp_device* %0) #0 {
  %2 = alloca %struct.isp_device*, align 8
  %3 = alloca %struct.isp_csiphy*, align 8
  %4 = alloca %struct.isp_csiphy*, align 8
  store %struct.isp_device* %0, %struct.isp_device** %2, align 8
  %5 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %6 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %5, i32 0, i32 4
  store %struct.isp_csiphy* %6, %struct.isp_csiphy** %3, align 8
  %7 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %8 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %7, i32 0, i32 3
  store %struct.isp_csiphy* %8, %struct.isp_csiphy** %4, align 8
  %9 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %10 = load %struct.isp_csiphy*, %struct.isp_csiphy** %4, align 8
  %11 = getelementptr inbounds %struct.isp_csiphy, %struct.isp_csiphy* %10, i32 0, i32 5
  store %struct.isp_device* %9, %struct.isp_device** %11, align 8
  %12 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %13 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %12, i32 0, i32 2
  %14 = load %struct.isp_csiphy*, %struct.isp_csiphy** %4, align 8
  %15 = getelementptr inbounds %struct.isp_csiphy, %struct.isp_csiphy* %14, i32 0, i32 3
  store i32* %13, i32** %15, align 8
  %16 = load i32, i32* @ISP_CSIPHY2_NUM_DATA_LANES, align 4
  %17 = load %struct.isp_csiphy*, %struct.isp_csiphy** %4, align 8
  %18 = getelementptr inbounds %struct.isp_csiphy, %struct.isp_csiphy* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* @OMAP3_ISP_IOMEM_CSI2A_REGS1, align 4
  %20 = load %struct.isp_csiphy*, %struct.isp_csiphy** %4, align 8
  %21 = getelementptr inbounds %struct.isp_csiphy, %struct.isp_csiphy* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @OMAP3_ISP_IOMEM_CSIPHY2, align 4
  %23 = load %struct.isp_csiphy*, %struct.isp_csiphy** %4, align 8
  %24 = getelementptr inbounds %struct.isp_csiphy, %struct.isp_csiphy* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.isp_csiphy*, %struct.isp_csiphy** %4, align 8
  %26 = getelementptr inbounds %struct.isp_csiphy, %struct.isp_csiphy* %25, i32 0, i32 4
  %27 = call i32 @mutex_init(i32* %26)
  %28 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %29 = load %struct.isp_csiphy*, %struct.isp_csiphy** %3, align 8
  %30 = getelementptr inbounds %struct.isp_csiphy, %struct.isp_csiphy* %29, i32 0, i32 5
  store %struct.isp_device* %28, %struct.isp_device** %30, align 8
  %31 = load %struct.isp_csiphy*, %struct.isp_csiphy** %3, align 8
  %32 = getelementptr inbounds %struct.isp_csiphy, %struct.isp_csiphy* %31, i32 0, i32 4
  %33 = call i32 @mutex_init(i32* %32)
  %34 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %35 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ISP_REVISION_15_0, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %1
  %40 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %41 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %40, i32 0, i32 1
  %42 = load %struct.isp_csiphy*, %struct.isp_csiphy** %3, align 8
  %43 = getelementptr inbounds %struct.isp_csiphy, %struct.isp_csiphy* %42, i32 0, i32 3
  store i32* %41, i32** %43, align 8
  %44 = load i32, i32* @ISP_CSIPHY1_NUM_DATA_LANES, align 4
  %45 = load %struct.isp_csiphy*, %struct.isp_csiphy** %3, align 8
  %46 = getelementptr inbounds %struct.isp_csiphy, %struct.isp_csiphy* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* @OMAP3_ISP_IOMEM_CSI2C_REGS1, align 4
  %48 = load %struct.isp_csiphy*, %struct.isp_csiphy** %3, align 8
  %49 = getelementptr inbounds %struct.isp_csiphy, %struct.isp_csiphy* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @OMAP3_ISP_IOMEM_CSIPHY1, align 4
  %51 = load %struct.isp_csiphy*, %struct.isp_csiphy** %3, align 8
  %52 = getelementptr inbounds %struct.isp_csiphy, %struct.isp_csiphy* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  br label %53

53:                                               ; preds = %39, %1
  ret i32 0
}

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
