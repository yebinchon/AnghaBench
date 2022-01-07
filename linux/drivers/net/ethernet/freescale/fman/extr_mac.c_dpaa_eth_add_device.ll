; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_mac.c_dpaa_eth_add_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_mac.c_dpaa_eth_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mac_device = type { %struct.mac_priv_s* }
%struct.mac_priv_s = type { i32, i32 }
%struct.dpaa_eth_data = type { i32, i32, %struct.mac_device* }

@dpaa_eth_add_device.dpaa_eth_dev_cnt = internal global i32 0, align 4
@eth_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"dpaa-ethernet\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.platform_device* (i32, %struct.mac_device*)* @dpaa_eth_add_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.platform_device* @dpaa_eth_add_device(i32 %0, %struct.mac_device* %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mac_device*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.dpaa_eth_data, align 8
  %8 = alloca %struct.mac_priv_s*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.mac_device* %1, %struct.mac_device** %5, align 8
  %10 = load %struct.mac_device*, %struct.mac_device** %5, align 8
  %11 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %10, i32 0, i32 0
  %12 = load %struct.mac_priv_s*, %struct.mac_priv_s** %11, align 8
  store %struct.mac_priv_s* %12, %struct.mac_priv_s** %8, align 8
  %13 = load %struct.mac_device*, %struct.mac_device** %5, align 8
  %14 = getelementptr inbounds %struct.dpaa_eth_data, %struct.dpaa_eth_data* %7, i32 0, i32 2
  store %struct.mac_device* %13, %struct.mac_device** %14, align 8
  %15 = load %struct.mac_priv_s*, %struct.mac_priv_s** %8, align 8
  %16 = getelementptr inbounds %struct.mac_priv_s, %struct.mac_priv_s* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.dpaa_eth_data, %struct.dpaa_eth_data* %7, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* %4, align 4
  %20 = getelementptr inbounds %struct.dpaa_eth_data, %struct.dpaa_eth_data* %7, i32 0, i32 0
  store i32 %19, i32* %20, align 8
  %21 = call i32 @mutex_lock(i32* @eth_lock)
  %22 = load i32, i32* @dpaa_eth_add_device.dpaa_eth_dev_cnt, align 4
  %23 = call %struct.platform_device* @platform_device_alloc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %22)
  store %struct.platform_device* %23, %struct.platform_device** %6, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %25 = icmp ne %struct.platform_device* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %9, align 4
  br label %55

29:                                               ; preds = %2
  %30 = load %struct.mac_priv_s*, %struct.mac_priv_s** %8, align 8
  %31 = getelementptr inbounds %struct.mac_priv_s, %struct.mac_priv_s* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 4
  %36 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %37 = call i32 @platform_device_add_data(%struct.platform_device* %36, %struct.dpaa_eth_data* %7, i32 16)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  br label %52

41:                                               ; preds = %29
  %42 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %43 = call i32 @platform_device_add(%struct.platform_device* %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %52

47:                                               ; preds = %41
  %48 = load i32, i32* @dpaa_eth_add_device.dpaa_eth_dev_cnt, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* @dpaa_eth_add_device.dpaa_eth_dev_cnt, align 4
  %50 = call i32 @mutex_unlock(i32* @eth_lock)
  %51 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  store %struct.platform_device* %51, %struct.platform_device** %3, align 8
  br label %59

52:                                               ; preds = %46, %40
  %53 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %54 = call i32 @platform_device_put(%struct.platform_device* %53)
  br label %55

55:                                               ; preds = %52, %26
  %56 = call i32 @mutex_unlock(i32* @eth_lock)
  %57 = load i32, i32* %9, align 4
  %58 = call %struct.platform_device* @ERR_PTR(i32 %57)
  store %struct.platform_device* %58, %struct.platform_device** %3, align 8
  br label %59

59:                                               ; preds = %55, %47
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  ret %struct.platform_device* %60
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.platform_device* @platform_device_alloc(i8*, i32) #1

declare dso_local i32 @platform_device_add_data(%struct.platform_device*, %struct.dpaa_eth_data*, i32) #1

declare dso_local i32 @platform_device_add(%struct.platform_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @platform_device_put(%struct.platform_device*) #1

declare dso_local %struct.platform_device* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
