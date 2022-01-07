; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_ethtool.c_aq_ethtool_get_rss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_ethtool.c_aq_ethtool_get_rss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.aq_nic_s = type { i32 }
%struct.aq_nic_cfg_s = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }

@ETH_RSS_HASH_TOP = common dso_local global i32 0, align 4
@AQ_CFG_RSS_INDIRECTION_TABLE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32*, i32*, i32*)* @aq_ethtool_get_rss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aq_ethtool_get_rss(%struct.net_device* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.aq_nic_s*, align 8
  %10 = alloca %struct.aq_nic_cfg_s*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.aq_nic_s* @netdev_priv(%struct.net_device* %12)
  store %struct.aq_nic_s* %13, %struct.aq_nic_s** %9, align 8
  %14 = load %struct.aq_nic_s*, %struct.aq_nic_s** %9, align 8
  %15 = call %struct.aq_nic_cfg_s* @aq_nic_get_cfg(%struct.aq_nic_s* %14)
  store %struct.aq_nic_cfg_s* %15, %struct.aq_nic_cfg_s** %10, align 8
  store i32 0, i32* %11, align 4
  %16 = load i32*, i32** %8, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @ETH_RSS_HASH_TOP, align 4
  %20 = load i32*, i32** %8, align 8
  store i32 %19, i32* %20, align 4
  br label %21

21:                                               ; preds = %18, %4
  %22 = load i32*, i32** %6, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %46

24:                                               ; preds = %21
  store i32 0, i32* %11, align 4
  br label %25

25:                                               ; preds = %42, %24
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @AQ_CFG_RSS_INDIRECTION_TABLE_MAX, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %45

29:                                               ; preds = %25
  %30 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %10, align 8
  %31 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %11, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %11, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 %37, i32* %41, align 4
  br label %42

42:                                               ; preds = %29
  %43 = load i32, i32* %11, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %11, align 4
  br label %25

45:                                               ; preds = %25
  br label %46

46:                                               ; preds = %45, %21
  %47 = load i32*, i32** %7, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = load i32*, i32** %7, align 8
  %51 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %10, align 8
  %52 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @memcpy(i32* %50, i32 %54, i32 4)
  br label %56

56:                                               ; preds = %49, %46
  ret i32 0
}

declare dso_local %struct.aq_nic_s* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.aq_nic_cfg_s* @aq_nic_get_cfg(%struct.aq_nic_s*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
