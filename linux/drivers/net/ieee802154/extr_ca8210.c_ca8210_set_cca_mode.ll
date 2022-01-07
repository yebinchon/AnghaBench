; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_ca8210_set_cca_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_ca8210_set_cca_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802154_hw = type { %struct.ca8210_priv* }
%struct.ca8210_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.wpan_phy_cca = type { i32, i64 }

@NL802154_CCA_OPT_ENERGY_CARRIER_OR = common dso_local global i64 0, align 8
@PHY_CCA_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"error setting cca mode, MLME-SET.confirm status = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee802154_hw*, %struct.wpan_phy_cca*)* @ca8210_set_cca_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ca8210_set_cca_mode(%struct.ieee802154_hw* %0, %struct.wpan_phy_cca* %1) #0 {
  %3 = alloca %struct.ieee802154_hw*, align 8
  %4 = alloca %struct.wpan_phy_cca*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ca8210_priv*, align 8
  store %struct.ieee802154_hw* %0, %struct.ieee802154_hw** %3, align 8
  store %struct.wpan_phy_cca* %1, %struct.wpan_phy_cca** %4, align 8
  %8 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %3, align 8
  %9 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %8, i32 0, i32 0
  %10 = load %struct.ca8210_priv*, %struct.ca8210_priv** %9, align 8
  store %struct.ca8210_priv* %10, %struct.ca8210_priv** %7, align 8
  %11 = load %struct.wpan_phy_cca*, %struct.wpan_phy_cca** %4, align 8
  %12 = getelementptr inbounds %struct.wpan_phy_cca, %struct.wpan_phy_cca* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %13, 3
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp eq i32 %15, 3
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.wpan_phy_cca*, %struct.wpan_phy_cca** %4, align 8
  %19 = getelementptr inbounds %struct.wpan_phy_cca, %struct.wpan_phy_cca* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @NL802154_CCA_OPT_ENERGY_CARRIER_OR, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %23, %17, %2
  %25 = load i32, i32* @PHY_CCA_MODE, align 4
  %26 = load %struct.ca8210_priv*, %struct.ca8210_priv** %7, align 8
  %27 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = call i32 @mlme_set_request_sync(i32 %25, i32 0, i32 1, i32* %6, %struct.TYPE_2__* %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %24
  %33 = load %struct.ca8210_priv*, %struct.ca8210_priv** %7, align 8
  %34 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @dev_err(i32* %36, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %32, %24
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @link_to_linux_err(i32 %40)
  ret i32 %41
}

declare dso_local i32 @mlme_set_request_sync(i32, i32, i32, i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @link_to_linux_err(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
