; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_ethtool.c_aq_ethtool_get_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_ethtool.c_aq_ethtool_get_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i32, i32, i32, i32 }
%struct.aq_nic_s = type { i32 }
%struct.aq_nic_cfg_s = type { i64, i32, i32 }

@AQ_CFG_INTERRUPT_MODERATION_ON = common dso_local global i64 0, align 8
@AQ_CFG_INTERRUPT_MODERATION_AUTO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @aq_ethtool_get_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aq_ethtool_get_coalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_coalesce*, align 8
  %5 = alloca %struct.aq_nic_s*, align 8
  %6 = alloca %struct.aq_nic_cfg_s*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.aq_nic_s* @netdev_priv(%struct.net_device* %7)
  store %struct.aq_nic_s* %8, %struct.aq_nic_s** %5, align 8
  %9 = load %struct.aq_nic_s*, %struct.aq_nic_s** %5, align 8
  %10 = call %struct.aq_nic_cfg_s* @aq_nic_get_cfg(%struct.aq_nic_s* %9)
  store %struct.aq_nic_cfg_s* %10, %struct.aq_nic_cfg_s** %6, align 8
  %11 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %6, align 8
  %12 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @AQ_CFG_INTERRUPT_MODERATION_ON, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %2
  %17 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %6, align 8
  %18 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @AQ_CFG_INTERRUPT_MODERATION_AUTO, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %16, %2
  %23 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %6, align 8
  %24 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %27 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %6, align 8
  %29 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %32 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %34 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %33, i32 0, i32 0
  store i32 0, i32* %34, align 4
  %35 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %36 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %35, i32 0, i32 1
  store i32 0, i32* %36, align 4
  br label %46

37:                                               ; preds = %16
  %38 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %39 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %38, i32 0, i32 3
  store i32 0, i32* %39, align 4
  %40 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %41 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %40, i32 0, i32 2
  store i32 0, i32* %41, align 4
  %42 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %43 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %42, i32 0, i32 0
  store i32 1, i32* %43, align 4
  %44 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %45 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %44, i32 0, i32 1
  store i32 1, i32* %45, align 4
  br label %46

46:                                               ; preds = %37, %22
  ret i32 0
}

declare dso_local %struct.aq_nic_s* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.aq_nic_cfg_s* @aq_nic_get_cfg(%struct.aq_nic_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
