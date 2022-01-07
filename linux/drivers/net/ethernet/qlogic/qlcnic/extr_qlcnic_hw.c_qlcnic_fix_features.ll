; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_hw.c_qlcnic_fix_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_hw.c_qlcnic_fix_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.qlcnic_adapter = type { i32 }

@QLCNIC_ESWITCH_ENABLED = common dso_local global i32 0, align 4
@QLCNIC_APP_CHANGED_FLAGS = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@NETIF_F_IPV6_CSUM = common dso_local global i32 0, align 4
@NETIF_F_TSO = common dso_local global i32 0, align 4
@NETIF_F_TSO6 = common dso_local global i32 0, align 4
@NETIF_F_LRO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_fix_features(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.qlcnic_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.qlcnic_adapter* %8, %struct.qlcnic_adapter** %5, align 8
  %9 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %10 = call i64 @qlcnic_82xx_check(%struct.qlcnic_adapter* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %50

12:                                               ; preds = %2
  %13 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %14 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @QLCNIC_ESWITCH_ENABLED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %50

19:                                               ; preds = %12
  %20 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %21 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @QLCNIC_APP_CHANGED_FLAGS, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @qlcnic_process_flags(%struct.qlcnic_adapter* %27, i32 %28)
  store i32 %29, i32* %4, align 4
  br label %49

30:                                               ; preds = %19
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.net_device*, %struct.net_device** %3, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = xor i32 %31, %34
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %38 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @NETIF_F_TSO, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @NETIF_F_TSO6, align 4
  %45 = or i32 %43, %44
  %46 = and i32 %36, %45
  %47 = load i32, i32* %4, align 4
  %48 = xor i32 %47, %46
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %30, %26
  br label %50

50:                                               ; preds = %49, %12, %2
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* @NETIF_F_LRO, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %4, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %55, %50
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.qlcnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @qlcnic_82xx_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_process_flags(%struct.qlcnic_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
