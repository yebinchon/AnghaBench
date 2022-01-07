; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_parse_copper_link_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_parse_copper_link_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }

@HCLGE_SUPPORT_GE = common dso_local global i32 0, align 4
@HCLGE_SUPPORT_1G_BIT = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_1000baseT_Full_BIT = common dso_local global i32 0, align 4
@HCLGE_SUPPORT_100M_BIT = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_100baseT_Full_BIT = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_100baseT_Half_BIT = common dso_local global i32 0, align 4
@HCLGE_SUPPORT_10M_BIT = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_10baseT_Full_BIT = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_10baseT_Half_BIT = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_Autoneg_BIT = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_TP_BIT = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_Pause_BIT = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_Asym_Pause_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hclge_dev*, i32)* @hclge_parse_copper_link_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclge_parse_copper_link_mode(%struct.hclge_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.hclge_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  store %struct.hclge_dev* %0, %struct.hclge_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %7 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  store i64* %10, i64** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @HCLGE_SUPPORT_GE, align 4
  store i32 %14, i32* %4, align 4
  br label %15

15:                                               ; preds = %13, %2
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @HCLGE_SUPPORT_1G_BIT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i32, i32* @ETHTOOL_LINK_MODE_1000baseT_Full_BIT, align 4
  %22 = load i64*, i64** %5, align 8
  %23 = call i32 @linkmode_set_bit(i32 %21, i64* %22)
  br label %24

24:                                               ; preds = %20, %15
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @HCLGE_SUPPORT_100M_BIT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load i32, i32* @ETHTOOL_LINK_MODE_100baseT_Full_BIT, align 4
  %31 = load i64*, i64** %5, align 8
  %32 = call i32 @linkmode_set_bit(i32 %30, i64* %31)
  %33 = load i32, i32* @ETHTOOL_LINK_MODE_100baseT_Half_BIT, align 4
  %34 = load i64*, i64** %5, align 8
  %35 = call i32 @linkmode_set_bit(i32 %33, i64* %34)
  br label %36

36:                                               ; preds = %29, %24
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @HCLGE_SUPPORT_10M_BIT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load i32, i32* @ETHTOOL_LINK_MODE_10baseT_Full_BIT, align 4
  %43 = load i64*, i64** %5, align 8
  %44 = call i32 @linkmode_set_bit(i32 %42, i64* %43)
  %45 = load i32, i32* @ETHTOOL_LINK_MODE_10baseT_Half_BIT, align 4
  %46 = load i64*, i64** %5, align 8
  %47 = call i32 @linkmode_set_bit(i32 %45, i64* %46)
  br label %48

48:                                               ; preds = %41, %36
  %49 = load i32, i32* @ETHTOOL_LINK_MODE_Autoneg_BIT, align 4
  %50 = load i64*, i64** %5, align 8
  %51 = call i32 @linkmode_set_bit(i32 %49, i64* %50)
  %52 = load i32, i32* @ETHTOOL_LINK_MODE_TP_BIT, align 4
  %53 = load i64*, i64** %5, align 8
  %54 = call i32 @linkmode_set_bit(i32 %52, i64* %53)
  %55 = load i32, i32* @ETHTOOL_LINK_MODE_Pause_BIT, align 4
  %56 = load i64*, i64** %5, align 8
  %57 = call i32 @linkmode_set_bit(i32 %55, i64* %56)
  %58 = load i32, i32* @ETHTOOL_LINK_MODE_Asym_Pause_BIT, align 4
  %59 = load i64*, i64** %5, align 8
  %60 = call i32 @linkmode_set_bit(i32 %58, i64* %59)
  ret void
}

declare dso_local i32 @linkmode_set_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
