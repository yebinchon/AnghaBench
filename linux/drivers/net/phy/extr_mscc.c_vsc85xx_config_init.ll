; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mscc.c_vsc85xx_config_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mscc.c_vsc85xx_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { %struct.TYPE_2__*, i32, %struct.vsc8531_private* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.vsc8531_private = type { i32, i32*, i32 }

@PHY_ID_VSC8531 = common dso_local global i32 0, align 4
@PHY_ID_VSC8541 = common dso_local global i32 0, align 4
@PHY_ID_VSC8530 = common dso_local global i32 0, align 4
@PHY_ID_VSC8540 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @vsc85xx_config_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsc85xx_config_init(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vsc8531_private*, align 8
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %8 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %9 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %8, i32 0, i32 2
  %10 = load %struct.vsc8531_private*, %struct.vsc8531_private** %9, align 8
  store %struct.vsc8531_private* %10, %struct.vsc8531_private** %7, align 8
  %11 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %12 = call i32 @vsc85xx_default_config(%struct.phy_device* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %106

17:                                               ; preds = %1
  %18 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %19 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %20 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @vsc85xx_mac_if_set(%struct.phy_device* %18, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %106

27:                                               ; preds = %17
  %28 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %29 = load %struct.vsc8531_private*, %struct.vsc8531_private** %7, align 8
  %30 = getelementptr inbounds %struct.vsc8531_private, %struct.vsc8531_private* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @vsc85xx_edge_rate_cntl_set(%struct.phy_device* %28, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %106

37:                                               ; preds = %27
  %38 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %39 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %44 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %42, %47
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* @PHY_ID_VSC8531, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %64, label %52

52:                                               ; preds = %37
  %53 = load i32, i32* @PHY_ID_VSC8541, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %64, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* @PHY_ID_VSC8530, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* @PHY_ID_VSC8540, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %60, %56, %52, %37
  %65 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %66 = call i32 @vsc8531_pre_init_seq_set(%struct.phy_device* %65)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i32, i32* %4, align 4
  store i32 %70, i32* %2, align 4
  br label %106

71:                                               ; preds = %64
  br label %72

72:                                               ; preds = %71, %60
  %73 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %74 = call i32 @vsc85xx_eee_init_seq_set(%struct.phy_device* %73)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i32, i32* %4, align 4
  store i32 %78, i32* %2, align 4
  br label %106

79:                                               ; preds = %72
  store i32 0, i32* %5, align 4
  br label %80

80:                                               ; preds = %102, %79
  %81 = load i32, i32* %5, align 4
  %82 = load %struct.vsc8531_private*, %struct.vsc8531_private** %7, align 8
  %83 = getelementptr inbounds %struct.vsc8531_private, %struct.vsc8531_private* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %105

86:                                               ; preds = %80
  %87 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %88 = load i32, i32* %5, align 4
  %89 = load %struct.vsc8531_private*, %struct.vsc8531_private** %7, align 8
  %90 = getelementptr inbounds %struct.vsc8531_private, %struct.vsc8531_private* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @vsc85xx_led_cntl_set(%struct.phy_device* %87, i32 %88, i32 %95)
  store i32 %96, i32* %4, align 4
  %97 = load i32, i32* %4, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %86
  %100 = load i32, i32* %4, align 4
  store i32 %100, i32* %2, align 4
  br label %106

101:                                              ; preds = %86
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %5, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %5, align 4
  br label %80

105:                                              ; preds = %80
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %105, %99, %77, %69, %35, %25, %15
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @vsc85xx_default_config(%struct.phy_device*) #1

declare dso_local i32 @vsc85xx_mac_if_set(%struct.phy_device*, i32) #1

declare dso_local i32 @vsc85xx_edge_rate_cntl_set(%struct.phy_device*, i32) #1

declare dso_local i32 @vsc8531_pre_init_seq_set(%struct.phy_device*) #1

declare dso_local i32 @vsc85xx_eee_init_seq_set(%struct.phy_device*) #1

declare dso_local i32 @vsc85xx_led_cntl_set(%struct.phy_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
