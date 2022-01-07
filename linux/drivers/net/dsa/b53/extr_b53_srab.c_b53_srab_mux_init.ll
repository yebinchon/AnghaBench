; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_srab.c_b53_srab_mux_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_srab.c_b53_srab_mux_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.b53_device = type { %struct.TYPE_2__*, %struct.b53_srab_priv* }
%struct.TYPE_2__ = type { i64 }
%struct.b53_srab_priv = type { i32, %struct.b53_srab_port_priv* }
%struct.b53_srab_port_priv = type { i64 }

@BCM58XX_DEVICE_ID = common dso_local global i64 0, align 8
@B53_MUX_CONFIG_P5 = common dso_local global i32 0, align 4
@MUX_CONFIG_MASK = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_SGMII = common dso_local global i64 0, align 8
@PHY_INTERFACE_MODE_MII = common dso_local global i64 0, align 8
@PHY_INTERFACE_MODE_GMII = common dso_local global i64 0, align 8
@PHY_INTERFACE_MODE_RGMII = common dso_local global i64 0, align 8
@PHY_INTERFACE_MODE_INTERNAL = common dso_local global i64 0, align 8
@PHY_INTERFACE_MODE_NA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"Port %d mode: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*)* @b53_srab_mux_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b53_srab_mux_init(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.b53_device*, align 8
  %4 = alloca %struct.b53_srab_priv*, align 8
  %5 = alloca %struct.b53_srab_port_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %11 = call %struct.b53_device* @platform_get_drvdata(%struct.platform_device* %10)
  store %struct.b53_device* %11, %struct.b53_device** %3, align 8
  %12 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %13 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %12, i32 0, i32 1
  %14 = load %struct.b53_srab_priv*, %struct.b53_srab_priv** %13, align 8
  store %struct.b53_srab_priv* %14, %struct.b53_srab_priv** %4, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %16 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = icmp ne %struct.TYPE_2__* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %1
  %20 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %21 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @BCM58XX_DEVICE_ID, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %113

28:                                               ; preds = %19, %1
  %29 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %30 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %29, i32 1)
  %31 = load %struct.b53_srab_priv*, %struct.b53_srab_priv** %4, align 8
  %32 = getelementptr inbounds %struct.b53_srab_priv, %struct.b53_srab_priv* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.b53_srab_priv*, %struct.b53_srab_priv** %4, align 8
  %34 = getelementptr inbounds %struct.b53_srab_priv, %struct.b53_srab_priv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @IS_ERR(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  br label %113

39:                                               ; preds = %28
  store i32 5, i32* %6, align 4
  br label %40

40:                                               ; preds = %108, %39
  %41 = load i32, i32* %6, align 4
  %42 = icmp ugt i32 %41, 3
  br i1 %42, label %43, label %113

43:                                               ; preds = %40
  %44 = load %struct.b53_srab_priv*, %struct.b53_srab_priv** %4, align 8
  %45 = getelementptr inbounds %struct.b53_srab_priv, %struct.b53_srab_priv* %44, i32 0, i32 1
  %46 = load %struct.b53_srab_port_priv*, %struct.b53_srab_port_priv** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.b53_srab_port_priv, %struct.b53_srab_port_priv* %46, i64 %48
  store %struct.b53_srab_port_priv* %49, %struct.b53_srab_port_priv** %5, align 8
  %50 = load %struct.b53_srab_priv*, %struct.b53_srab_priv** %4, align 8
  %51 = getelementptr inbounds %struct.b53_srab_priv, %struct.b53_srab_priv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @B53_MUX_CONFIG_P5, align 4
  %54 = add nsw i32 %52, %53
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %54, %55
  %57 = call i32 @readl(i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @MUX_CONFIG_MASK, align 4
  %60 = and i32 %58, %59
  switch i32 %60, label %88 [
    i32 128, label %61
    i32 130, label %72
    i32 132, label %76
    i32 129, label %80
    i32 131, label %84
  ]

61:                                               ; preds = %43
  %62 = load i64, i64* @PHY_INTERFACE_MODE_SGMII, align 8
  %63 = load %struct.b53_srab_port_priv*, %struct.b53_srab_port_priv** %5, align 8
  %64 = getelementptr inbounds %struct.b53_srab_port_priv, %struct.b53_srab_port_priv* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @b53_serdes_init(%struct.b53_device* %65, i32 %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  br label %108

71:                                               ; preds = %61
  br label %92

72:                                               ; preds = %43
  %73 = load i64, i64* @PHY_INTERFACE_MODE_MII, align 8
  %74 = load %struct.b53_srab_port_priv*, %struct.b53_srab_port_priv** %5, align 8
  %75 = getelementptr inbounds %struct.b53_srab_port_priv, %struct.b53_srab_port_priv* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  br label %92

76:                                               ; preds = %43
  %77 = load i64, i64* @PHY_INTERFACE_MODE_GMII, align 8
  %78 = load %struct.b53_srab_port_priv*, %struct.b53_srab_port_priv** %5, align 8
  %79 = getelementptr inbounds %struct.b53_srab_port_priv, %struct.b53_srab_port_priv* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  br label %92

80:                                               ; preds = %43
  %81 = load i64, i64* @PHY_INTERFACE_MODE_RGMII, align 8
  %82 = load %struct.b53_srab_port_priv*, %struct.b53_srab_port_priv** %5, align 8
  %83 = getelementptr inbounds %struct.b53_srab_port_priv, %struct.b53_srab_port_priv* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  br label %92

84:                                               ; preds = %43
  %85 = load i64, i64* @PHY_INTERFACE_MODE_INTERNAL, align 8
  %86 = load %struct.b53_srab_port_priv*, %struct.b53_srab_port_priv** %5, align 8
  %87 = getelementptr inbounds %struct.b53_srab_port_priv, %struct.b53_srab_port_priv* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  br label %92

88:                                               ; preds = %43
  %89 = load i64, i64* @PHY_INTERFACE_MODE_NA, align 8
  %90 = load %struct.b53_srab_port_priv*, %struct.b53_srab_port_priv** %5, align 8
  %91 = getelementptr inbounds %struct.b53_srab_port_priv, %struct.b53_srab_port_priv* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  br label %92

92:                                               ; preds = %88, %84, %80, %76, %72, %71
  %93 = load %struct.b53_srab_port_priv*, %struct.b53_srab_port_priv** %5, align 8
  %94 = getelementptr inbounds %struct.b53_srab_port_priv, %struct.b53_srab_port_priv* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @PHY_INTERFACE_MODE_NA, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %107

98:                                               ; preds = %92
  %99 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %100 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %99, i32 0, i32 0
  %101 = load i32, i32* %6, align 4
  %102 = load %struct.b53_srab_port_priv*, %struct.b53_srab_port_priv** %5, align 8
  %103 = getelementptr inbounds %struct.b53_srab_port_priv, %struct.b53_srab_port_priv* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @phy_modes(i64 %104)
  %106 = call i32 @dev_info(i32* %100, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %101, i32 %105)
  br label %107

107:                                              ; preds = %98, %92
  br label %108

108:                                              ; preds = %107, %70
  %109 = load i32, i32* %6, align 4
  %110 = add i32 %109, -1
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* %8, align 4
  %112 = add nsw i32 %111, 4
  store i32 %112, i32* %8, align 4
  br label %40

113:                                              ; preds = %27, %38, %40
  ret void
}

declare dso_local %struct.b53_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @b53_serdes_init(%struct.b53_device*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @phy_modes(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
