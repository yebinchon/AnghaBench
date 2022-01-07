; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvmdio.c_orion_mdio_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvmdio.c_orion_mdio_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mii_bus = type { %struct.orion_mdio_dev* }
%struct.orion_mdio_dev = type { i64, i32*, i64 }

@MVMDIO_ERR_INT_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @orion_mdio_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orion_mdio_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.mii_bus*, align 8
  %4 = alloca %struct.orion_mdio_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.mii_bus* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.mii_bus* %7, %struct.mii_bus** %3, align 8
  %8 = load %struct.mii_bus*, %struct.mii_bus** %3, align 8
  %9 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %8, i32 0, i32 0
  %10 = load %struct.orion_mdio_dev*, %struct.orion_mdio_dev** %9, align 8
  store %struct.orion_mdio_dev* %10, %struct.orion_mdio_dev** %4, align 8
  %11 = load %struct.orion_mdio_dev*, %struct.orion_mdio_dev** %4, align 8
  %12 = getelementptr inbounds %struct.orion_mdio_dev, %struct.orion_mdio_dev* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.orion_mdio_dev*, %struct.orion_mdio_dev** %4, align 8
  %17 = getelementptr inbounds %struct.orion_mdio_dev, %struct.orion_mdio_dev* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MVMDIO_ERR_INT_MASK, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @writel(i32 0, i64 %20)
  br label %22

22:                                               ; preds = %15, %1
  %23 = load %struct.mii_bus*, %struct.mii_bus** %3, align 8
  %24 = call i32 @mdiobus_unregister(%struct.mii_bus* %23)
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %60, %22
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.orion_mdio_dev*, %struct.orion_mdio_dev** %4, align 8
  %28 = getelementptr inbounds %struct.orion_mdio_dev, %struct.orion_mdio_dev* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @ARRAY_SIZE(i32* %29)
  %31 = icmp slt i32 %26, %30
  br i1 %31, label %32, label %63

32:                                               ; preds = %25
  %33 = load %struct.orion_mdio_dev*, %struct.orion_mdio_dev** %4, align 8
  %34 = getelementptr inbounds %struct.orion_mdio_dev, %struct.orion_mdio_dev* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @IS_ERR(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  br label %63

43:                                               ; preds = %32
  %44 = load %struct.orion_mdio_dev*, %struct.orion_mdio_dev** %4, align 8
  %45 = getelementptr inbounds %struct.orion_mdio_dev, %struct.orion_mdio_dev* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @clk_disable_unprepare(i32 %50)
  %52 = load %struct.orion_mdio_dev*, %struct.orion_mdio_dev** %4, align 8
  %53 = getelementptr inbounds %struct.orion_mdio_dev, %struct.orion_mdio_dev* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @clk_put(i32 %58)
  br label %60

60:                                               ; preds = %43
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %25

63:                                               ; preds = %42, %25
  ret i32 0
}

declare dso_local %struct.mii_bus* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @mdiobus_unregister(%struct.mii_bus*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @clk_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
