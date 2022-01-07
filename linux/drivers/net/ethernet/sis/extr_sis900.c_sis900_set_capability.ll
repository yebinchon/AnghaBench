; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sis/extr_sis900.c_sis900_set_capability.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sis/extr_sis900.c_sis900_set_capability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mii_phy = type { i32, i32 }

@MII_STATUS = common dso_local global i32 0, align 4
@MII_NWAY_CSMA_CD = common dso_local global i32 0, align 4
@MII_STAT_CAN_TX_FDX = common dso_local global i32 0, align 4
@MII_NWAY_TX_FDX = common dso_local global i32 0, align 4
@MII_STAT_CAN_TX = common dso_local global i32 0, align 4
@MII_NWAY_TX = common dso_local global i32 0, align 4
@MII_STAT_CAN_T_FDX = common dso_local global i32 0, align 4
@MII_NWAY_T_FDX = common dso_local global i32 0, align 4
@MII_STAT_CAN_T = common dso_local global i32 0, align 4
@MII_NWAY_T = common dso_local global i32 0, align 4
@MII_ANADV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.mii_phy*)* @sis900_set_capability to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sis900_set_capability(%struct.net_device* %0, %struct.mii_phy* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.mii_phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.mii_phy* %1, %struct.mii_phy** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %9 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @MII_STATUS, align 4
  %12 = call i32 @mdio_read(%struct.net_device* %7, i32 %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %15 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MII_STATUS, align 4
  %18 = call i32 @mdio_read(%struct.net_device* %13, i32 %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @MII_NWAY_CSMA_CD, align 4
  %20 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %21 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @MII_STAT_CAN_TX_FDX, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @MII_NWAY_TX_FDX, align 4
  br label %29

28:                                               ; preds = %2
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i32 [ %27, %26 ], [ 0, %28 ]
  %31 = or i32 %19, %30
  %32 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %33 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @MII_STAT_CAN_TX, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load i32, i32* @MII_NWAY_TX, align 4
  br label %41

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %40, %38
  %42 = phi i32 [ %39, %38 ], [ 0, %40 ]
  %43 = or i32 %31, %42
  %44 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %45 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @MII_STAT_CAN_T_FDX, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = load i32, i32* @MII_NWAY_T_FDX, align 4
  br label %53

52:                                               ; preds = %41
  br label %53

53:                                               ; preds = %52, %50
  %54 = phi i32 [ %51, %50 ], [ 0, %52 ]
  %55 = or i32 %43, %54
  %56 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %57 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @MII_STAT_CAN_T, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %53
  %63 = load i32, i32* @MII_NWAY_T, align 4
  br label %65

64:                                               ; preds = %53
  br label %65

65:                                               ; preds = %64, %62
  %66 = phi i32 [ %63, %62 ], [ 0, %64 ]
  %67 = or i32 %55, %66
  store i32 %67, i32* %5, align 4
  %68 = load %struct.net_device*, %struct.net_device** %3, align 8
  %69 = load %struct.mii_phy*, %struct.mii_phy** %4, align 8
  %70 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @MII_ANADV, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @mdio_write(%struct.net_device* %68, i32 %71, i32 %72, i32 %73)
  ret void
}

declare dso_local i32 @mdio_read(%struct.net_device*, i32, i32) #1

declare dso_local i32 @mdio_write(%struct.net_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
