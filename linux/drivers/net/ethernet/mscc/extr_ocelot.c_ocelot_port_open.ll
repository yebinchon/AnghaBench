; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot.c_ocelot_port_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot.c_ocelot_port_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ocelot_port = type { i32, i32, i64, i32, %struct.ocelot* }
%struct.ocelot = type { i32 }

@ANA_PORT_PORT_CFG_LEARNAUTO = common dso_local global i32 0, align 4
@ANA_PORT_PORT_CFG_RECV_ENA = common dso_local global i32 0, align 4
@ANA_PORT_PORT_CFG = common dso_local global i32 0, align 4
@PHY_MODE_ETHERNET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Could not set mode of SerDes\0A\00", align 1
@ocelot_port_adjust_link = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Could not attach to PHY\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ocelot_port_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocelot_port_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ocelot_port*, align 8
  %5 = alloca %struct.ocelot*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.ocelot_port* @netdev_priv(%struct.net_device* %7)
  store %struct.ocelot_port* %8, %struct.ocelot_port** %4, align 8
  %9 = load %struct.ocelot_port*, %struct.ocelot_port** %4, align 8
  %10 = getelementptr inbounds %struct.ocelot_port, %struct.ocelot_port* %9, i32 0, i32 4
  %11 = load %struct.ocelot*, %struct.ocelot** %10, align 8
  store %struct.ocelot* %11, %struct.ocelot** %5, align 8
  %12 = load %struct.ocelot*, %struct.ocelot** %5, align 8
  %13 = load i32, i32* @ANA_PORT_PORT_CFG_LEARNAUTO, align 4
  %14 = load i32, i32* @ANA_PORT_PORT_CFG_RECV_ENA, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.ocelot_port*, %struct.ocelot_port** %4, align 8
  %17 = getelementptr inbounds %struct.ocelot_port, %struct.ocelot_port* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @ANA_PORT_PORT_CFG_PORTID_VAL(i32 %18)
  %20 = or i32 %15, %19
  %21 = load i32, i32* @ANA_PORT_PORT_CFG, align 4
  %22 = load %struct.ocelot_port*, %struct.ocelot_port** %4, align 8
  %23 = getelementptr inbounds %struct.ocelot_port, %struct.ocelot_port* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @ocelot_write_gix(%struct.ocelot* %12, i32 %20, i32 %21, i32 %24)
  %26 = load %struct.ocelot_port*, %struct.ocelot_port** %4, align 8
  %27 = getelementptr inbounds %struct.ocelot_port, %struct.ocelot_port* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %1
  %31 = load %struct.ocelot_port*, %struct.ocelot_port** %4, align 8
  %32 = getelementptr inbounds %struct.ocelot_port, %struct.ocelot_port* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* @PHY_MODE_ETHERNET, align 4
  %35 = load %struct.ocelot_port*, %struct.ocelot_port** %4, align 8
  %36 = getelementptr inbounds %struct.ocelot_port, %struct.ocelot_port* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @phy_set_mode_ext(i64 %33, i32 %34, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %30
  %42 = load %struct.net_device*, %struct.net_device** %3, align 8
  %43 = call i32 @netdev_err(%struct.net_device* %42, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %75

45:                                               ; preds = %30
  br label %46

46:                                               ; preds = %45, %1
  %47 = load %struct.net_device*, %struct.net_device** %3, align 8
  %48 = load %struct.ocelot_port*, %struct.ocelot_port** %4, align 8
  %49 = getelementptr inbounds %struct.ocelot_port, %struct.ocelot_port* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.ocelot_port*, %struct.ocelot_port** %4, align 8
  %52 = getelementptr inbounds %struct.ocelot_port, %struct.ocelot_port* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @phy_connect_direct(%struct.net_device* %47, i32 %50, i32* @ocelot_port_adjust_link, i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %46
  %58 = load %struct.net_device*, %struct.net_device** %3, align 8
  %59 = call i32 @netdev_err(%struct.net_device* %58, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %2, align 4
  br label %75

61:                                               ; preds = %46
  %62 = load %struct.ocelot_port*, %struct.ocelot_port** %4, align 8
  %63 = getelementptr inbounds %struct.ocelot_port, %struct.ocelot_port* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.net_device*, %struct.net_device** %3, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load %struct.ocelot_port*, %struct.ocelot_port** %4, align 8
  %68 = getelementptr inbounds %struct.ocelot_port, %struct.ocelot_port* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @phy_attached_info(i32 %69)
  %71 = load %struct.ocelot_port*, %struct.ocelot_port** %4, align 8
  %72 = getelementptr inbounds %struct.ocelot_port, %struct.ocelot_port* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @phy_start(i32 %73)
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %61, %57, %41
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.ocelot_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ocelot_write_gix(%struct.ocelot*, i32, i32, i32) #1

declare dso_local i32 @ANA_PORT_PORT_CFG_PORTID_VAL(i32) #1

declare dso_local i32 @phy_set_mode_ext(i64, i32, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @phy_connect_direct(%struct.net_device*, i32, i32*, i32) #1

declare dso_local i32 @phy_attached_info(i32) #1

declare dso_local i32 @phy_start(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
