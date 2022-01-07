; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_atl1_nway_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_atl1_nway_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.atl1_adapter = type { %struct.atl1_hw }
%struct.atl1_hw = type { i32 }

@MEDIA_TYPE_AUTO_SENSOR = common dso_local global i32 0, align 4
@MEDIA_TYPE_1000M_FULL = common dso_local global i32 0, align 4
@MII_CR_RESET = common dso_local global i32 0, align 4
@MII_CR_AUTO_NEG_EN = common dso_local global i32 0, align 4
@MII_CR_FULL_DUPLEX = common dso_local global i32 0, align 4
@MII_CR_SPEED_100 = common dso_local global i32 0, align 4
@MII_CR_SPEED_10 = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @atl1_nway_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1_nway_reset(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.atl1_adapter*, align 8
  %4 = alloca %struct.atl1_hw*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.atl1_adapter* @netdev_priv(%struct.net_device* %6)
  store %struct.atl1_adapter* %7, %struct.atl1_adapter** %3, align 8
  %8 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %8, i32 0, i32 0
  store %struct.atl1_hw* %9, %struct.atl1_hw** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call i64 @netif_running(%struct.net_device* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %63

13:                                               ; preds = %1
  %14 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %15 = call i32 @atl1_down(%struct.atl1_adapter* %14)
  %16 = load %struct.atl1_hw*, %struct.atl1_hw** %4, align 8
  %17 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @MEDIA_TYPE_AUTO_SENSOR, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %13
  %22 = load %struct.atl1_hw*, %struct.atl1_hw** %4, align 8
  %23 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MEDIA_TYPE_1000M_FULL, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21, %13
  %28 = load i32, i32* @MII_CR_RESET, align 4
  %29 = load i32, i32* @MII_CR_AUTO_NEG_EN, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* %5, align 4
  br label %56

31:                                               ; preds = %21
  %32 = load %struct.atl1_hw*, %struct.atl1_hw** %4, align 8
  %33 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %51 [
    i32 130, label %35
    i32 129, label %41
    i32 128, label %45
  ]

35:                                               ; preds = %31
  %36 = load i32, i32* @MII_CR_FULL_DUPLEX, align 4
  %37 = load i32, i32* @MII_CR_SPEED_100, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @MII_CR_RESET, align 4
  %40 = or i32 %38, %39
  store i32 %40, i32* %5, align 4
  br label %55

41:                                               ; preds = %31
  %42 = load i32, i32* @MII_CR_SPEED_100, align 4
  %43 = load i32, i32* @MII_CR_RESET, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* %5, align 4
  br label %55

45:                                               ; preds = %31
  %46 = load i32, i32* @MII_CR_FULL_DUPLEX, align 4
  %47 = load i32, i32* @MII_CR_SPEED_10, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @MII_CR_RESET, align 4
  %50 = or i32 %48, %49
  store i32 %50, i32* %5, align 4
  br label %55

51:                                               ; preds = %31
  %52 = load i32, i32* @MII_CR_SPEED_10, align 4
  %53 = load i32, i32* @MII_CR_RESET, align 4
  %54 = or i32 %52, %53
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %51, %45, %41, %35
  br label %56

56:                                               ; preds = %55, %27
  %57 = load %struct.atl1_hw*, %struct.atl1_hw** %4, align 8
  %58 = load i32, i32* @MII_BMCR, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @atl1_write_phy_reg(%struct.atl1_hw* %57, i32 %58, i32 %59)
  %61 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %62 = call i32 @atl1_up(%struct.atl1_adapter* %61)
  br label %63

63:                                               ; preds = %56, %1
  ret i32 0
}

declare dso_local %struct.atl1_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @atl1_down(%struct.atl1_adapter*) #1

declare dso_local i32 @atl1_write_phy_reg(%struct.atl1_hw*, i32, i32) #1

declare dso_local i32 @atl1_up(%struct.atl1_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
