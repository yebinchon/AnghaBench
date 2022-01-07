; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene-v2/extr_main.c_xge_get_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene-v2/extr_main.c_xge_get_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xge_pdata = type { %struct.TYPE_2__, %struct.net_device*, %struct.platform_device* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.net_device = type { i32, i32, i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Resource enet_csr not defined\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Unable to retrieve ENET Port CSR region\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Unable to get phy-connection-type\0A\00", align 1
@PHY_INTERFACE_MODE_RGMII = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Incorrect phy-connection-type specified\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xge_pdata*)* @xge_get_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xge_get_resources(%struct.xge_pdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xge_pdata*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.resource*, align 8
  %9 = alloca %struct.device*, align 8
  store %struct.xge_pdata* %0, %struct.xge_pdata** %3, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.xge_pdata*, %struct.xge_pdata** %3, align 8
  %11 = getelementptr inbounds %struct.xge_pdata, %struct.xge_pdata* %10, i32 0, i32 2
  %12 = load %struct.platform_device*, %struct.platform_device** %11, align 8
  store %struct.platform_device* %12, %struct.platform_device** %4, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %9, align 8
  %15 = load %struct.xge_pdata*, %struct.xge_pdata** %3, align 8
  %16 = getelementptr inbounds %struct.xge_pdata, %struct.xge_pdata* %15, i32 0, i32 1
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  store %struct.net_device* %17, %struct.net_device** %5, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %19 = load i32, i32* @IORESOURCE_MEM, align 4
  %20 = call %struct.resource* @platform_get_resource(%struct.platform_device* %18, i32 %19, i32 0)
  store %struct.resource* %20, %struct.resource** %8, align 8
  %21 = load %struct.resource*, %struct.resource** %8, align 8
  %22 = icmp ne %struct.resource* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %1
  %24 = load %struct.device*, %struct.device** %9, align 8
  %25 = call i32 @dev_err(%struct.device* %24, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %107

28:                                               ; preds = %1
  %29 = load %struct.device*, %struct.device** %9, align 8
  %30 = load %struct.resource*, %struct.resource** %8, align 8
  %31 = getelementptr inbounds %struct.resource, %struct.resource* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.resource*, %struct.resource** %8, align 8
  %34 = call i32 @resource_size(%struct.resource* %33)
  %35 = call i32 @devm_ioremap(%struct.device* %29, i32 %32, i32 %34)
  %36 = load %struct.xge_pdata*, %struct.xge_pdata** %3, align 8
  %37 = getelementptr inbounds %struct.xge_pdata, %struct.xge_pdata* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  store i32 %35, i32* %38, align 8
  %39 = load %struct.xge_pdata*, %struct.xge_pdata** %3, align 8
  %40 = getelementptr inbounds %struct.xge_pdata, %struct.xge_pdata* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %28
  %45 = load %struct.device*, %struct.device** %9, align 8
  %46 = call i32 @dev_err(%struct.device* %45, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %107

49:                                               ; preds = %28
  %50 = load %struct.device*, %struct.device** %9, align 8
  %51 = load %struct.net_device*, %struct.net_device** %5, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @ETH_ALEN, align 4
  %55 = call i32 @device_get_mac_address(%struct.device* %50, i32 %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %49
  %58 = load %struct.net_device*, %struct.net_device** %5, align 8
  %59 = call i32 @eth_hw_addr_random(%struct.net_device* %58)
  br label %60

60:                                               ; preds = %57, %49
  %61 = load %struct.net_device*, %struct.net_device** %5, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.net_device*, %struct.net_device** %5, align 8
  %65 = getelementptr inbounds %struct.net_device, %struct.net_device* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.net_device*, %struct.net_device** %5, align 8
  %68 = getelementptr inbounds %struct.net_device, %struct.net_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @memcpy(i32 %63, i32 %66, i32 %69)
  %71 = load %struct.device*, %struct.device** %9, align 8
  %72 = call i32 @device_get_phy_mode(%struct.device* %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %60
  %76 = load %struct.device*, %struct.device** %9, align 8
  %77 = call i32 @dev_err(%struct.device* %76, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %2, align 4
  br label %107

79:                                               ; preds = %60
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.xge_pdata*, %struct.xge_pdata** %3, align 8
  %82 = getelementptr inbounds %struct.xge_pdata, %struct.xge_pdata* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 8
  %84 = load %struct.xge_pdata*, %struct.xge_pdata** %3, align 8
  %85 = getelementptr inbounds %struct.xge_pdata, %struct.xge_pdata* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @PHY_INTERFACE_MODE_RGMII, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %79
  %91 = load %struct.device*, %struct.device** %9, align 8
  %92 = call i32 @dev_err(%struct.device* %91, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %93 = load i32, i32* @ENODEV, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %107

95:                                               ; preds = %79
  %96 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %97 = call i32 @platform_get_irq(%struct.platform_device* %96, i32 0)
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = load i32, i32* %7, align 4
  store i32 %101, i32* %2, align 4
  br label %107

102:                                              ; preds = %95
  %103 = load i32, i32* %7, align 4
  %104 = load %struct.xge_pdata*, %struct.xge_pdata** %3, align 8
  %105 = getelementptr inbounds %struct.xge_pdata, %struct.xge_pdata* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  store i32 %103, i32* %106, align 4
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %102, %100, %90, %75, %44, %23
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @devm_ioremap(%struct.device*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @device_get_mac_address(%struct.device*, i32, i32) #1

declare dso_local i32 @eth_hw_addr_random(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @device_get_phy_mode(%struct.device*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
