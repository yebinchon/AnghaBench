; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunqe.c_qec_sbus_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunqe.c_qec_sbus_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32* }
%struct.sunqe = type { i32, i32, i32, i32, i32, i32, %struct.net_device* }
%struct.net_device = type { i32 }

@CREG_REG_SIZE = common dso_local global i32 0, align 4
@MREGS_REG_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @qec_sbus_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qec_sbus_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.sunqe*, align 8
  %4 = alloca %struct.net_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.sunqe* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.sunqe* %6, %struct.sunqe** %3, align 8
  %7 = load %struct.sunqe*, %struct.sunqe** %3, align 8
  %8 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %7, i32 0, i32 6
  %9 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %9, %struct.net_device** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call i32 @unregister_netdev(%struct.net_device* %10)
  %12 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load %struct.sunqe*, %struct.sunqe** %3, align 8
  %17 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @CREG_REG_SIZE, align 4
  %20 = call i32 @of_iounmap(i32* %15, i32 %18, i32 %19)
  %21 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load %struct.sunqe*, %struct.sunqe** %3, align 8
  %26 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @MREGS_REG_SIZE, align 4
  %29 = call i32 @of_iounmap(i32* %24, i32 %27, i32 %28)
  %30 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = load i32, i32* @PAGE_SIZE, align 4
  %33 = load %struct.sunqe*, %struct.sunqe** %3, align 8
  %34 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.sunqe*, %struct.sunqe** %3, align 8
  %37 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @dma_free_coherent(i32* %31, i32 %32, i32 %35, i32 %38)
  %40 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = load %struct.sunqe*, %struct.sunqe** %3, align 8
  %43 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.sunqe*, %struct.sunqe** %3, align 8
  %46 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @dma_free_coherent(i32* %41, i32 4, i32 %44, i32 %47)
  %49 = load %struct.net_device*, %struct.net_device** %4, align 8
  %50 = call i32 @free_netdev(%struct.net_device* %49)
  ret i32 0
}

declare dso_local %struct.sunqe* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @of_iounmap(i32*, i32, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
