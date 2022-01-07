; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-mediatek.c_mediatek_dwmac_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-mediatek.c_mediatek_dwmac_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mediatek_dwmac_plat_data = type { i32, i32, %struct.mediatek_dwmac_variant* }
%struct.mediatek_dwmac_variant = type { i32 (%struct.mediatek_dwmac_plat_data.0*)*, i32 (%struct.mediatek_dwmac_plat_data.1*)*, i32, i32 }
%struct.mediatek_dwmac_plat_data.0 = type opaque
%struct.mediatek_dwmac_plat_data.1 = type opaque

@.str = private unnamed_addr constant [37 x i8] c"No suitable DMA available, err = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"failed to set phy interface, err = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"failed to set delay value, err = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"failed to enable clks, err = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, i8*)* @mediatek_dwmac_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mediatek_dwmac_init(%struct.platform_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mediatek_dwmac_plat_data*, align 8
  %7 = alloca %struct.mediatek_dwmac_variant*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.mediatek_dwmac_plat_data*
  store %struct.mediatek_dwmac_plat_data* %10, %struct.mediatek_dwmac_plat_data** %6, align 8
  %11 = load %struct.mediatek_dwmac_plat_data*, %struct.mediatek_dwmac_plat_data** %6, align 8
  %12 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, %struct.mediatek_dwmac_plat_data* %11, i32 0, i32 2
  %13 = load %struct.mediatek_dwmac_variant*, %struct.mediatek_dwmac_variant** %12, align 8
  store %struct.mediatek_dwmac_variant* %13, %struct.mediatek_dwmac_variant** %7, align 8
  %14 = load %struct.mediatek_dwmac_plat_data*, %struct.mediatek_dwmac_plat_data** %6, align 8
  %15 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, %struct.mediatek_dwmac_plat_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.mediatek_dwmac_variant*, %struct.mediatek_dwmac_variant** %7, align 8
  %18 = getelementptr inbounds %struct.mediatek_dwmac_variant, %struct.mediatek_dwmac_variant* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @DMA_BIT_MASK(i32 %19)
  %21 = call i32 @dma_set_mask_and_coherent(i32 %16, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %2
  %25 = load %struct.mediatek_dwmac_plat_data*, %struct.mediatek_dwmac_plat_data** %6, align 8
  %26 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, %struct.mediatek_dwmac_plat_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @dev_err(i32 %27, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %3, align 4
  br label %87

31:                                               ; preds = %2
  %32 = load %struct.mediatek_dwmac_variant*, %struct.mediatek_dwmac_variant** %7, align 8
  %33 = getelementptr inbounds %struct.mediatek_dwmac_variant, %struct.mediatek_dwmac_variant* %32, i32 0, i32 0
  %34 = load i32 (%struct.mediatek_dwmac_plat_data.0*)*, i32 (%struct.mediatek_dwmac_plat_data.0*)** %33, align 8
  %35 = load %struct.mediatek_dwmac_plat_data*, %struct.mediatek_dwmac_plat_data** %6, align 8
  %36 = bitcast %struct.mediatek_dwmac_plat_data* %35 to %struct.mediatek_dwmac_plat_data.0*
  %37 = call i32 %34(%struct.mediatek_dwmac_plat_data.0* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %31
  %41 = load %struct.mediatek_dwmac_plat_data*, %struct.mediatek_dwmac_plat_data** %6, align 8
  %42 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, %struct.mediatek_dwmac_plat_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %3, align 4
  br label %87

47:                                               ; preds = %31
  %48 = load %struct.mediatek_dwmac_variant*, %struct.mediatek_dwmac_variant** %7, align 8
  %49 = getelementptr inbounds %struct.mediatek_dwmac_variant, %struct.mediatek_dwmac_variant* %48, i32 0, i32 1
  %50 = load i32 (%struct.mediatek_dwmac_plat_data.1*)*, i32 (%struct.mediatek_dwmac_plat_data.1*)** %49, align 8
  %51 = load %struct.mediatek_dwmac_plat_data*, %struct.mediatek_dwmac_plat_data** %6, align 8
  %52 = bitcast %struct.mediatek_dwmac_plat_data* %51 to %struct.mediatek_dwmac_plat_data.1*
  %53 = call i32 %50(%struct.mediatek_dwmac_plat_data.1* %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %47
  %57 = load %struct.mediatek_dwmac_plat_data*, %struct.mediatek_dwmac_plat_data** %6, align 8
  %58 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, %struct.mediatek_dwmac_plat_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @dev_err(i32 %59, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %3, align 4
  br label %87

63:                                               ; preds = %47
  %64 = load %struct.mediatek_dwmac_variant*, %struct.mediatek_dwmac_variant** %7, align 8
  %65 = getelementptr inbounds %struct.mediatek_dwmac_variant, %struct.mediatek_dwmac_variant* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.mediatek_dwmac_plat_data*, %struct.mediatek_dwmac_plat_data** %6, align 8
  %68 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, %struct.mediatek_dwmac_plat_data* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @clk_bulk_prepare_enable(i32 %66, i32 %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %63
  %74 = load %struct.mediatek_dwmac_plat_data*, %struct.mediatek_dwmac_plat_data** %6, align 8
  %75 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, %struct.mediatek_dwmac_plat_data* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @dev_err(i32 %76, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %3, align 4
  br label %87

80:                                               ; preds = %63
  %81 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 0
  %83 = call i32 @pm_runtime_enable(i32* %82)
  %84 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = call i32 @pm_runtime_get_sync(i32* %85)
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %80, %73, %56, %40, %24
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @dma_set_mask_and_coherent(i32, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @clk_bulk_prepare_enable(i32, i32) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
