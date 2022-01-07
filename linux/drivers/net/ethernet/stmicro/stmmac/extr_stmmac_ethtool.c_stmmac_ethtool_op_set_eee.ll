; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_ethtool.c_stmmac_ethtool_op_set_eee.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_ethtool.c_stmmac_ethtool_op_set_eee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eee = type { i32, i32 }
%struct.stmmac_priv = type { i32, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eee*)* @stmmac_ethtool_op_set_eee to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmmac_ethtool_op_set_eee(%struct.net_device* %0, %struct.ethtool_eee* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_eee*, align 8
  %6 = alloca %struct.stmmac_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_eee* %1, %struct.ethtool_eee** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.stmmac_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.stmmac_priv* %9, %struct.stmmac_priv** %6, align 8
  %10 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %11 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %16 = call i32 @stmmac_disable_eee_mode(%struct.stmmac_priv* %15)
  br label %30

17:                                               ; preds = %2
  %18 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %19 = call i32 @stmmac_eee_init(%struct.stmmac_priv* %18)
  %20 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %21 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %23 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %17
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %51

29:                                               ; preds = %17
  br label %30

30:                                               ; preds = %29, %14
  %31 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %32 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %35 = call i32 @phylink_ethtool_set_eee(i32 %33, %struct.ethtool_eee* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %51

40:                                               ; preds = %30
  %41 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %42 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %45 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %47 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %50 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %40, %38, %26
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.stmmac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @stmmac_disable_eee_mode(%struct.stmmac_priv*) #1

declare dso_local i32 @stmmac_eee_init(%struct.stmmac_priv*) #1

declare dso_local i32 @phylink_ethtool_set_eee(i32, %struct.ethtool_eee*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
