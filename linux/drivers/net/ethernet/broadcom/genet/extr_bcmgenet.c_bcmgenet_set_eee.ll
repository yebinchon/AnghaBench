; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_set_eee.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_set_eee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eee = type { i32, i32 }
%struct.bcmgenet_priv = type { %struct.ethtool_eee }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"EEE initialization failed\0A\00", align 1
@UMAC_EEE_LPI_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eee*)* @bcmgenet_set_eee to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcmgenet_set_eee(%struct.net_device* %0, %struct.ethtool_eee* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_eee*, align 8
  %6 = alloca %struct.bcmgenet_priv*, align 8
  %7 = alloca %struct.ethtool_eee*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_eee* %1, %struct.ethtool_eee** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.bcmgenet_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.bcmgenet_priv* %10, %struct.bcmgenet_priv** %6, align 8
  %11 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %6, align 8
  %12 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %11, i32 0, i32 0
  store %struct.ethtool_eee* %12, %struct.ethtool_eee** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %6, align 8
  %14 = call i64 @GENET_IS_V1(%struct.bcmgenet_priv* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EOPNOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %68

19:                                               ; preds = %2
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %68

27:                                               ; preds = %19
  %28 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %29 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ethtool_eee*, %struct.ethtool_eee** %7, align 8
  %32 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.ethtool_eee*, %struct.ethtool_eee** %7, align 8
  %34 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %27
  %38 = load %struct.net_device*, %struct.net_device** %4, align 8
  %39 = call i32 @bcmgenet_eee_enable_set(%struct.net_device* %38, i32 0)
  br label %62

40:                                               ; preds = %27
  %41 = load %struct.net_device*, %struct.net_device** %4, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @phy_init_eee(i32 %43, i32 0)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %40
  %48 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %6, align 8
  %49 = load i32, i32* @hw, align 4
  %50 = load %struct.net_device*, %struct.net_device** %4, align 8
  %51 = call i32 @netif_err(%struct.bcmgenet_priv* %48, i32 %49, %struct.net_device* %50, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %3, align 4
  br label %68

53:                                               ; preds = %40
  %54 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %6, align 8
  %55 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %56 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @UMAC_EEE_LPI_TIMER, align 4
  %59 = call i32 @bcmgenet_umac_writel(%struct.bcmgenet_priv* %54, i32 %57, i32 %58)
  %60 = load %struct.net_device*, %struct.net_device** %4, align 8
  %61 = call i32 @bcmgenet_eee_enable_set(%struct.net_device* %60, i32 1)
  br label %62

62:                                               ; preds = %53, %37
  %63 = load %struct.net_device*, %struct.net_device** %4, align 8
  %64 = getelementptr inbounds %struct.net_device, %struct.net_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %67 = call i32 @phy_ethtool_set_eee(i32 %65, %struct.ethtool_eee* %66)
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %62, %47, %24, %16
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.bcmgenet_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @GENET_IS_V1(%struct.bcmgenet_priv*) #1

declare dso_local i32 @bcmgenet_eee_enable_set(%struct.net_device*, i32) #1

declare dso_local i32 @phy_init_eee(i32, i32) #1

declare dso_local i32 @netif_err(%struct.bcmgenet_priv*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @bcmgenet_umac_writel(%struct.bcmgenet_priv*, i32, i32) #1

declare dso_local i32 @phy_ethtool_set_eee(i32, %struct.ethtool_eee*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
