; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_dpaa_mac_dev_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_dpaa_mac_dev_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_device = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.dpaa_eth_data* }
%struct.dpaa_eth_data = type { %struct.mac_device* }

@.str = private unnamed_addr constant [18 x i8] c"eth_data missing\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"mac_dev missing\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mac_device* (%struct.platform_device*)* @dpaa_mac_dev_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mac_device* @dpaa_mac_dev_get(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.mac_device*, align 8
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.dpaa_eth_data*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.mac_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %5, align 8
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = load %struct.dpaa_eth_data*, %struct.dpaa_eth_data** %10, align 8
  store %struct.dpaa_eth_data* %11, %struct.dpaa_eth_data** %4, align 8
  %12 = load %struct.dpaa_eth_data*, %struct.dpaa_eth_data** %4, align 8
  %13 = icmp ne %struct.dpaa_eth_data* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call i32 @dev_err(%struct.device* %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.mac_device* @ERR_PTR(i32 %18)
  store %struct.mac_device* %19, %struct.mac_device** %2, align 8
  br label %34

20:                                               ; preds = %1
  %21 = load %struct.dpaa_eth_data*, %struct.dpaa_eth_data** %4, align 8
  %22 = getelementptr inbounds %struct.dpaa_eth_data, %struct.dpaa_eth_data* %21, i32 0, i32 0
  %23 = load %struct.mac_device*, %struct.mac_device** %22, align 8
  store %struct.mac_device* %23, %struct.mac_device** %6, align 8
  %24 = load %struct.mac_device*, %struct.mac_device** %6, align 8
  %25 = icmp ne %struct.mac_device* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load %struct.device*, %struct.device** %5, align 8
  %28 = call i32 @dev_err(%struct.device* %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  %31 = call %struct.mac_device* @ERR_PTR(i32 %30)
  store %struct.mac_device* %31, %struct.mac_device** %2, align 8
  br label %34

32:                                               ; preds = %20
  %33 = load %struct.mac_device*, %struct.mac_device** %6, align 8
  store %struct.mac_device* %33, %struct.mac_device** %2, align 8
  br label %34

34:                                               ; preds = %32, %26, %14
  %35 = load %struct.mac_device*, %struct.mac_device** %2, align 8
  ret %struct.mac_device* %35
}

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.mac_device* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
