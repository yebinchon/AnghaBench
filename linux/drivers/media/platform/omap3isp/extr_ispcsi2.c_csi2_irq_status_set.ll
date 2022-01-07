; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispcsi2.c_csi2_irq_status_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispcsi2.c_csi2_irq_status_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_device = type { i32 }
%struct.isp_csi2_device = type { i32 }

@ISPCSI2_IRQSTATUS_OCP_ERR_IRQ = common dso_local global i32 0, align 4
@ISPCSI2_IRQSTATUS_SHORT_PACKET_IRQ = common dso_local global i32 0, align 4
@ISPCSI2_IRQSTATUS_ECC_CORRECTION_IRQ = common dso_local global i32 0, align 4
@ISPCSI2_IRQSTATUS_ECC_NO_CORRECTION_IRQ = common dso_local global i32 0, align 4
@ISPCSI2_IRQSTATUS_COMPLEXIO2_ERR_IRQ = common dso_local global i32 0, align 4
@ISPCSI2_IRQSTATUS_COMPLEXIO1_ERR_IRQ = common dso_local global i32 0, align 4
@ISPCSI2_IRQSTATUS_FIFO_OVF_IRQ = common dso_local global i32 0, align 4
@ISPCSI2_IRQSTATUS = common dso_local global i32 0, align 4
@ISPCSI2_IRQENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_device*, %struct.isp_csi2_device*, i32)* @csi2_irq_status_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csi2_irq_status_set(%struct.isp_device* %0, %struct.isp_csi2_device* %1, i32 %2) #0 {
  %4 = alloca %struct.isp_device*, align 8
  %5 = alloca %struct.isp_csi2_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.isp_device* %0, %struct.isp_device** %4, align 8
  store %struct.isp_csi2_device* %1, %struct.isp_csi2_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @ISPCSI2_IRQSTATUS_OCP_ERR_IRQ, align 4
  %9 = load i32, i32* @ISPCSI2_IRQSTATUS_SHORT_PACKET_IRQ, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @ISPCSI2_IRQSTATUS_ECC_CORRECTION_IRQ, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @ISPCSI2_IRQSTATUS_ECC_NO_CORRECTION_IRQ, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @ISPCSI2_IRQSTATUS_COMPLEXIO2_ERR_IRQ, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @ISPCSI2_IRQSTATUS_COMPLEXIO1_ERR_IRQ, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @ISPCSI2_IRQSTATUS_FIFO_OVF_IRQ, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @ISPCSI2_IRQSTATUS_CONTEXT(i32 0)
  %22 = or i32 %20, %21
  store i32 %22, i32* %7, align 4
  %23 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %5, align 8
  %26 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ISPCSI2_IRQSTATUS, align 4
  %29 = call i32 @isp_reg_writel(%struct.isp_device* %23, i32 %24, i32 %27, i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %3
  %33 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %34 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %5, align 8
  %35 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @ISPCSI2_IRQENABLE, align 4
  %38 = call i32 @isp_reg_readl(%struct.isp_device* %33, i32 %36, i32 %37)
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %7, align 4
  br label %42

41:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %41, %32
  %43 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %5, align 8
  %46 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @ISPCSI2_IRQENABLE, align 4
  %49 = call i32 @isp_reg_writel(%struct.isp_device* %43, i32 %44, i32 %47, i32 %48)
  ret void
}

declare dso_local i32 @ISPCSI2_IRQSTATUS_CONTEXT(i32) #1

declare dso_local i32 @isp_reg_writel(%struct.isp_device*, i32, i32, i32) #1

declare dso_local i32 @isp_reg_readl(%struct.isp_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
