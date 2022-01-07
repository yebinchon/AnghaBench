; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-common.c_xlgmac_drv_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-common.c_xlgmac_drv_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.xlgmac_resources = type { i32, i32 }
%struct.xlgmac_pdata = type { i32, i32, i32, i32, %struct.net_device*, %struct.device* }
%struct.net_device = type { i32 }

@XLGMAC_MAX_DMA_CHANNELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"alloc_etherdev failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@default_msg_level = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"xlgmac init failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"net device registration failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xlgmac_drv_probe(%struct.device* %0, %struct.xlgmac_resources* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.xlgmac_resources*, align 8
  %6 = alloca %struct.xlgmac_pdata*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.xlgmac_resources* %1, %struct.xlgmac_resources** %5, align 8
  %9 = load i32, i32* @XLGMAC_MAX_DMA_CHANNELS, align 4
  %10 = call %struct.net_device* @alloc_etherdev_mq(i32 32, i32 %9)
  store %struct.net_device* %10, %struct.net_device** %7, align 8
  %11 = load %struct.net_device*, %struct.net_device** %7, align 8
  %12 = icmp ne %struct.net_device* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call i32 @dev_err(%struct.device* %14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %71

18:                                               ; preds = %2
  %19 = load %struct.net_device*, %struct.net_device** %7, align 8
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = call i32 @SET_NETDEV_DEV(%struct.net_device* %19, %struct.device* %20)
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = load %struct.net_device*, %struct.net_device** %7, align 8
  %24 = call i32 @dev_set_drvdata(%struct.device* %22, %struct.net_device* %23)
  %25 = load %struct.net_device*, %struct.net_device** %7, align 8
  %26 = call %struct.xlgmac_pdata* @netdev_priv(%struct.net_device* %25)
  store %struct.xlgmac_pdata* %26, %struct.xlgmac_pdata** %6, align 8
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %6, align 8
  %29 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %28, i32 0, i32 5
  store %struct.device* %27, %struct.device** %29, align 8
  %30 = load %struct.net_device*, %struct.net_device** %7, align 8
  %31 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %6, align 8
  %32 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %31, i32 0, i32 4
  store %struct.net_device* %30, %struct.net_device** %32, align 8
  %33 = load %struct.xlgmac_resources*, %struct.xlgmac_resources** %5, align 8
  %34 = getelementptr inbounds %struct.xlgmac_resources, %struct.xlgmac_resources* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %6, align 8
  %37 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load %struct.xlgmac_resources*, %struct.xlgmac_resources** %5, align 8
  %39 = getelementptr inbounds %struct.xlgmac_resources, %struct.xlgmac_resources* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %6, align 8
  %42 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %6, align 8
  %44 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %43, i32 0, i32 1
  %45 = call i32 @mutex_init(i32* %44)
  %46 = load i32, i32* @debug, align 4
  %47 = load i32, i32* @default_msg_level, align 4
  %48 = call i32 @netif_msg_init(i32 %46, i32 %47)
  %49 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %6, align 8
  %50 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %6, align 8
  %52 = call i32 @xlgmac_init(%struct.xlgmac_pdata* %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %18
  %56 = load %struct.device*, %struct.device** %4, align 8
  %57 = call i32 @dev_err(%struct.device* %56, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %67

58:                                               ; preds = %18
  %59 = load %struct.net_device*, %struct.net_device** %7, align 8
  %60 = call i32 @register_netdev(%struct.net_device* %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = call i32 @dev_err(%struct.device* %64, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %67

66:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %71

67:                                               ; preds = %63, %55
  %68 = load %struct.net_device*, %struct.net_device** %7, align 8
  %69 = call i32 @free_netdev(%struct.net_device* %68)
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %67, %66, %13
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.net_device* @alloc_etherdev_mq(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, %struct.device*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.net_device*) #1

declare dso_local %struct.xlgmac_pdata* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @netif_msg_init(i32, i32) #1

declare dso_local i32 @xlgmac_init(%struct.xlgmac_pdata*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
