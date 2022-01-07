; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-csi2.c_rcsi2_probe_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-csi2.c_rcsi2_probe_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_csi2 = type { i32, i32 }
%struct.platform_device = type { i32 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@rcsi2_irq = common dso_local global i32 0, align 4
@rcsi2_irq_thread = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rcar_csi2*, %struct.platform_device*)* @rcsi2_probe_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcsi2_probe_resources(%struct.rcar_csi2* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rcar_csi2*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rcar_csi2* %0, %struct.rcar_csi2** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %10 = load i32, i32* @IORESOURCE_MEM, align 4
  %11 = call %struct.resource* @platform_get_resource(%struct.platform_device* %9, i32 %10, i32 0)
  store %struct.resource* %11, %struct.resource** %6, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load %struct.resource*, %struct.resource** %6, align 8
  %15 = call i32 @devm_ioremap_resource(i32* %13, %struct.resource* %14)
  %16 = load %struct.rcar_csi2*, %struct.rcar_csi2** %4, align 8
  %17 = getelementptr inbounds %struct.rcar_csi2, %struct.rcar_csi2* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.rcar_csi2*, %struct.rcar_csi2** %4, align 8
  %19 = getelementptr inbounds %struct.rcar_csi2, %struct.rcar_csi2* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @IS_ERR(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load %struct.rcar_csi2*, %struct.rcar_csi2** %4, align 8
  %25 = getelementptr inbounds %struct.rcar_csi2, %struct.rcar_csi2* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @PTR_ERR(i32 %26)
  store i32 %27, i32* %3, align 4
  br label %59

28:                                               ; preds = %2
  %29 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %30 = call i32 @platform_get_irq(%struct.platform_device* %29, i32 0)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %3, align 4
  br label %59

35:                                               ; preds = %28
  %36 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @rcsi2_irq, align 4
  %40 = load i32, i32* @rcsi2_irq_thread, align 4
  %41 = load i32, i32* @IRQF_SHARED, align 4
  %42 = load i32, i32* @KBUILD_MODNAME, align 4
  %43 = load %struct.rcar_csi2*, %struct.rcar_csi2** %4, align 8
  %44 = call i32 @devm_request_threaded_irq(i32* %37, i32 %38, i32 %39, i32 %40, i32 %41, i32 %42, %struct.rcar_csi2* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %35
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %3, align 4
  br label %59

49:                                               ; preds = %35
  %50 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = call i32 @devm_reset_control_get(i32* %51, i32* null)
  %53 = load %struct.rcar_csi2*, %struct.rcar_csi2** %4, align 8
  %54 = getelementptr inbounds %struct.rcar_csi2, %struct.rcar_csi2* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.rcar_csi2*, %struct.rcar_csi2** %4, align 8
  %56 = getelementptr inbounds %struct.rcar_csi2, %struct.rcar_csi2* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @PTR_ERR_OR_ZERO(i32 %57)
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %49, %47, %33, %23
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i32, i32, i32, i32, i32, %struct.rcar_csi2*) #1

declare dso_local i32 @devm_reset_control_get(i32*, i32*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
