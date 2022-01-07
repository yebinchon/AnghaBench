; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_fix_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_fix_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.stmmac_priv = type { i32, %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64, i64, i64, i32 }

@STMMAC_RX_COE_NONE = common dso_local global i64 0, align 8
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@NETIF_F_CSUM_MASK = common dso_local global i32 0, align 4
@ETH_DATA_LEN = common dso_local global i64 0, align 8
@NETIF_F_TSO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @stmmac_fix_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmmac_fix_features(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stmmac_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.stmmac_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.stmmac_priv* %7, %struct.stmmac_priv** %5, align 8
  %8 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %9 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %8, i32 0, i32 2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @STMMAC_RX_COE_NONE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %15, %2
  %21 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %22 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %21, i32 0, i32 2
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* @NETIF_F_CSUM_MASK, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %27, %20
  %33 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %34 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %33, i32 0, i32 2
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %32
  %40 = load %struct.net_device*, %struct.net_device** %3, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ETH_DATA_LEN, align 8
  %44 = icmp sgt i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load i32, i32* @NETIF_F_CSUM_MASK, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %4, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %45, %39, %32
  %51 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %52 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %51, i32 0, i32 2
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %75

57:                                               ; preds = %50
  %58 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %59 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %57
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @NETIF_F_TSO, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %70 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %69, i32 0, i32 0
  store i32 1, i32* %70, align 8
  br label %74

71:                                               ; preds = %63
  %72 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %73 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %72, i32 0, i32 0
  store i32 0, i32* %73, align 8
  br label %74

74:                                               ; preds = %71, %68
  br label %75

75:                                               ; preds = %74, %57, %50
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local %struct.stmmac_priv* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
