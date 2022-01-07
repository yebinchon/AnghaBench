; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_au1000_eth.c_au1000_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_au1000_eth.c_au1000_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.net_device = type { i32 }
%struct.au1000_private = type { i32, i32, i32, i32, i64, i64*, i64*, i32 }
%struct.resource = type { i32 }

@NUM_RX_DMA = common dso_local global i32 0, align 4
@NUM_TX_DMA = common dso_local global i32 0, align 4
@MAX_BUF_SIZE = common dso_local global i32 0, align 4
@NUM_TX_BUFFS = common dso_local global i32 0, align 4
@NUM_RX_BUFFS = common dso_local global i32 0, align 4
@DMA_ATTR_NON_CONSISTENT = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @au1000_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1000_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.au1000_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %9 = call %struct.net_device* @platform_get_drvdata(%struct.platform_device* %8)
  store %struct.net_device* %9, %struct.net_device** %3, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.au1000_private* @netdev_priv(%struct.net_device* %10)
  store %struct.au1000_private* %11, %struct.au1000_private** %4, align 8
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = call i32 @unregister_netdev(%struct.net_device* %12)
  %14 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %15 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %14, i32 0, i32 7
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @mdiobus_unregister(i32 %16)
  %18 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %19 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @mdiobus_free(i32 %20)
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %46, %1
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @NUM_RX_DMA, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %49

26:                                               ; preds = %22
  %27 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %28 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %27, i32 0, i32 6
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %26
  %36 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %37 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %38 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %37, i32 0, i32 6
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @au1000_ReleaseDB(%struct.au1000_private* %36, i64 %43)
  br label %45

45:                                               ; preds = %35, %26
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %22

49:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %74, %49
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @NUM_TX_DMA, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %77

54:                                               ; preds = %50
  %55 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %56 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %55, i32 0, i32 5
  %57 = load i64*, i64** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %54
  %64 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %65 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %66 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %65, i32 0, i32 5
  %67 = load i64*, i64** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @au1000_ReleaseDB(%struct.au1000_private* %64, i64 %71)
  br label %73

73:                                               ; preds = %63, %54
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %50

77:                                               ; preds = %50
  %78 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = load i32, i32* @MAX_BUF_SIZE, align 4
  %81 = load i32, i32* @NUM_TX_BUFFS, align 4
  %82 = load i32, i32* @NUM_RX_BUFFS, align 4
  %83 = add nsw i32 %81, %82
  %84 = mul nsw i32 %80, %83
  %85 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %86 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = inttoptr i64 %87 to i8*
  %89 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %90 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @DMA_ATTR_NON_CONSISTENT, align 4
  %93 = call i32 @dma_free_attrs(i32* %79, i32 %84, i8* %88, i32 %91, i32 %92)
  %94 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %95 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @iounmap(i32 %96)
  %98 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %99 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @iounmap(i32 %100)
  %102 = load %struct.au1000_private*, %struct.au1000_private** %4, align 8
  %103 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @iounmap(i32 %104)
  %106 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %107 = load i32, i32* @IORESOURCE_MEM, align 4
  %108 = call %struct.resource* @platform_get_resource(%struct.platform_device* %106, i32 %107, i32 2)
  store %struct.resource* %108, %struct.resource** %6, align 8
  %109 = load %struct.resource*, %struct.resource** %6, align 8
  %110 = getelementptr inbounds %struct.resource, %struct.resource* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.resource*, %struct.resource** %6, align 8
  %113 = call i32 @resource_size(%struct.resource* %112)
  %114 = call i32 @release_mem_region(i32 %111, i32 %113)
  %115 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %116 = load i32, i32* @IORESOURCE_MEM, align 4
  %117 = call %struct.resource* @platform_get_resource(%struct.platform_device* %115, i32 %116, i32 0)
  store %struct.resource* %117, %struct.resource** %6, align 8
  %118 = load %struct.resource*, %struct.resource** %6, align 8
  %119 = getelementptr inbounds %struct.resource, %struct.resource* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.resource*, %struct.resource** %6, align 8
  %122 = call i32 @resource_size(%struct.resource* %121)
  %123 = call i32 @release_mem_region(i32 %120, i32 %122)
  %124 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %125 = load i32, i32* @IORESOURCE_MEM, align 4
  %126 = call %struct.resource* @platform_get_resource(%struct.platform_device* %124, i32 %125, i32 1)
  store %struct.resource* %126, %struct.resource** %7, align 8
  %127 = load %struct.resource*, %struct.resource** %7, align 8
  %128 = getelementptr inbounds %struct.resource, %struct.resource* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.resource*, %struct.resource** %7, align 8
  %131 = call i32 @resource_size(%struct.resource* %130)
  %132 = call i32 @release_mem_region(i32 %129, i32 %131)
  %133 = load %struct.net_device*, %struct.net_device** %3, align 8
  %134 = call i32 @free_netdev(%struct.net_device* %133)
  ret i32 0
}

declare dso_local %struct.net_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.au1000_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @mdiobus_unregister(i32) #1

declare dso_local i32 @mdiobus_free(i32) #1

declare dso_local i32 @au1000_ReleaseDB(%struct.au1000_private*, i64) #1

declare dso_local i32 @dma_free_attrs(i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
