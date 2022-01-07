; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/extr_fsl_ifc.c_fsl_ifc_ctrl_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/extr_fsl_ifc.c_fsl_ifc_ctrl_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.fsl_ifc_ctrl = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @fsl_ifc_ctrl_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_ifc_ctrl_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.fsl_ifc_ctrl*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %4, i32 0, i32 0
  %6 = call %struct.fsl_ifc_ctrl* @dev_get_drvdata(i32* %5)
  store %struct.fsl_ifc_ctrl* %6, %struct.fsl_ifc_ctrl** %3, align 8
  %7 = load %struct.fsl_ifc_ctrl*, %struct.fsl_ifc_ctrl** %3, align 8
  %8 = getelementptr inbounds %struct.fsl_ifc_ctrl, %struct.fsl_ifc_ctrl* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.fsl_ifc_ctrl*, %struct.fsl_ifc_ctrl** %3, align 8
  %11 = call i32 @free_irq(i32 %9, %struct.fsl_ifc_ctrl* %10)
  %12 = load %struct.fsl_ifc_ctrl*, %struct.fsl_ifc_ctrl** %3, align 8
  %13 = getelementptr inbounds %struct.fsl_ifc_ctrl, %struct.fsl_ifc_ctrl* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.fsl_ifc_ctrl*, %struct.fsl_ifc_ctrl** %3, align 8
  %16 = call i32 @free_irq(i32 %14, %struct.fsl_ifc_ctrl* %15)
  %17 = load %struct.fsl_ifc_ctrl*, %struct.fsl_ifc_ctrl** %3, align 8
  %18 = getelementptr inbounds %struct.fsl_ifc_ctrl, %struct.fsl_ifc_ctrl* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @irq_dispose_mapping(i32 %19)
  %21 = load %struct.fsl_ifc_ctrl*, %struct.fsl_ifc_ctrl** %3, align 8
  %22 = getelementptr inbounds %struct.fsl_ifc_ctrl, %struct.fsl_ifc_ctrl* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @irq_dispose_mapping(i32 %23)
  %25 = load %struct.fsl_ifc_ctrl*, %struct.fsl_ifc_ctrl** %3, align 8
  %26 = getelementptr inbounds %struct.fsl_ifc_ctrl, %struct.fsl_ifc_ctrl* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @iounmap(i32 %27)
  %29 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = call i32 @dev_set_drvdata(i32* %30, i32* null)
  %32 = load %struct.fsl_ifc_ctrl*, %struct.fsl_ifc_ctrl** %3, align 8
  %33 = call i32 @kfree(%struct.fsl_ifc_ctrl* %32)
  ret i32 0
}

declare dso_local %struct.fsl_ifc_ctrl* @dev_get_drvdata(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.fsl_ifc_ctrl*) #1

declare dso_local i32 @irq_dispose_mapping(i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @dev_set_drvdata(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.fsl_ifc_ctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
