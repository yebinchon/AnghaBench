; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/extr_omap-gpmc.c_gpmc_irq_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/extr_omap-gpmc.c_gpmc_irq_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.gpmc_device* }
%struct.gpmc_device = type { i32 }

@GPMC_NR_NAND_IRQS = common dso_local global i64 0, align 8
@IRQ_NOREQUEST = common dso_local global i32 0, align 4
@IRQ_NOAUTOEN = common dso_local global i32 0, align 4
@handle_simple_irq = common dso_local global i32 0, align 4
@handle_edge_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i64)* @gpmc_irq_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpmc_irq_map(%struct.irq_domain* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.irq_domain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.gpmc_device*, align 8
  store %struct.irq_domain* %0, %struct.irq_domain** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %9 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %8, i32 0, i32 0
  %10 = load %struct.gpmc_device*, %struct.gpmc_device** %9, align 8
  store %struct.gpmc_device* %10, %struct.gpmc_device** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.gpmc_device*, %struct.gpmc_device** %7, align 8
  %13 = call i32 @irq_set_chip_data(i32 %11, %struct.gpmc_device* %12)
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @GPMC_NR_NAND_IRQS, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @IRQ_NOREQUEST, align 4
  %20 = load i32, i32* @IRQ_NOAUTOEN, align 4
  %21 = call i32 @irq_modify_status(i32 %18, i32 %19, i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.gpmc_device*, %struct.gpmc_device** %7, align 8
  %24 = getelementptr inbounds %struct.gpmc_device, %struct.gpmc_device* %23, i32 0, i32 0
  %25 = load i32, i32* @handle_simple_irq, align 4
  %26 = call i32 @irq_set_chip_and_handler(i32 %22, i32* %24, i32 %25)
  br label %33

27:                                               ; preds = %3
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.gpmc_device*, %struct.gpmc_device** %7, align 8
  %30 = getelementptr inbounds %struct.gpmc_device, %struct.gpmc_device* %29, i32 0, i32 0
  %31 = load i32, i32* @handle_edge_irq, align 4
  %32 = call i32 @irq_set_chip_and_handler(i32 %28, i32* %30, i32 %31)
  br label %33

33:                                               ; preds = %27, %17
  ret i32 0
}

declare dso_local i32 @irq_set_chip_data(i32, %struct.gpmc_device*) #1

declare dso_local i32 @irq_modify_status(i32, i32, i32) #1

declare dso_local i32 @irq_set_chip_and_handler(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
