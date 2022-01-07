; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_ethtool.c_stmmac_set_rxfh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_ethtool.c_stmmac_set_rxfh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.stmmac_priv = type { %struct.TYPE_3__*, %struct.TYPE_4__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32* }

@ETH_RSS_HASH_NO_CHANGE = common dso_local global i64 0, align 8
@ETH_RSS_HASH_TOP = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32*, i64*, i64)* @stmmac_set_rxfh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmmac_set_rxfh(%struct.net_device* %0, i32* %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.stmmac_priv*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call %struct.stmmac_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.stmmac_priv* %13, %struct.stmmac_priv** %10, align 8
  %14 = load i64, i64* %9, align 8
  %15 = load i64, i64* @ETH_RSS_HASH_NO_CHANGE, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %4
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* @ETH_RSS_HASH_TOP, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %76

24:                                               ; preds = %17, %4
  %25 = load i32*, i32** %7, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %53

27:                                               ; preds = %24
  store i32 0, i32* %11, align 4
  br label %28

28:                                               ; preds = %49, %27
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.stmmac_priv*, %struct.stmmac_priv** %10, align 8
  %31 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @ARRAY_SIZE(i32* %33)
  %35 = icmp slt i32 %29, %34
  br i1 %35, label %36, label %52

36:                                               ; preds = %28
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.stmmac_priv*, %struct.stmmac_priv** %10, align 8
  %43 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 %41, i32* %48, align 4
  br label %49

49:                                               ; preds = %36
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %11, align 4
  br label %28

52:                                               ; preds = %28
  br label %53

53:                                               ; preds = %52, %24
  %54 = load i64*, i64** %8, align 8
  %55 = icmp ne i64* %54, null
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = load %struct.stmmac_priv*, %struct.stmmac_priv** %10, align 8
  %58 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i64*, i64** %8, align 8
  %62 = call i32 @memcpy(i32 %60, i64* %61, i32 4)
  br label %63

63:                                               ; preds = %56, %53
  %64 = load %struct.stmmac_priv*, %struct.stmmac_priv** %10, align 8
  %65 = load %struct.stmmac_priv*, %struct.stmmac_priv** %10, align 8
  %66 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.stmmac_priv*, %struct.stmmac_priv** %10, align 8
  %69 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %68, i32 0, i32 1
  %70 = load %struct.stmmac_priv*, %struct.stmmac_priv** %10, align 8
  %71 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %70, i32 0, i32 0
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @stmmac_rss_configure(%struct.stmmac_priv* %64, i32 %67, %struct.TYPE_4__* %69, i32 %74)
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %63, %21
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local %struct.stmmac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @memcpy(i32, i64*, i32) #1

declare dso_local i32 @stmmac_rss_configure(%struct.stmmac_priv*, i32, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
