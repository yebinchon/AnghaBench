; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene-v2/extr_main.c_xge_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene-v2/extr_main.c_xge_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.net_device = type { i32, i32, i32* }
%struct.xge_pdata = type { i32, %struct.net_device*, %struct.platform_device* }

@ENOMEM = common dso_local global i32 0, align 4
@xgene_ndev_ops = common dso_local global i32 0, align 4
@NETIF_F_GSO = common dso_local global i32 0, align 4
@NETIF_F_GRO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"No usable DMA configuration\0A\00", align 1
@xge_napi = common dso_local global i32 0, align 4
@NAPI_POLL_WEIGHT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to register netdev\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @xge_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xge_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.xge_pdata*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = call %struct.net_device* @alloc_etherdev(i32 24)
  store %struct.net_device* %10, %struct.net_device** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = icmp ne %struct.net_device* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %92

16:                                               ; preds = %1
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = call %struct.xge_pdata* @netdev_priv(%struct.net_device* %17)
  store %struct.xge_pdata* %18, %struct.xge_pdata** %6, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = load %struct.xge_pdata*, %struct.xge_pdata** %6, align 8
  %21 = getelementptr inbounds %struct.xge_pdata, %struct.xge_pdata* %20, i32 0, i32 2
  store %struct.platform_device* %19, %struct.platform_device** %21, align 8
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = load %struct.xge_pdata*, %struct.xge_pdata** %6, align 8
  %24 = getelementptr inbounds %struct.xge_pdata, %struct.xge_pdata* %23, i32 0, i32 1
  store %struct.net_device* %22, %struct.net_device** %24, align 8
  %25 = load %struct.net_device*, %struct.net_device** %5, align 8
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = call i32 @SET_NETDEV_DEV(%struct.net_device* %25, %struct.device* %26)
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = load %struct.xge_pdata*, %struct.xge_pdata** %6, align 8
  %30 = call i32 @platform_set_drvdata(%struct.platform_device* %28, %struct.xge_pdata* %29)
  %31 = load %struct.net_device*, %struct.net_device** %5, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 2
  store i32* @xgene_ndev_ops, i32** %32, align 8
  %33 = load i32, i32* @NETIF_F_GSO, align 4
  %34 = load i32, i32* @NETIF_F_GRO, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.net_device*, %struct.net_device** %5, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load %struct.xge_pdata*, %struct.xge_pdata** %6, align 8
  %41 = call i32 @xge_get_resources(%struct.xge_pdata* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %16
  br label %88

45:                                               ; preds = %16
  %46 = load %struct.net_device*, %struct.net_device** %5, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.net_device*, %struct.net_device** %5, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.net_device*, %struct.net_device** %5, align 8
  %52 = call i32 @xge_set_ethtool_ops(%struct.net_device* %51)
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = call i32 @DMA_BIT_MASK(i32 64)
  %55 = call i32 @dma_coerce_mask_and_coherent(%struct.device* %53, i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %45
  %59 = load %struct.net_device*, %struct.net_device** %5, align 8
  %60 = call i32 @netdev_err(%struct.net_device* %59, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %88

61:                                               ; preds = %45
  %62 = load %struct.net_device*, %struct.net_device** %5, align 8
  %63 = call i32 @xge_init_hw(%struct.net_device* %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %88

67:                                               ; preds = %61
  %68 = load %struct.net_device*, %struct.net_device** %5, align 8
  %69 = call i32 @xge_mdio_config(%struct.net_device* %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %88

73:                                               ; preds = %67
  %74 = load %struct.net_device*, %struct.net_device** %5, align 8
  %75 = load %struct.xge_pdata*, %struct.xge_pdata** %6, align 8
  %76 = getelementptr inbounds %struct.xge_pdata, %struct.xge_pdata* %75, i32 0, i32 0
  %77 = load i32, i32* @xge_napi, align 4
  %78 = load i32, i32* @NAPI_POLL_WEIGHT, align 4
  %79 = call i32 @netif_napi_add(%struct.net_device* %74, i32* %76, i32 %77, i32 %78)
  %80 = load %struct.net_device*, %struct.net_device** %5, align 8
  %81 = call i32 @register_netdev(%struct.net_device* %80)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %73
  %85 = load %struct.net_device*, %struct.net_device** %5, align 8
  %86 = call i32 @netdev_err(%struct.net_device* %85, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %88

87:                                               ; preds = %73
  store i32 0, i32* %2, align 4
  br label %92

88:                                               ; preds = %84, %72, %66, %58, %44
  %89 = load %struct.net_device*, %struct.net_device** %5, align 8
  %90 = call i32 @free_netdev(%struct.net_device* %89)
  %91 = load i32, i32* %7, align 4
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %88, %87, %13
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local %struct.xge_pdata* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, %struct.device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.xge_pdata*) #1

declare dso_local i32 @xge_get_resources(%struct.xge_pdata*) #1

declare dso_local i32 @xge_set_ethtool_ops(%struct.net_device*) #1

declare dso_local i32 @dma_coerce_mask_and_coherent(%struct.device*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @xge_init_hw(%struct.net_device*) #1

declare dso_local i32 @xge_mdio_config(%struct.net_device*) #1

declare dso_local i32 @netif_napi_add(%struct.net_device*, i32*, i32, i32) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
