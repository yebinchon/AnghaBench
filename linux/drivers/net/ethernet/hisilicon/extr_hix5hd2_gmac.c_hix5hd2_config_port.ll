; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hix5hd2_gmac.c_hix5hd2_config_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hix5hd2_gmac.c_hix5hd2_config_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.hix5hd2_priv = type { i32, i64, i64, i64, i64 }

@SPEED_1000 = common dso_local global i64 0, align 8
@RGMII_SPEED_1000 = common dso_local global i64 0, align 8
@SPEED_100 = common dso_local global i64 0, align 8
@RGMII_SPEED_100 = common dso_local global i64 0, align 8
@RGMII_SPEED_10 = common dso_local global i64 0, align 8
@MII_SPEED_100 = common dso_local global i64 0, align 8
@MII_SPEED_10 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"not supported mode\0A\00", align 1
@GMAC_FULL_DUPLEX = common dso_local global i64 0, align 8
@BIT_MODE_CHANGE_EN = common dso_local global i64 0, align 8
@MODE_CHANGE_EN = common dso_local global i64 0, align 8
@GMAC_SPEED_1000 = common dso_local global i64 0, align 8
@GMAC_SPEED_100 = common dso_local global i64 0, align 8
@GMAC_SPEED_10 = common dso_local global i64 0, align 8
@PORT_MODE = common dso_local global i64 0, align 8
@MAC_DUPLEX_HALF_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i64, i64)* @hix5hd2_config_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hix5hd2_config_port(%struct.net_device* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.hix5hd2_priv*, align 8
  %8 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.hix5hd2_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.hix5hd2_priv* %10, %struct.hix5hd2_priv** %7, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %7, align 8
  %13 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %12, i32 0, i32 4
  store i64 %11, i64* %13, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %7, align 8
  %16 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %15, i32 0, i32 3
  store i64 %14, i64* %16, align 8
  %17 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %7, align 8
  %18 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %45 [
    i32 128, label %20
    i32 129, label %36
  ]

20:                                               ; preds = %3
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @SPEED_1000, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i64, i64* @RGMII_SPEED_1000, align 8
  store i64 %25, i64* %8, align 8
  br label %35

26:                                               ; preds = %20
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* @SPEED_100, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i64, i64* @RGMII_SPEED_100, align 8
  store i64 %31, i64* %8, align 8
  br label %34

32:                                               ; preds = %26
  %33 = load i64, i64* @RGMII_SPEED_10, align 8
  store i64 %33, i64* %8, align 8
  br label %34

34:                                               ; preds = %32, %30
  br label %35

35:                                               ; preds = %34, %24
  br label %49

36:                                               ; preds = %3
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* @SPEED_100, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i64, i64* @MII_SPEED_100, align 8
  store i64 %41, i64* %8, align 8
  br label %44

42:                                               ; preds = %36
  %43 = load i64, i64* @MII_SPEED_10, align 8
  store i64 %43, i64* %8, align 8
  br label %44

44:                                               ; preds = %42, %40
  br label %49

45:                                               ; preds = %3
  %46 = load %struct.net_device*, %struct.net_device** %4, align 8
  %47 = call i32 @netdev_warn(%struct.net_device* %46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %48 = load i64, i64* @MII_SPEED_10, align 8
  store i64 %48, i64* %8, align 8
  br label %49

49:                                               ; preds = %45, %44, %35
  %50 = load i64, i64* %6, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i64, i64* @GMAC_FULL_DUPLEX, align 8
  %54 = load i64, i64* %8, align 8
  %55 = or i64 %54, %53
  store i64 %55, i64* %8, align 8
  br label %56

56:                                               ; preds = %52, %49
  %57 = load i64, i64* %8, align 8
  %58 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %7, align 8
  %59 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @writel_relaxed(i64 %57, i64 %60)
  %62 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %7, align 8
  %63 = call i32 @hix5hd2_mac_interface_reset(%struct.hix5hd2_priv* %62)
  %64 = load i64, i64* @BIT_MODE_CHANGE_EN, align 8
  %65 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %7, align 8
  %66 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @MODE_CHANGE_EN, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @writel_relaxed(i64 %64, i64 %69)
  %71 = load i64, i64* %5, align 8
  %72 = load i64, i64* @SPEED_1000, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %56
  %75 = load i64, i64* @GMAC_SPEED_1000, align 8
  store i64 %75, i64* %8, align 8
  br label %85

76:                                               ; preds = %56
  %77 = load i64, i64* %5, align 8
  %78 = load i64, i64* @SPEED_100, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i64, i64* @GMAC_SPEED_100, align 8
  store i64 %81, i64* %8, align 8
  br label %84

82:                                               ; preds = %76
  %83 = load i64, i64* @GMAC_SPEED_10, align 8
  store i64 %83, i64* %8, align 8
  br label %84

84:                                               ; preds = %82, %80
  br label %85

85:                                               ; preds = %84, %74
  %86 = load i64, i64* %8, align 8
  %87 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %7, align 8
  %88 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @PORT_MODE, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @writel_relaxed(i64 %86, i64 %91)
  %93 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %7, align 8
  %94 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @MODE_CHANGE_EN, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @writel_relaxed(i64 0, i64 %97)
  %99 = load i64, i64* %6, align 8
  %100 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %7, align 8
  %101 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @MAC_DUPLEX_HALF_CTRL, align 8
  %104 = add nsw i64 %102, %103
  %105 = call i32 @writel_relaxed(i64 %99, i64 %104)
  ret void
}

declare dso_local %struct.hix5hd2_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*) #1

declare dso_local i32 @writel_relaxed(i64, i64) #1

declare dso_local i32 @hix5hd2_mac_interface_reset(%struct.hix5hd2_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
