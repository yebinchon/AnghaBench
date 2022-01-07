; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_main.c_atl1e_check_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_main.c_atl1e_check_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1e_adapter = type { i64, i64, %struct.net_device*, %struct.atl1e_hw }
%struct.net_device = type { i32 }
%struct.atl1e_hw = type { i32 }

@MII_BMSR = common dso_local global i32 0, align 4
@BMSR_LSTATUS = common dso_local global i64 0, align 8
@REG_MAC_CTRL = common dso_local global i32 0, align 4
@MAC_CTRL_RX_EN = common dso_local global i32 0, align 4
@SPEED_0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"NIC Link is Up <%d Mbps %s Duplex>\0A\00", align 1
@FULL_DUPLEX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"Full\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Half\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atl1e_adapter*)* @atl1e_check_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1e_check_link(%struct.atl1e_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atl1e_adapter*, align 8
  %4 = alloca %struct.atl1e_hw*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.atl1e_adapter* %0, %struct.atl1e_adapter** %3, align 8
  %11 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %11, i32 0, i32 3
  store %struct.atl1e_hw* %12, %struct.atl1e_hw** %4, align 8
  %13 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %13, i32 0, i32 2
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %5, align 8
  store i32 0, i32* %6, align 4
  %16 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %17 = load i32, i32* @MII_BMSR, align 4
  %18 = call i32 @atl1e_read_phy_reg(%struct.atl1e_hw* %16, i32 %17, i64* %9)
  %19 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %20 = load i32, i32* @MII_BMSR, align 4
  %21 = call i32 @atl1e_read_phy_reg(%struct.atl1e_hw* %19, i32 %20, i64* %9)
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* @BMSR_LSTATUS, align 8
  %24 = and i64 %22, %23
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %50

26:                                               ; preds = %1
  %27 = load %struct.net_device*, %struct.net_device** %5, align 8
  %28 = call i64 @netif_carrier_ok(%struct.net_device* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %49

30:                                               ; preds = %26
  %31 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %32 = load i32, i32* @REG_MAC_CTRL, align 4
  %33 = call i32 @AT_READ_REG(%struct.atl1e_hw* %31, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* @MAC_CTRL_RX_EN, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %10, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %10, align 4
  %38 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %39 = load i32, i32* @REG_MAC_CTRL, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @AT_WRITE_REG(%struct.atl1e_hw* %38, i32 %39, i32 %40)
  %42 = load i64, i64* @SPEED_0, align 8
  %43 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %44 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load %struct.net_device*, %struct.net_device** %5, align 8
  %46 = call i32 @netif_carrier_off(%struct.net_device* %45)
  %47 = load %struct.net_device*, %struct.net_device** %5, align 8
  %48 = call i32 @netif_stop_queue(%struct.net_device* %47)
  br label %49

49:                                               ; preds = %30, %26
  br label %101

50:                                               ; preds = %1
  %51 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %52 = call i32 @atl1e_get_speed_and_duplex(%struct.atl1e_hw* %51, i64* %7, i64* %8)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %2, align 4
  br label %102

58:                                               ; preds = %50
  %59 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %60 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %7, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %70, label %64

64:                                               ; preds = %58
  %65 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %66 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %8, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %91

70:                                               ; preds = %64, %58
  %71 = load i64, i64* %7, align 8
  %72 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %73 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load i64, i64* %8, align 8
  %75 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %76 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  %77 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %78 = call i32 @atl1e_setup_mac_ctrl(%struct.atl1e_adapter* %77)
  %79 = load %struct.net_device*, %struct.net_device** %5, align 8
  %80 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %81 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %84 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @FULL_DUPLEX, align 8
  %87 = icmp eq i64 %85, %86
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %90 = call i32 @netdev_info(%struct.net_device* %79, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %82, i8* %89)
  br label %91

91:                                               ; preds = %70, %64
  %92 = load %struct.net_device*, %struct.net_device** %5, align 8
  %93 = call i64 @netif_carrier_ok(%struct.net_device* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %91
  %96 = load %struct.net_device*, %struct.net_device** %5, align 8
  %97 = call i32 @netif_carrier_on(%struct.net_device* %96)
  %98 = load %struct.net_device*, %struct.net_device** %5, align 8
  %99 = call i32 @netif_wake_queue(%struct.net_device* %98)
  br label %100

100:                                              ; preds = %95, %91
  br label %101

101:                                              ; preds = %100, %49
  store i32 0, i32* %2, align 4
  br label %102

102:                                              ; preds = %101, %56
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @atl1e_read_phy_reg(%struct.atl1e_hw*, i32, i64*) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @AT_READ_REG(%struct.atl1e_hw*, i32) #1

declare dso_local i32 @AT_WRITE_REG(%struct.atl1e_hw*, i32, i32) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @atl1e_get_speed_and_duplex(%struct.atl1e_hw*, i64*, i64*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @atl1e_setup_mac_ctrl(%struct.atl1e_adapter*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i64, i8*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
