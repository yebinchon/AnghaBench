; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy_device.c_phy_bus_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy_device.c_phy_bus_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_driver = type { i32 }
%struct.phy_device = type { i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32*, i32 }
%struct.phy_driver = type { i32 (%struct.phy_device.0*)*, i32, i32, %struct.TYPE_3__ }
%struct.phy_device.0 = type opaque
%struct.TYPE_3__ = type { i32 }

@MDIO_DEVICE_IS_PHY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_driver*)* @phy_bus_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phy_bus_match(%struct.device* %0, %struct.device_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_driver*, align 8
  %6 = alloca %struct.phy_device*, align 8
  %7 = alloca %struct.phy_driver*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_driver* %1, %struct.device_driver** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.phy_device* @to_phy_device(%struct.device* %10)
  store %struct.phy_device* %11, %struct.phy_device** %6, align 8
  %12 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %13 = call %struct.phy_driver* @to_phy_driver(%struct.device_driver* %12)
  store %struct.phy_driver* %13, %struct.phy_driver** %7, align 8
  %14 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %15 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @ARRAY_SIZE(i32* %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.phy_driver*, %struct.phy_driver** %7, align 8
  %20 = getelementptr inbounds %struct.phy_driver, %struct.phy_driver* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @MDIO_DEVICE_IS_PHY, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %103

27:                                               ; preds = %2
  %28 = load %struct.phy_driver*, %struct.phy_driver** %7, align 8
  %29 = getelementptr inbounds %struct.phy_driver, %struct.phy_driver* %28, i32 0, i32 0
  %30 = load i32 (%struct.phy_device.0*)*, i32 (%struct.phy_device.0*)** %29, align 8
  %31 = icmp ne i32 (%struct.phy_device.0*)* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load %struct.phy_driver*, %struct.phy_driver** %7, align 8
  %34 = getelementptr inbounds %struct.phy_driver, %struct.phy_driver* %33, i32 0, i32 0
  %35 = load i32 (%struct.phy_device.0*)*, i32 (%struct.phy_device.0*)** %34, align 8
  %36 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %37 = bitcast %struct.phy_device* %36 to %struct.phy_device.0*
  %38 = call i32 %35(%struct.phy_device.0* %37)
  store i32 %38, i32* %3, align 4
  br label %103

39:                                               ; preds = %27
  %40 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %41 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %86

44:                                               ; preds = %39
  store i32 1, i32* %9, align 4
  br label %45

45:                                               ; preds = %82, %44
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %85

49:                                               ; preds = %45
  %50 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %51 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = shl i32 1, %54
  %56 = and i32 %53, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %49
  br label %82

59:                                               ; preds = %49
  %60 = load %struct.phy_driver*, %struct.phy_driver** %7, align 8
  %61 = getelementptr inbounds %struct.phy_driver, %struct.phy_driver* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.phy_driver*, %struct.phy_driver** %7, align 8
  %64 = getelementptr inbounds %struct.phy_driver, %struct.phy_driver* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %62, %65
  %67 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %68 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.phy_driver*, %struct.phy_driver** %7, align 8
  %76 = getelementptr inbounds %struct.phy_driver, %struct.phy_driver* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %74, %77
  %79 = icmp eq i32 %66, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %59
  store i32 1, i32* %3, align 4
  br label %103

81:                                               ; preds = %59
  br label %82

82:                                               ; preds = %81, %58
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %9, align 4
  br label %45

85:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %103

86:                                               ; preds = %39
  %87 = load %struct.phy_driver*, %struct.phy_driver** %7, align 8
  %88 = getelementptr inbounds %struct.phy_driver, %struct.phy_driver* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.phy_driver*, %struct.phy_driver** %7, align 8
  %91 = getelementptr inbounds %struct.phy_driver, %struct.phy_driver* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %89, %92
  %94 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %95 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.phy_driver*, %struct.phy_driver** %7, align 8
  %98 = getelementptr inbounds %struct.phy_driver, %struct.phy_driver* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %96, %99
  %101 = icmp eq i32 %93, %100
  %102 = zext i1 %101 to i32
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %86, %85, %80, %32, %26
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local %struct.phy_device* @to_phy_device(%struct.device*) #1

declare dso_local %struct.phy_driver* @to_phy_driver(%struct.device_driver*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
