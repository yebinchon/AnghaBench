; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac.c_emac_probe_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac.c_emac_probe_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.emac_adapter = type { i8*, i8*, %struct.TYPE_2__, %struct.net_device* }
%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i64, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.emac_adapter*)* @emac_probe_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emac_probe_resources(%struct.platform_device* %0, %struct.emac_adapter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.emac_adapter*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.emac_adapter* %1, %struct.emac_adapter** %5, align 8
  %11 = load %struct.emac_adapter*, %struct.emac_adapter** %5, align 8
  %12 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %11, i32 0, i32 3
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %6, align 8
  %14 = load i32, i32* @ETH_ALEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %18 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = load i32, i32* @ETH_ALEN, align 4
  %21 = call i64 @device_get_mac_address(i32* %19, i8* %17, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load %struct.net_device*, %struct.net_device** %6, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @ether_addr_copy(i32 %26, i8* %17)
  br label %31

28:                                               ; preds = %2
  %29 = load %struct.net_device*, %struct.net_device** %6, align 8
  %30 = call i32 @eth_hw_addr_random(%struct.net_device* %29)
  br label %31

31:                                               ; preds = %28, %23
  %32 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %33 = call i32 @platform_get_irq(%struct.platform_device* %32, i32 0)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %79

38:                                               ; preds = %31
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.emac_adapter*, %struct.emac_adapter** %5, align 8
  %41 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  %43 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %44 = call i8* @devm_platform_ioremap_resource(%struct.platform_device* %43, i32 0)
  %45 = load %struct.emac_adapter*, %struct.emac_adapter** %5, align 8
  %46 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  %47 = load %struct.emac_adapter*, %struct.emac_adapter** %5, align 8
  %48 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i64 @IS_ERR(i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %38
  %53 = load %struct.emac_adapter*, %struct.emac_adapter** %5, align 8
  %54 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @PTR_ERR(i8* %55)
  store i32 %56, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %79

57:                                               ; preds = %38
  %58 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %59 = call i8* @devm_platform_ioremap_resource(%struct.platform_device* %58, i32 1)
  %60 = load %struct.emac_adapter*, %struct.emac_adapter** %5, align 8
  %61 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  %62 = load %struct.emac_adapter*, %struct.emac_adapter** %5, align 8
  %63 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = call i64 @IS_ERR(i8* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %57
  %68 = load %struct.emac_adapter*, %struct.emac_adapter** %5, align 8
  %69 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @PTR_ERR(i8* %70)
  store i32 %71, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %79

72:                                               ; preds = %57
  %73 = load %struct.emac_adapter*, %struct.emac_adapter** %5, align 8
  %74 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = ptrtoint i8* %75 to i64
  %77 = load %struct.net_device*, %struct.net_device** %6, align 8
  %78 = getelementptr inbounds %struct.net_device, %struct.net_device* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %79

79:                                               ; preds = %72, %67, %52, %36
  %80 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %80)
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @device_get_mac_address(i32*, i8*, i32) #2

declare dso_local i32 @ether_addr_copy(i32, i8*) #2

declare dso_local i32 @eth_hw_addr_random(%struct.net_device*) #2

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #2

declare dso_local i8* @devm_platform_ioremap_resource(%struct.platform_device*, i32) #2

declare dso_local i64 @IS_ERR(i8*) #2

declare dso_local i32 @PTR_ERR(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
