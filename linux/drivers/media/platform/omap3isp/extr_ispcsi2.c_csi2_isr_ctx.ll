; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispcsi2.c_csi2_isr_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispcsi2.c_csi2_isr_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_csi2_device = type { i64, i32, i32, %struct.isp_device* }
%struct.isp_device = type { i32 }
%struct.isp_csi2_ctx_cfg = type { i32, i32 }

@ISPCSI2_CTX_IRQSTATUS_FE_IRQ = common dso_local global i32 0, align 4
@CSI2_OUTPUT_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_csi2_device*, %struct.isp_csi2_ctx_cfg*)* @csi2_isr_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csi2_isr_ctx(%struct.isp_csi2_device* %0, %struct.isp_csi2_ctx_cfg* %1) #0 {
  %3 = alloca %struct.isp_csi2_device*, align 8
  %4 = alloca %struct.isp_csi2_ctx_cfg*, align 8
  %5 = alloca %struct.isp_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.isp_csi2_device* %0, %struct.isp_csi2_device** %3, align 8
  store %struct.isp_csi2_ctx_cfg* %1, %struct.isp_csi2_ctx_cfg** %4, align 8
  %8 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %3, align 8
  %9 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %8, i32 0, i32 3
  %10 = load %struct.isp_device*, %struct.isp_device** %9, align 8
  store %struct.isp_device* %10, %struct.isp_device** %5, align 8
  %11 = load %struct.isp_csi2_ctx_cfg*, %struct.isp_csi2_ctx_cfg** %4, align 8
  %12 = getelementptr inbounds %struct.isp_csi2_ctx_cfg, %struct.isp_csi2_ctx_cfg* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %15 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %3, align 8
  %16 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @ISPCSI2_CTX_IRQSTATUS(i32 %18)
  %20 = call i32 @isp_reg_readl(%struct.isp_device* %14, i32 %17, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %3, align 8
  %24 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @ISPCSI2_CTX_IRQSTATUS(i32 %26)
  %28 = call i32 @isp_reg_writel(%struct.isp_device* %21, i32 %22, i32 %25, i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @ISPCSI2_CTX_IRQSTATUS_FE_IRQ, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %2
  br label %72

34:                                               ; preds = %2
  %35 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %3, align 8
  %36 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %62

39:                                               ; preds = %34
  %40 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %3, align 8
  %41 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, -1
  store i64 %43, i64* %41, align 8
  %44 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %3, align 8
  %45 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %39
  %49 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %3, align 8
  %50 = call i32 @csi2_ctx_map_format(%struct.isp_csi2_device* %49)
  %51 = load %struct.isp_csi2_ctx_cfg*, %struct.isp_csi2_ctx_cfg** %4, align 8
  %52 = getelementptr inbounds %struct.isp_csi2_ctx_cfg, %struct.isp_csi2_ctx_cfg* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %54 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %3, align 8
  %55 = load %struct.isp_csi2_ctx_cfg*, %struct.isp_csi2_ctx_cfg** %4, align 8
  %56 = call i32 @csi2_ctx_config(%struct.isp_device* %53, %struct.isp_csi2_device* %54, %struct.isp_csi2_ctx_cfg* %55)
  %57 = load %struct.isp_device*, %struct.isp_device** %5, align 8
  %58 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %3, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @csi2_ctx_enable(%struct.isp_device* %57, %struct.isp_csi2_device* %58, i32 %59, i32 1)
  br label %61

61:                                               ; preds = %48, %39
  br label %72

62:                                               ; preds = %34
  %63 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %3, align 8
  %64 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @CSI2_OUTPUT_MEMORY, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %3, align 8
  %71 = call i32 @csi2_isr_buffer(%struct.isp_csi2_device* %70)
  br label %72

72:                                               ; preds = %33, %61, %69, %62
  ret void
}

declare dso_local i32 @isp_reg_readl(%struct.isp_device*, i32, i32) #1

declare dso_local i32 @ISPCSI2_CTX_IRQSTATUS(i32) #1

declare dso_local i32 @isp_reg_writel(%struct.isp_device*, i32, i32, i32) #1

declare dso_local i32 @csi2_ctx_map_format(%struct.isp_csi2_device*) #1

declare dso_local i32 @csi2_ctx_config(%struct.isp_device*, %struct.isp_csi2_device*, %struct.isp_csi2_ctx_cfg*) #1

declare dso_local i32 @csi2_ctx_enable(%struct.isp_device*, %struct.isp_csi2_device*, i32, i32) #1

declare dso_local i32 @csi2_isr_buffer(%struct.isp_csi2_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
