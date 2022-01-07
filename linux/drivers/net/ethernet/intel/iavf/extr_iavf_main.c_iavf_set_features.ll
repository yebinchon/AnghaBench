; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_set_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_set_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iavf_adapter = type { i32 }

@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IAVF_FLAG_AQ_ENABLE_VLAN_STRIPPING = common dso_local global i32 0, align 4
@IAVF_FLAG_AQ_DISABLE_VLAN_STRIPPING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @iavf_set_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iavf_set_features(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iavf_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.iavf_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.iavf_adapter* %8, %struct.iavf_adapter** %6, align 8
  %9 = load %struct.iavf_adapter*, %struct.iavf_adapter** %6, align 8
  %10 = call i32 @VLAN_ALLOWED(%struct.iavf_adapter* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %25, label %12

12:                                               ; preds = %2
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %5, align 4
  %17 = xor i32 %15, %16
  %18 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %12
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %54

24:                                               ; preds = %12
  br label %53

25:                                               ; preds = %2
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = xor i32 %28, %29
  %31 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %25
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load i32, i32* @IAVF_FLAG_AQ_ENABLE_VLAN_STRIPPING, align 4
  %41 = load %struct.iavf_adapter*, %struct.iavf_adapter** %6, align 8
  %42 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %51

45:                                               ; preds = %34
  %46 = load i32, i32* @IAVF_FLAG_AQ_DISABLE_VLAN_STRIPPING, align 4
  %47 = load %struct.iavf_adapter*, %struct.iavf_adapter** %6, align 8
  %48 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %45, %39
  br label %52

52:                                               ; preds = %51, %25
  br label %53

53:                                               ; preds = %52, %24
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %21
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.iavf_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @VLAN_ALLOWED(%struct.iavf_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
