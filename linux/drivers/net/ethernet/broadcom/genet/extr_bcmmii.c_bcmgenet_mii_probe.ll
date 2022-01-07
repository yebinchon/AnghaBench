; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmmii.c_bcmgenet_mii_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmmii.c_bcmgenet_mii_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.phy_device* }
%struct.phy_device = type { i32, i32, i32, i32 }
%struct.bcmgenet_priv = type { i32, i32, i32, i32, i64, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@bcmgenet_mii_setup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"could not attach to PHY\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@PHY_IGNORE_INTERRUPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcmgenet_mii_probe(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.bcmgenet_priv*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.phy_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.bcmgenet_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.bcmgenet_priv* %10, %struct.bcmgenet_priv** %4, align 8
  %11 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %12 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %11, i32 0, i32 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %5, align 8
  store i32 0, i32* %7, align 4
  %17 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %18 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %23 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %21, %1
  %26 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %27 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %26, i32 0, i32 0
  store i32 -1, i32* %27, align 8
  %28 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %29 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %28, i32 0, i32 1
  store i32 -1, i32* %29, align 4
  %30 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %31 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %30, i32 0, i32 2
  store i32 -1, i32* %31, align 8
  %32 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %33 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %32, i32 0, i32 3
  store i32 -1, i32* %33, align 4
  %34 = load %struct.device_node*, %struct.device_node** %5, align 8
  %35 = icmp ne %struct.device_node* %34, null
  br i1 %35, label %36, label %54

36:                                               ; preds = %25
  %37 = load %struct.net_device*, %struct.net_device** %3, align 8
  %38 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %39 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @bcmgenet_mii_setup, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %44 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = call %struct.phy_device* @of_phy_connect(%struct.net_device* %37, i32 %40, i32 %41, i32 %42, i32 %45)
  store %struct.phy_device* %46, %struct.phy_device** %6, align 8
  %47 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %48 = icmp ne %struct.phy_device* %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %36
  %50 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @ENODEV, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %109

53:                                               ; preds = %36
  br label %75

54:                                               ; preds = %25
  %55 = load %struct.net_device*, %struct.net_device** %3, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 0
  %57 = load %struct.phy_device*, %struct.phy_device** %56, align 8
  store %struct.phy_device* %57, %struct.phy_device** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %60 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load %struct.net_device*, %struct.net_device** %3, align 8
  %62 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %63 = load i32, i32* @bcmgenet_mii_setup, align 4
  %64 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %65 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @phy_connect_direct(%struct.net_device* %61, %struct.phy_device* %62, i32 %63, i32 %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %54
  %71 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %72 = load i32, i32* @ENODEV, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %109

74:                                               ; preds = %54
  br label %75

75:                                               ; preds = %74, %53
  %76 = load %struct.net_device*, %struct.net_device** %3, align 8
  %77 = call i32 @bcmgenet_mii_config(%struct.net_device* %76, i32 1)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load %struct.net_device*, %struct.net_device** %3, align 8
  %82 = getelementptr inbounds %struct.net_device, %struct.net_device* %81, i32 0, i32 0
  %83 = load %struct.phy_device*, %struct.phy_device** %82, align 8
  %84 = call i32 @phy_disconnect(%struct.phy_device* %83)
  %85 = load i32, i32* %8, align 4
  store i32 %85, i32* %2, align 4
  br label %109

86:                                               ; preds = %75
  %87 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %88 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %91 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @linkmode_copy(i32 %89, i32 %92)
  %94 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %95 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %86
  %99 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %100 = call i32 @GENET_IS_V5(%struct.bcmgenet_priv* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %98
  %103 = load i32, i32* @PHY_IGNORE_INTERRUPT, align 4
  %104 = load %struct.net_device*, %struct.net_device** %3, align 8
  %105 = getelementptr inbounds %struct.net_device, %struct.net_device* %104, i32 0, i32 0
  %106 = load %struct.phy_device*, %struct.phy_device** %105, align 8
  %107 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %106, i32 0, i32 0
  store i32 %103, i32* %107, align 4
  br label %108

108:                                              ; preds = %102, %98, %86
  store i32 0, i32* %2, align 4
  br label %109

109:                                              ; preds = %108, %80, %70, %49
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local %struct.bcmgenet_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.phy_device* @of_phy_connect(%struct.net_device*, i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @phy_connect_direct(%struct.net_device*, %struct.phy_device*, i32, i32) #1

declare dso_local i32 @bcmgenet_mii_config(%struct.net_device*, i32) #1

declare dso_local i32 @phy_disconnect(%struct.phy_device*) #1

declare dso_local i32 @linkmode_copy(i32, i32) #1

declare dso_local i32 @GENET_IS_V5(%struct.bcmgenet_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
