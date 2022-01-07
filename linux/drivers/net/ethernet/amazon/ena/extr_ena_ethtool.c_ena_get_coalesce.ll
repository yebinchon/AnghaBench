; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_ethtool.c_ena_get_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_ethtool.c_ena_get_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i32, i32, i64 }
%struct.ena_adapter = type { %struct.ena_com_dev* }
%struct.ena_com_dev = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @ena_get_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_get_coalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_coalesce*, align 8
  %6 = alloca %struct.ena_adapter*, align 8
  %7 = alloca %struct.ena_com_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.ena_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.ena_adapter* %9, %struct.ena_adapter** %6, align 8
  %10 = load %struct.ena_adapter*, %struct.ena_adapter** %6, align 8
  %11 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %10, i32 0, i32 0
  %12 = load %struct.ena_com_dev*, %struct.ena_com_dev** %11, align 8
  store %struct.ena_com_dev* %12, %struct.ena_com_dev** %7, align 8
  %13 = load %struct.ena_com_dev*, %struct.ena_com_dev** %7, align 8
  %14 = call i32 @ena_com_interrupt_moderation_supported(%struct.ena_com_dev* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EOPNOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %45

19:                                               ; preds = %2
  %20 = load %struct.ena_com_dev*, %struct.ena_com_dev** %7, align 8
  %21 = call i32 @ena_com_get_nonadaptive_moderation_interval_tx(%struct.ena_com_dev* %20)
  %22 = load %struct.ena_com_dev*, %struct.ena_com_dev** %7, align 8
  %23 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %21, %24
  %26 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %27 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.ena_com_dev*, %struct.ena_com_dev** %7, align 8
  %29 = call i64 @ena_com_get_adaptive_moderation_enabled(%struct.ena_com_dev* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %19
  %32 = load %struct.ena_com_dev*, %struct.ena_com_dev** %7, align 8
  %33 = call i32 @ena_com_get_nonadaptive_moderation_interval_rx(%struct.ena_com_dev* %32)
  %34 = load %struct.ena_com_dev*, %struct.ena_com_dev** %7, align 8
  %35 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %33, %36
  %38 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %39 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %31, %19
  %41 = load %struct.ena_com_dev*, %struct.ena_com_dev** %7, align 8
  %42 = call i64 @ena_com_get_adaptive_moderation_enabled(%struct.ena_com_dev* %41)
  %43 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %44 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %43, i32 0, i32 2
  store i64 %42, i64* %44, align 8
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %40, %16
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.ena_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ena_com_interrupt_moderation_supported(%struct.ena_com_dev*) #1

declare dso_local i32 @ena_com_get_nonadaptive_moderation_interval_tx(%struct.ena_com_dev*) #1

declare dso_local i64 @ena_com_get_adaptive_moderation_enabled(%struct.ena_com_dev*) #1

declare dso_local i32 @ena_com_get_nonadaptive_moderation_interval_rx(%struct.ena_com_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
