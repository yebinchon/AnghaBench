; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispcsi2.c_csi2_ctx_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispcsi2.c_csi2_ctx_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_device = type { i32 }
%struct.isp_csi2_device = type { i32, i32, i32, %struct.isp_csi2_ctx_cfg* }
%struct.isp_csi2_ctx_cfg = type { i64 }

@CSI2_OUTPUT_MEMORY = common dso_local global i32 0, align 4
@ISPCSI2_CTX_CTRL1_COUNT_MASK = common dso_local global i32 0, align 4
@ISPCSI2_CTX_CTRL1_COUNT_UNLOCK = common dso_local global i32 0, align 4
@ISPCSI2_CTX_CTRL1_COUNT_SHIFT = common dso_local global i32 0, align 4
@ISPCSI2_CTX_CTRL1_CTX_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_device*, %struct.isp_csi2_device*, i64, i64)* @csi2_ctx_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csi2_ctx_enable(%struct.isp_device* %0, %struct.isp_csi2_device* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.isp_device*, align 8
  %6 = alloca %struct.isp_csi2_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.isp_csi2_ctx_cfg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.isp_device* %0, %struct.isp_device** %5, align 8
  store %struct.isp_csi2_device* %1, %struct.isp_csi2_device** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %6, align 8
  %13 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %12, i32 0, i32 3
  %14 = load %struct.isp_csi2_ctx_cfg*, %struct.isp_csi2_ctx_cfg** %13, align 8
  %15 = load i64, i64* %7, align 8
  %16 = getelementptr inbounds %struct.isp_csi2_ctx_cfg, %struct.isp_csi2_ctx_cfg* %14, i64 %15
  store %struct.isp_csi2_ctx_cfg* %16, %struct.isp_csi2_ctx_cfg** %9, align 8
  store i32 0, i32* %10, align 4
  %17 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %18 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %6, align 8
  %19 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @ISPCSI2_CTX_CTRL1(i64 %21)
  %23 = call i32 @isp_reg_readl(%struct.isp_device* %17, i32 %20, i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load i64, i64* %8, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %58

26:                                               ; preds = %4
  %27 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %6, align 8
  %28 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %6, align 8
  %33 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %10, align 4
  br label %44

35:                                               ; preds = %26
  %36 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %6, align 8
  %37 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @CSI2_OUTPUT_MEMORY, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32 1, i32* %10, align 4
  br label %43

43:                                               ; preds = %42, %35
  br label %44

44:                                               ; preds = %43, %31
  %45 = load i32, i32* @ISPCSI2_CTX_CTRL1_COUNT_MASK, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %11, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* @ISPCSI2_CTX_CTRL1_COUNT_UNLOCK, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @ISPCSI2_CTX_CTRL1_COUNT_SHIFT, align 4
  %52 = shl i32 %50, %51
  %53 = or i32 %49, %52
  %54 = load i32, i32* @ISPCSI2_CTX_CTRL1_CTX_EN, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* %11, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %11, align 4
  br label %63

58:                                               ; preds = %4
  %59 = load i32, i32* @ISPCSI2_CTX_CTRL1_CTX_EN, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %11, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %11, align 4
  br label %63

63:                                               ; preds = %58, %44
  %64 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %6, align 8
  %67 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i64, i64* %7, align 8
  %70 = call i32 @ISPCSI2_CTX_CTRL1(i64 %69)
  %71 = call i32 @isp_reg_writel(%struct.isp_device* %64, i32 %65, i32 %68, i32 %70)
  %72 = load i64, i64* %8, align 8
  %73 = load %struct.isp_csi2_ctx_cfg*, %struct.isp_csi2_ctx_cfg** %9, align 8
  %74 = getelementptr inbounds %struct.isp_csi2_ctx_cfg, %struct.isp_csi2_ctx_cfg* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  ret void
}

declare dso_local i32 @isp_reg_readl(%struct.isp_device*, i32, i32) #1

declare dso_local i32 @ISPCSI2_CTX_CTRL1(i64) #1

declare dso_local i32 @isp_reg_writel(%struct.isp_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
