; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_icplus.c_ip175c_config_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_icplus.c_ip175c_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@ip175c_config_init.full_reset_performed = internal global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_RESET = common dso_local global i32 0, align 4
@PHY_RUNNING = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @ip175c_config_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip175c_config_init(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %6 = load i32, i32* @ip175c_config_init.full_reset_performed, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %82

8:                                                ; preds = %1
  %9 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %10 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @mdiobus_write(i32 %12, i32 30, i32 0, i32 5980)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %8
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %105

18:                                               ; preds = %8
  %19 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %20 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %19, i32 0, i32 5
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @mdiobus_read(i32 %22, i32 30, i32 0)
  store i32 %23, i32* %4, align 4
  %24 = call i32 @mdelay(i32 2)
  %25 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %26 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @mdiobus_write(i32 %28, i32 29, i32 31, i32 5980)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %18
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %105

34:                                               ; preds = %18
  %35 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %36 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @mdiobus_write(i32 %38, i32 29, i32 22, i32 1056)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %105

44:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %62, %44
  %46 = load i32, i32* %5, align 4
  %47 = icmp slt i32 %46, 5
  br i1 %47, label %48, label %65

48:                                               ; preds = %45
  %49 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %50 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @MII_BMCR, align 4
  %55 = load i32, i32* @BMCR_RESET, align 4
  %56 = call i32 @mdiobus_write(i32 %52, i32 %53, i32 %54, i32 %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %48
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %2, align 4
  br label %105

61:                                               ; preds = %48
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %45

65:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %77, %65
  %67 = load i32, i32* %5, align 4
  %68 = icmp slt i32 %67, 5
  br i1 %68, label %69, label %80

69:                                               ; preds = %66
  %70 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %71 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %70, i32 0, i32 5
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @MII_BMCR, align 4
  %76 = call i32 @mdiobus_read(i32 %73, i32 %74, i32 %75)
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %69
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %5, align 4
  br label %66

80:                                               ; preds = %66
  %81 = call i32 @mdelay(i32 2)
  store i32 1, i32* @ip175c_config_init.full_reset_performed, align 4
  br label %82

82:                                               ; preds = %80, %1
  %83 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %84 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %83, i32 0, i32 5
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 4
  br i1 %87, label %88, label %104

88:                                               ; preds = %82
  %89 = load i32, i32* @PHY_RUNNING, align 4
  %90 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %91 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %90, i32 0, i32 4
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* @SPEED_100, align 4
  %93 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %94 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* @DUPLEX_FULL, align 4
  %96 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %97 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 4
  %98 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %99 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %98, i32 0, i32 0
  store i32 1, i32* %99, align 4
  %100 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %101 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @netif_carrier_on(i32 %102)
  br label %104

104:                                              ; preds = %88, %82
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %104, %59, %42, %32, %16
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @mdiobus_write(i32, i32, i32, i32) #1

declare dso_local i32 @mdiobus_read(i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @netif_carrier_on(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
