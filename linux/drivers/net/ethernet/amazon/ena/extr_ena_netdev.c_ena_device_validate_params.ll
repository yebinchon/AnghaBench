; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_device_validate_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_device_validate_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { i32, %struct.net_device* }
%struct.net_device = type { i64 }
%struct.ena_com_dev_get_features_ctx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Error, mac address are different\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Error, device max mtu is smaller than netdev MTU\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_adapter*, %struct.ena_com_dev_get_features_ctx*)* @ena_device_validate_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_device_validate_params(%struct.ena_adapter* %0, %struct.ena_com_dev_get_features_ctx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ena_adapter*, align 8
  %5 = alloca %struct.ena_com_dev_get_features_ctx*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  store %struct.ena_adapter* %0, %struct.ena_adapter** %4, align 8
  store %struct.ena_com_dev_get_features_ctx* %1, %struct.ena_com_dev_get_features_ctx** %5, align 8
  %8 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %9 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %8, i32 0, i32 1
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %6, align 8
  %11 = load %struct.ena_com_dev_get_features_ctx*, %struct.ena_com_dev_get_features_ctx** %5, align 8
  %12 = getelementptr inbounds %struct.ena_com_dev_get_features_ctx, %struct.ena_com_dev_get_features_ctx* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %16 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @ether_addr_equal(i32 %14, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %2
  %22 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %23 = load i32, i32* @drv, align 4
  %24 = load %struct.net_device*, %struct.net_device** %6, align 8
  %25 = call i32 @netif_err(%struct.ena_adapter* %22, i32 %23, %struct.net_device* %24, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %45

28:                                               ; preds = %2
  %29 = load %struct.ena_com_dev_get_features_ctx*, %struct.ena_com_dev_get_features_ctx** %5, align 8
  %30 = getelementptr inbounds %struct.ena_com_dev_get_features_ctx, %struct.ena_com_dev_get_features_ctx* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.net_device*, %struct.net_device** %6, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %32, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %28
  %38 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %39 = load i32, i32* @drv, align 4
  %40 = load %struct.net_device*, %struct.net_device** %6, align 8
  %41 = call i32 @netif_err(%struct.ena_adapter* %38, i32 %39, %struct.net_device* %40, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %45

44:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %37, %21
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @ether_addr_equal(i32, i32) #1

declare dso_local i32 @netif_err(%struct.ena_adapter*, i32, %struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
