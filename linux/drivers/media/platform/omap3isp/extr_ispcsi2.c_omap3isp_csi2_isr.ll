; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispcsi2.c_omap3isp_csi2_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispcsi2.c_omap3isp_csi2_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_csi2_device = type { i32*, i32, i32, i32, i32, %struct.isp_device*, %struct.TYPE_2__ }
%struct.isp_device = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.isp_pipeline = type { i32 }

@ISPCSI2_IRQSTATUS = common dso_local global i32 0, align 4
@ISPCSI2_IRQSTATUS_COMPLEXIO1_ERR_IRQ = common dso_local global i32 0, align 4
@ISPCSI2_PHY_IRQSTATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"CSI2: ComplexIO Error IRQ %x\0A\00", align 1
@ISPCSI2_IRQSTATUS_OCP_ERR_IRQ = common dso_local global i32 0, align 4
@ISPCSI2_IRQSTATUS_SHORT_PACKET_IRQ = common dso_local global i32 0, align 4
@ISPCSI2_IRQSTATUS_ECC_NO_CORRECTION_IRQ = common dso_local global i32 0, align 4
@ISPCSI2_IRQSTATUS_COMPLEXIO2_ERR_IRQ = common dso_local global i32 0, align 4
@ISPCSI2_IRQSTATUS_FIFO_OVF_IRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"CSI2 Err: OCP:%d, Short_pack:%d, ECC:%d, CPXIO2:%d, FIFO_OVF:%d,\0A\00", align 1
@ISPCSI2_IRQSTATUS_ECC_CORRECTION_IRQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"CSI2: ECC correction done\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap3isp_csi2_isr(%struct.isp_csi2_device* %0) #0 {
  %2 = alloca %struct.isp_csi2_device*, align 8
  %3 = alloca %struct.isp_pipeline*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.isp_device*, align 8
  store %struct.isp_csi2_device* %0, %struct.isp_csi2_device** %2, align 8
  %7 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %2, align 8
  %8 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %7, i32 0, i32 6
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call %struct.isp_pipeline* @to_isp_pipeline(i32* %9)
  store %struct.isp_pipeline* %10, %struct.isp_pipeline** %3, align 8
  %11 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %2, align 8
  %12 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %11, i32 0, i32 5
  %13 = load %struct.isp_device*, %struct.isp_device** %12, align 8
  store %struct.isp_device* %13, %struct.isp_device** %6, align 8
  %14 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %2, align 8
  %15 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %138

19:                                               ; preds = %1
  %20 = load %struct.isp_device*, %struct.isp_device** %6, align 8
  %21 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %2, align 8
  %22 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @ISPCSI2_IRQSTATUS, align 4
  %25 = call i32 @isp_reg_readl(%struct.isp_device* %20, i32 %23, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load %struct.isp_device*, %struct.isp_device** %6, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %2, align 8
  %29 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @ISPCSI2_IRQSTATUS, align 4
  %32 = call i32 @isp_reg_writel(%struct.isp_device* %26, i32 %27, i32 %30, i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @ISPCSI2_IRQSTATUS_COMPLEXIO1_ERR_IRQ, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %19
  %38 = load %struct.isp_device*, %struct.isp_device** %6, align 8
  %39 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %2, align 8
  %40 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @ISPCSI2_PHY_IRQSTATUS, align 4
  %43 = call i32 @isp_reg_readl(%struct.isp_device* %38, i32 %41, i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load %struct.isp_device*, %struct.isp_device** %6, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %2, align 8
  %47 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @ISPCSI2_PHY_IRQSTATUS, align 4
  %50 = call i32 @isp_reg_writel(%struct.isp_device* %44, i32 %45, i32 %48, i32 %49)
  %51 = load %struct.isp_device*, %struct.isp_device** %6, align 8
  %52 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 (i32, i8*, ...) @dev_dbg(i32 %53, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load %struct.isp_pipeline*, %struct.isp_pipeline** %3, align 8
  %57 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %56, i32 0, i32 0
  store i32 1, i32* %57, align 4
  br label %58

58:                                               ; preds = %37, %19
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @ISPCSI2_IRQSTATUS_OCP_ERR_IRQ, align 4
  %61 = load i32, i32* @ISPCSI2_IRQSTATUS_SHORT_PACKET_IRQ, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @ISPCSI2_IRQSTATUS_ECC_NO_CORRECTION_IRQ, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @ISPCSI2_IRQSTATUS_COMPLEXIO2_ERR_IRQ, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @ISPCSI2_IRQSTATUS_FIFO_OVF_IRQ, align 4
  %68 = or i32 %66, %67
  %69 = and i32 %59, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %108

71:                                               ; preds = %58
  %72 = load %struct.isp_device*, %struct.isp_device** %6, align 8
  %73 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @ISPCSI2_IRQSTATUS_OCP_ERR_IRQ, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32 1, i32 0
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @ISPCSI2_IRQSTATUS_SHORT_PACKET_IRQ, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i32 1, i32 0
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* @ISPCSI2_IRQSTATUS_ECC_NO_CORRECTION_IRQ, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i32 1, i32 0
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @ISPCSI2_IRQSTATUS_COMPLEXIO2_ERR_IRQ, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i32 1, i32 0
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @ISPCSI2_IRQSTATUS_FIFO_OVF_IRQ, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i32 1, i32 0
  %105 = call i32 (i32, i8*, ...) @dev_dbg(i32 %74, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %80, i32 %86, i32 %92, i32 %98, i32 %104)
  %106 = load %struct.isp_pipeline*, %struct.isp_pipeline** %3, align 8
  %107 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %106, i32 0, i32 0
  store i32 1, i32* %107, align 4
  br label %108

108:                                              ; preds = %71, %58
  %109 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %2, align 8
  %110 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %109, i32 0, i32 2
  %111 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %2, align 8
  %112 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %111, i32 0, i32 1
  %113 = call i64 @omap3isp_module_sync_is_stopping(i32* %110, i32* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %108
  br label %138

116:                                              ; preds = %108
  %117 = load i32, i32* %4, align 4
  %118 = call i32 @ISPCSI2_IRQSTATUS_CONTEXT(i32 0)
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %116
  %122 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %2, align 8
  %123 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %2, align 8
  %124 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  %127 = call i32 @csi2_isr_ctx(%struct.isp_csi2_device* %122, i32* %126)
  br label %128

128:                                              ; preds = %121, %116
  %129 = load i32, i32* %4, align 4
  %130 = load i32, i32* @ISPCSI2_IRQSTATUS_ECC_CORRECTION_IRQ, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %128
  %134 = load %struct.isp_device*, %struct.isp_device** %6, align 8
  %135 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 (i32, i8*, ...) @dev_dbg(i32 %136, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %138

138:                                              ; preds = %18, %115, %133, %128
  ret void
}

declare dso_local %struct.isp_pipeline* @to_isp_pipeline(i32*) #1

declare dso_local i32 @isp_reg_readl(%struct.isp_device*, i32, i32) #1

declare dso_local i32 @isp_reg_writel(%struct.isp_device*, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i64 @omap3isp_module_sync_is_stopping(i32*, i32*) #1

declare dso_local i32 @ISPCSI2_IRQSTATUS_CONTEXT(i32) #1

declare dso_local i32 @csi2_isr_ctx(%struct.isp_csi2_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
