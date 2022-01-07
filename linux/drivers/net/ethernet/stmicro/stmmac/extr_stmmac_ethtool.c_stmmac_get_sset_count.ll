; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_ethtool.c_stmmac_get_sset_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_ethtool.c_stmmac_get_sset_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.stmmac_priv = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@STMMAC_STATS_LEN = common dso_local global i32 0, align 4
@STMMAC_MMC_STATS_LEN = common dso_local global i32 0, align 4
@STMMAC_SAFETY_FEAT_SIZE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @stmmac_get_sset_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmmac_get_sset_count(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stmmac_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.stmmac_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.stmmac_priv* %11, %struct.stmmac_priv** %6, align 8
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %58 [
    i32 129, label %13
    i32 128, label %55
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* @STMMAC_STATS_LEN, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %16 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = load i32, i32* @STMMAC_MMC_STATS_LEN, align 4
  %22 = load i32, i32* %8, align 4
  %23 = add nsw i32 %22, %21
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %20, %13
  %25 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %26 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %53

30:                                               ; preds = %24
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %46, %30
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @STMMAC_SAFETY_FEAT_SIZE, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %31
  %36 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %37 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %38 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %37, i32 0, i32 0
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @stmmac_safety_feat_dump(%struct.stmmac_priv* %36, i32* %38, i32 %39, i32* null, i32* null)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %35
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %42, %35
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %31

49:                                               ; preds = %31
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %49, %24
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %3, align 4
  br label %61

55:                                               ; preds = %2
  %56 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %57 = call i32 @stmmac_selftest_get_count(%struct.stmmac_priv* %56)
  store i32 %57, i32* %3, align 4
  br label %61

58:                                               ; preds = %2
  %59 = load i32, i32* @EOPNOTSUPP, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %58, %55, %53
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.stmmac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @stmmac_safety_feat_dump(%struct.stmmac_priv*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @stmmac_selftest_get_count(%struct.stmmac_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
