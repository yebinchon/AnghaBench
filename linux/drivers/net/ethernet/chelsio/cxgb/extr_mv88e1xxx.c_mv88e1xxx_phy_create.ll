; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_mv88e1xxx.c_mv88e1xxx_phy_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_mv88e1xxx.c_mv88e1xxx_phy_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cphy = type { i32 }
%struct.net_device = type { i32 }
%struct.mdio_ops = type { i32 }
%struct.adapter = type { i32 }
%struct.TYPE_2__ = type { i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@mv88e1xxx_ops = common dso_local global i32 0, align 4
@SUPPORTED_TP = common dso_local global i32 0, align 4
@CHBT_PHY_88E1111 = common dso_local global i64 0, align 8
@MV88E1XXX_EXTENDED_ADDR_REGISTER = common dso_local global i32 0, align 4
@MV88E1XXX_EXTENDED_REGISTER = common dso_local global i32 0, align 4
@MV88E1XXX_LED_CONTROL_REGISTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cphy* (%struct.net_device*, i32, %struct.mdio_ops*)* @mv88e1xxx_phy_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cphy* @mv88e1xxx_phy_create(%struct.net_device* %0, i32 %1, %struct.mdio_ops* %2) #0 {
  %4 = alloca %struct.cphy*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mdio_ops*, align 8
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca %struct.cphy*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mdio_ops* %2, %struct.mdio_ops** %7, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.adapter* @netdev_priv(%struct.net_device* %10)
  store %struct.adapter* %11, %struct.adapter** %8, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.cphy* @kzalloc(i32 4, i32 %12)
  store %struct.cphy* %13, %struct.cphy** %9, align 8
  %14 = load %struct.cphy*, %struct.cphy** %9, align 8
  %15 = icmp ne %struct.cphy* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store %struct.cphy* null, %struct.cphy** %4, align 8
  br label %56

17:                                               ; preds = %3
  %18 = load %struct.cphy*, %struct.cphy** %9, align 8
  %19 = load %struct.net_device*, %struct.net_device** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.mdio_ops*, %struct.mdio_ops** %7, align 8
  %22 = call i32 @cphy_init(%struct.cphy* %18, %struct.net_device* %19, i32 %20, i32* @mv88e1xxx_ops, %struct.mdio_ops* %21)
  %23 = load %struct.adapter*, %struct.adapter** %8, align 8
  %24 = call %struct.TYPE_2__* @board_info(%struct.adapter* %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @SUPPORTED_TP, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %17
  %31 = load %struct.adapter*, %struct.adapter** %8, align 8
  %32 = call %struct.TYPE_2__* @board_info(%struct.adapter* %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @CHBT_PHY_88E1111, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = load %struct.cphy*, %struct.cphy** %9, align 8
  %39 = load i32, i32* @MV88E1XXX_EXTENDED_ADDR_REGISTER, align 4
  %40 = call i32 @simple_mdio_write(%struct.cphy* %38, i32 %39, i32 11)
  %41 = load %struct.cphy*, %struct.cphy** %9, align 8
  %42 = load i32, i32* @MV88E1XXX_EXTENDED_REGISTER, align 4
  %43 = call i32 @simple_mdio_write(%struct.cphy* %41, i32 %42, i32 32772)
  br label %44

44:                                               ; preds = %37, %30, %17
  %45 = load %struct.cphy*, %struct.cphy** %9, align 8
  %46 = call i32 @mv88e1xxx_downshift_set(%struct.cphy* %45, i32 1)
  %47 = load %struct.adapter*, %struct.adapter** %8, align 8
  %48 = call i64 @is_T2(%struct.adapter* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load %struct.cphy*, %struct.cphy** %9, align 8
  %52 = load i32, i32* @MV88E1XXX_LED_CONTROL_REGISTER, align 4
  %53 = call i32 @simple_mdio_write(%struct.cphy* %51, i32 %52, i32 1)
  br label %54

54:                                               ; preds = %50, %44
  %55 = load %struct.cphy*, %struct.cphy** %9, align 8
  store %struct.cphy* %55, %struct.cphy** %4, align 8
  br label %56

56:                                               ; preds = %54, %16
  %57 = load %struct.cphy*, %struct.cphy** %4, align 8
  ret %struct.cphy* %57
}

declare dso_local %struct.adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.cphy* @kzalloc(i32, i32) #1

declare dso_local i32 @cphy_init(%struct.cphy*, %struct.net_device*, i32, i32*, %struct.mdio_ops*) #1

declare dso_local %struct.TYPE_2__* @board_info(%struct.adapter*) #1

declare dso_local i32 @simple_mdio_write(%struct.cphy*, i32, i32) #1

declare dso_local i32 @mv88e1xxx_downshift_set(%struct.cphy*, i32) #1

declare dso_local i64 @is_T2(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
