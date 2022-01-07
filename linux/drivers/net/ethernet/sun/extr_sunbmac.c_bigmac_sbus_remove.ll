; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunbmac.c_bigmac_sbus_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunbmac.c_bigmac_sbus_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.bigmac = type { i32, i32, i32, i32, i32, i32, %struct.net_device* }
%struct.net_device = type { i32 }

@GLOB_REG_SIZE = common dso_local global i32 0, align 4
@CREG_REG_SIZE = common dso_local global i32 0, align 4
@BMAC_REG_SIZE = common dso_local global i32 0, align 4
@TCVR_REG_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @bigmac_sbus_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bigmac_sbus_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.bigmac*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.platform_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = call %struct.bigmac* @platform_get_drvdata(%struct.platform_device* %7)
  store %struct.bigmac* %8, %struct.bigmac** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.bigmac*, %struct.bigmac** %3, align 8
  %14 = getelementptr inbounds %struct.bigmac, %struct.bigmac* %13, i32 0, i32 6
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %5, align 8
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = call %struct.platform_device* @to_platform_device(%struct.device* %16)
  store %struct.platform_device* %17, %struct.platform_device** %6, align 8
  %18 = load %struct.net_device*, %struct.net_device** %5, align 8
  %19 = call i32 @unregister_netdev(%struct.net_device* %18)
  %20 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load %struct.bigmac*, %struct.bigmac** %3, align 8
  %25 = getelementptr inbounds %struct.bigmac, %struct.bigmac* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @GLOB_REG_SIZE, align 4
  %28 = call i32 @of_iounmap(i32* %23, i32 %26, i32 %27)
  %29 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load %struct.bigmac*, %struct.bigmac** %3, align 8
  %34 = getelementptr inbounds %struct.bigmac, %struct.bigmac* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @CREG_REG_SIZE, align 4
  %37 = call i32 @of_iounmap(i32* %32, i32 %35, i32 %36)
  %38 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load %struct.bigmac*, %struct.bigmac** %3, align 8
  %43 = getelementptr inbounds %struct.bigmac, %struct.bigmac* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @BMAC_REG_SIZE, align 4
  %46 = call i32 @of_iounmap(i32* %41, i32 %44, i32 %45)
  %47 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  %51 = load %struct.bigmac*, %struct.bigmac** %3, align 8
  %52 = getelementptr inbounds %struct.bigmac, %struct.bigmac* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @TCVR_REG_SIZE, align 4
  %55 = call i32 @of_iounmap(i32* %50, i32 %53, i32 %54)
  %56 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = load i32, i32* @PAGE_SIZE, align 4
  %59 = load %struct.bigmac*, %struct.bigmac** %3, align 8
  %60 = getelementptr inbounds %struct.bigmac, %struct.bigmac* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.bigmac*, %struct.bigmac** %3, align 8
  %63 = getelementptr inbounds %struct.bigmac, %struct.bigmac* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @dma_free_coherent(%struct.TYPE_2__* %57, i32 %58, i32 %61, i32 %64)
  %66 = load %struct.net_device*, %struct.net_device** %5, align 8
  %67 = call i32 @free_netdev(%struct.net_device* %66)
  ret i32 0
}

declare dso_local %struct.bigmac* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @of_iounmap(i32*, i32, i32) #1

declare dso_local i32 @dma_free_coherent(%struct.TYPE_2__*, i32, i32, i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
