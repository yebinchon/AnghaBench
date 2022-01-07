; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_ethtool.c_ena_set_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_ethtool.c_ena_set_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i64, i32, i32 }
%struct.ena_adapter = type { %struct.ena_com_dev* }
%struct.ena_com_dev = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @ena_set_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_set_coalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_coalesce*, align 8
  %6 = alloca %struct.ena_adapter*, align 8
  %7 = alloca %struct.ena_com_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.ena_adapter* @netdev_priv(%struct.net_device* %9)
  store %struct.ena_adapter* %10, %struct.ena_adapter** %6, align 8
  %11 = load %struct.ena_adapter*, %struct.ena_adapter** %6, align 8
  %12 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %11, i32 0, i32 0
  %13 = load %struct.ena_com_dev*, %struct.ena_com_dev** %12, align 8
  store %struct.ena_com_dev* %13, %struct.ena_com_dev** %7, align 8
  %14 = load %struct.ena_com_dev*, %struct.ena_com_dev** %7, align 8
  %15 = call i32 @ena_com_interrupt_moderation_supported(%struct.ena_com_dev* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %71

20:                                               ; preds = %2
  %21 = load %struct.ena_com_dev*, %struct.ena_com_dev** %7, align 8
  %22 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %23 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ena_com_update_nonadaptive_moderation_interval_tx(%struct.ena_com_dev* %21, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %3, align 4
  br label %71

30:                                               ; preds = %20
  %31 = load %struct.ena_adapter*, %struct.ena_adapter** %6, align 8
  %32 = call i32 @ena_update_tx_rings_intr_moderation(%struct.ena_adapter* %31)
  %33 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %34 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %30
  %38 = load %struct.ena_com_dev*, %struct.ena_com_dev** %7, align 8
  %39 = call i64 @ena_com_get_adaptive_moderation_enabled(%struct.ena_com_dev* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load %struct.ena_com_dev*, %struct.ena_com_dev** %7, align 8
  %43 = call i32 @ena_com_enable_adaptive_moderation(%struct.ena_com_dev* %42)
  br label %44

44:                                               ; preds = %41, %37
  store i32 0, i32* %3, align 4
  br label %71

45:                                               ; preds = %30
  %46 = load %struct.ena_com_dev*, %struct.ena_com_dev** %7, align 8
  %47 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %48 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @ena_com_update_nonadaptive_moderation_interval_rx(%struct.ena_com_dev* %46, i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %3, align 4
  br label %71

55:                                               ; preds = %45
  %56 = load %struct.ena_adapter*, %struct.ena_adapter** %6, align 8
  %57 = call i32 @ena_update_rx_rings_intr_moderation(%struct.ena_adapter* %56)
  %58 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %59 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %55
  %63 = load %struct.ena_com_dev*, %struct.ena_com_dev** %7, align 8
  %64 = call i64 @ena_com_get_adaptive_moderation_enabled(%struct.ena_com_dev* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load %struct.ena_com_dev*, %struct.ena_com_dev** %7, align 8
  %68 = call i32 @ena_com_disable_adaptive_moderation(%struct.ena_com_dev* %67)
  br label %69

69:                                               ; preds = %66, %62
  br label %70

70:                                               ; preds = %69, %55
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %53, %44, %28, %17
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.ena_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ena_com_interrupt_moderation_supported(%struct.ena_com_dev*) #1

declare dso_local i32 @ena_com_update_nonadaptive_moderation_interval_tx(%struct.ena_com_dev*, i32) #1

declare dso_local i32 @ena_update_tx_rings_intr_moderation(%struct.ena_adapter*) #1

declare dso_local i64 @ena_com_get_adaptive_moderation_enabled(%struct.ena_com_dev*) #1

declare dso_local i32 @ena_com_enable_adaptive_moderation(%struct.ena_com_dev*) #1

declare dso_local i32 @ena_com_update_nonadaptive_moderation_interval_rx(%struct.ena_com_dev*, i32) #1

declare dso_local i32 @ena_update_rx_rings_intr_moderation(%struct.ena_adapter*) #1

declare dso_local i32 @ena_com_disable_adaptive_moderation(%struct.ena_com_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
