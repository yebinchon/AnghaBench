; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispcsi2.c_csi2_irq_ctx_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispcsi2.c_csi2_irq_ctx_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_device = type { i32 }
%struct.isp_csi2_device = type { i32 }

@ISPCSI2_CTX_IRQSTATUS_FE_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_device*, %struct.isp_csi2_device*, i32)* @csi2_irq_ctx_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csi2_irq_ctx_set(%struct.isp_device* %0, %struct.isp_csi2_device* %1, i32 %2) #0 {
  %4 = alloca %struct.isp_device*, align 8
  %5 = alloca %struct.isp_csi2_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.isp_device* %0, %struct.isp_device** %4, align 8
  store %struct.isp_csi2_device* %1, %struct.isp_csi2_device** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %41, %3
  %9 = load i32, i32* %7, align 4
  %10 = icmp slt i32 %9, 8
  br i1 %10, label %11, label %44

11:                                               ; preds = %8
  %12 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %13 = load i32, i32* @ISPCSI2_CTX_IRQSTATUS_FE_IRQ, align 4
  %14 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %5, align 8
  %15 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @ISPCSI2_CTX_IRQSTATUS(i32 %17)
  %19 = call i32 @isp_reg_writel(%struct.isp_device* %12, i32 %13, i32 %16, i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %11
  %23 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %24 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %5, align 8
  %25 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @ISPCSI2_CTX_IRQENABLE(i32 %27)
  %29 = load i32, i32* @ISPCSI2_CTX_IRQSTATUS_FE_IRQ, align 4
  %30 = call i32 @isp_reg_set(%struct.isp_device* %23, i32 %26, i32 %28, i32 %29)
  br label %40

31:                                               ; preds = %11
  %32 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %33 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %5, align 8
  %34 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @ISPCSI2_CTX_IRQENABLE(i32 %36)
  %38 = load i32, i32* @ISPCSI2_CTX_IRQSTATUS_FE_IRQ, align 4
  %39 = call i32 @isp_reg_clr(%struct.isp_device* %32, i32 %35, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %31, %22
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %8

44:                                               ; preds = %8
  ret void
}

declare dso_local i32 @isp_reg_writel(%struct.isp_device*, i32, i32, i32) #1

declare dso_local i32 @ISPCSI2_CTX_IRQSTATUS(i32) #1

declare dso_local i32 @isp_reg_set(%struct.isp_device*, i32, i32, i32) #1

declare dso_local i32 @ISPCSI2_CTX_IRQENABLE(i32) #1

declare dso_local i32 @isp_reg_clr(%struct.isp_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
