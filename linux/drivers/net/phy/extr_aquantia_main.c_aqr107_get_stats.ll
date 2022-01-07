; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_aquantia_main.c_aqr107_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_aquantia_main.c_aqr107_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.phy_device = type { %struct.aqr107_priv* }
%struct.aqr107_priv = type { i64* }
%struct.ethtool_stats = type { i32 }

@AQR107_SGMII_STAT_SZ = common dso_local global i32 0, align 4
@U64_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Reading HW Statistics failed for %s\0A\00", align 1
@aqr107_hw_stats = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.phy_device*, %struct.ethtool_stats*, i64*)* @aqr107_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aqr107_get_stats(%struct.phy_device* %0, %struct.ethtool_stats* %1, i64* %2) #0 {
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.aqr107_priv*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i64* %2, i64** %6, align 8
  %10 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %11 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %10, i32 0, i32 0
  %12 = load %struct.aqr107_priv*, %struct.aqr107_priv** %11, align 8
  store %struct.aqr107_priv* %12, %struct.aqr107_priv** %7, align 8
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %55, %3
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @AQR107_SGMII_STAT_SZ, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %58

17:                                               ; preds = %13
  %18 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call i64 @aqr107_get_stat(%struct.phy_device* %18, i32 %19)
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* @U64_MAX, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %17
  %25 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @aqr107_hw_stats, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @phydev_err(%struct.phy_device* %25, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %43

33:                                               ; preds = %17
  %34 = load i64, i64* %8, align 8
  %35 = load %struct.aqr107_priv*, %struct.aqr107_priv** %7, align 8
  %36 = getelementptr inbounds %struct.aqr107_priv, %struct.aqr107_priv* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, %34
  store i64 %42, i64* %40, align 8
  br label %43

43:                                               ; preds = %33, %24
  %44 = load %struct.aqr107_priv*, %struct.aqr107_priv** %7, align 8
  %45 = getelementptr inbounds %struct.aqr107_priv, %struct.aqr107_priv* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = load i64*, i64** %6, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  store i64 %50, i64* %54, align 8
  br label %55

55:                                               ; preds = %43
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %13

58:                                               ; preds = %13
  ret void
}

declare dso_local i64 @aqr107_get_stat(%struct.phy_device*, i32) #1

declare dso_local i32 @phydev_err(%struct.phy_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
