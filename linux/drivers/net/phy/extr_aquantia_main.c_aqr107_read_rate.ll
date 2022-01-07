; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_aquantia_main.c_aqr107_read_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_aquantia_main.c_aqr107_read_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32, i32 }

@MDIO_MMD_AN = common dso_local global i32 0, align 4
@MDIO_AN_TX_VEND_STATUS1 = common dso_local global i32 0, align 4
@MDIO_AN_TX_VEND_STATUS1_RATE_MASK = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@SPEED_2500 = common dso_local global i32 0, align 4
@SPEED_5000 = common dso_local global i32 0, align 4
@SPEED_10000 = common dso_local global i32 0, align 4
@SPEED_UNKNOWN = common dso_local global i32 0, align 4
@MDIO_AN_TX_VEND_STATUS1_FULL_DUPLEX = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @aqr107_read_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aqr107_read_rate(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %5 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %6 = load i32, i32* @MDIO_MMD_AN, align 4
  %7 = load i32, i32* @MDIO_AN_TX_VEND_STATUS1, align 4
  %8 = call i32 @phy_read_mmd(%struct.phy_device* %5, i32 %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %59

13:                                               ; preds = %1
  %14 = load i32, i32* @MDIO_AN_TX_VEND_STATUS1_RATE_MASK, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @FIELD_GET(i32 %14, i32 %15)
  switch i32 %16, label %41 [
    i32 131, label %17
    i32 132, label %21
    i32 133, label %25
    i32 129, label %29
    i32 128, label %33
    i32 130, label %37
  ]

17:                                               ; preds = %13
  %18 = load i32, i32* @SPEED_10, align 4
  %19 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %20 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  br label %45

21:                                               ; preds = %13
  %22 = load i32, i32* @SPEED_100, align 4
  %23 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %24 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  br label %45

25:                                               ; preds = %13
  %26 = load i32, i32* @SPEED_1000, align 4
  %27 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %28 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  br label %45

29:                                               ; preds = %13
  %30 = load i32, i32* @SPEED_2500, align 4
  %31 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %32 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  br label %45

33:                                               ; preds = %13
  %34 = load i32, i32* @SPEED_5000, align 4
  %35 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %36 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  br label %45

37:                                               ; preds = %13
  %38 = load i32, i32* @SPEED_10000, align 4
  %39 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %40 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  br label %45

41:                                               ; preds = %13
  %42 = load i32, i32* @SPEED_UNKNOWN, align 4
  %43 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %44 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %41, %37, %33, %29, %25, %21, %17
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @MDIO_AN_TX_VEND_STATUS1_FULL_DUPLEX, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i32, i32* @DUPLEX_FULL, align 4
  %52 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %53 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  br label %58

54:                                               ; preds = %45
  %55 = load i32, i32* @DUPLEX_HALF, align 4
  %56 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %57 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %54, %50
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %11
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @phy_read_mmd(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @FIELD_GET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
