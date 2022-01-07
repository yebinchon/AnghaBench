; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_setup_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_setup_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_device = type { i32, i32, i32, %struct.fsl_mc_device_irq** }
%struct.fsl_mc_device_irq = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"MC irqs allocation failed\0A\00", align 1
@dpni_irq0_handler_thread = common dso_local global i32 0, align 4
@IRQF_NO_SUSPEND = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"devm_request_threaded_irq(): %d\0A\00", align 1
@DPNI_IRQ_INDEX = common dso_local global i32 0, align 4
@DPNI_IRQ_EVENT_LINK_CHANGED = common dso_local global i32 0, align 4
@DPNI_IRQ_EVENT_ENDPOINT_CHANGED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"dpni_set_irq_mask(): %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"dpni_set_irq_enable(): %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_mc_device*)* @setup_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_irqs(%struct.fsl_mc_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsl_mc_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fsl_mc_device_irq*, align 8
  store %struct.fsl_mc_device* %0, %struct.fsl_mc_device** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %7 = call i32 @fsl_mc_allocate_irqs(%struct.fsl_mc_device* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %12 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %11, i32 0, i32 0
  %13 = call i32 (i32*, i8*, ...) @dev_err(i32* %12, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %96

15:                                               ; preds = %1
  %16 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %17 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %16, i32 0, i32 3
  %18 = load %struct.fsl_mc_device_irq**, %struct.fsl_mc_device_irq*** %17, align 8
  %19 = getelementptr inbounds %struct.fsl_mc_device_irq*, %struct.fsl_mc_device_irq** %18, i64 0
  %20 = load %struct.fsl_mc_device_irq*, %struct.fsl_mc_device_irq** %19, align 8
  store %struct.fsl_mc_device_irq* %20, %struct.fsl_mc_device_irq** %5, align 8
  %21 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %22 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %21, i32 0, i32 0
  %23 = load %struct.fsl_mc_device_irq*, %struct.fsl_mc_device_irq** %5, align 8
  %24 = getelementptr inbounds %struct.fsl_mc_device_irq, %struct.fsl_mc_device_irq* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @dpni_irq0_handler_thread, align 4
  %29 = load i32, i32* @IRQF_NO_SUSPEND, align 4
  %30 = load i32, i32* @IRQF_ONESHOT, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %33 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %32, i32 0, i32 0
  %34 = call i32 @dev_name(i32* %33)
  %35 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %36 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %35, i32 0, i32 0
  %37 = call i32 @devm_request_threaded_irq(i32* %22, i32 %27, i32* null, i32 %28, i32 %31, i32 %34, i32* %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %15
  %41 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %42 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %41, i32 0, i32 0
  %43 = load i32, i32* %4, align 4
  %44 = call i32 (i32*, i8*, ...) @dev_err(i32* %42, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %92

45:                                               ; preds = %15
  %46 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %47 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %50 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @DPNI_IRQ_INDEX, align 4
  %53 = load i32, i32* @DPNI_IRQ_EVENT_LINK_CHANGED, align 4
  %54 = load i32, i32* @DPNI_IRQ_EVENT_ENDPOINT_CHANGED, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @dpni_set_irq_mask(i32 %48, i32 0, i32 %51, i32 %52, i32 %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %45
  %60 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %61 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %60, i32 0, i32 0
  %62 = load i32, i32* %4, align 4
  %63 = call i32 (i32*, i8*, ...) @dev_err(i32* %61, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  br label %81

64:                                               ; preds = %45
  %65 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %66 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %69 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @DPNI_IRQ_INDEX, align 4
  %72 = call i32 @dpni_set_irq_enable(i32 %67, i32 0, i32 %70, i32 %71, i32 1)
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* %4, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %64
  %76 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %77 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %76, i32 0, i32 0
  %78 = load i32, i32* %4, align 4
  %79 = call i32 (i32*, i8*, ...) @dev_err(i32* %77, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  br label %81

80:                                               ; preds = %64
  store i32 0, i32* %2, align 4
  br label %96

81:                                               ; preds = %75, %59
  %82 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %83 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %82, i32 0, i32 0
  %84 = load %struct.fsl_mc_device_irq*, %struct.fsl_mc_device_irq** %5, align 8
  %85 = getelementptr inbounds %struct.fsl_mc_device_irq, %struct.fsl_mc_device_irq* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %90 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %89, i32 0, i32 0
  %91 = call i32 @devm_free_irq(i32* %83, i32 %88, i32* %90)
  br label %92

92:                                               ; preds = %81, %40
  %93 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %94 = call i32 @fsl_mc_free_irqs(%struct.fsl_mc_device* %93)
  %95 = load i32, i32* %4, align 4
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %92, %80, %10
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @fsl_mc_allocate_irqs(%struct.fsl_mc_device*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i32, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @dpni_set_irq_mask(i32, i32, i32, i32, i32) #1

declare dso_local i32 @dpni_set_irq_enable(i32, i32, i32, i32, i32) #1

declare dso_local i32 @devm_free_irq(i32*, i32, i32*) #1

declare dso_local i32 @fsl_mc_free_irqs(%struct.fsl_mc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
