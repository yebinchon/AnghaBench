; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_link_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_link_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sky2_port = type { i32, i64, i64, i32, i32, %struct.sky2_hw* }
%struct.sky2_hw = type { i32 }

@sky2_link_up.fc_name = internal global [132 x i8*] [i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@PHY_MARV_INT_MASK = common dso_local global i32 0, align 4
@PHY_M_DEF_MSK = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@LNK_LED_REG = common dso_local global i32 0, align 4
@LINKLED_ON = common dso_local global i32 0, align 4
@LINKLED_BLINK_OFF = common dso_local global i32 0, align 4
@LINKLED_LINKSYNC_OFF = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [51 x i8] c"Link is up at %d Mbps, %s duplex, flow control %s\0A\00", align 1
@DUPLEX_FULL = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"half\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sky2_port*)* @sky2_link_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sky2_link_up(%struct.sky2_port* %0) #0 {
  %2 = alloca %struct.sky2_port*, align 8
  %3 = alloca %struct.sky2_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.sky2_port* %0, %struct.sky2_port** %2, align 8
  %5 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %6 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %5, i32 0, i32 5
  %7 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  store %struct.sky2_hw* %7, %struct.sky2_hw** %3, align 8
  %8 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %9 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  %11 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %12 = call i32 @sky2_set_ipg(%struct.sky2_port* %11)
  %13 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %14 = call i32 @sky2_enable_rx_tx(%struct.sky2_port* %13)
  %15 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @PHY_MARV_INT_MASK, align 4
  %18 = load i32, i32* @PHY_M_DEF_MSK, align 4
  %19 = call i32 @gm_phy_write(%struct.sky2_hw* %15, i32 %16, i32 %17, i32 %18)
  %20 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %21 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @netif_carrier_on(i32 %22)
  %24 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %25 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %24, i32 0, i32 0
  %26 = load i64, i64* @jiffies, align 8
  %27 = add nsw i64 %26, 1
  %28 = call i32 @mod_timer(i32* %25, i64 %27)
  %29 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @LNK_LED_REG, align 4
  %32 = call i32 @SK_REG(i32 %30, i32 %31)
  %33 = load i32, i32* @LINKLED_ON, align 4
  %34 = load i32, i32* @LINKLED_BLINK_OFF, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @LINKLED_LINKSYNC_OFF, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @sky2_write8(%struct.sky2_hw* %29, i32 %32, i32 %37)
  %39 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %40 = load i32, i32* @link, align 4
  %41 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %42 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %45 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %48 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @DUPLEX_FULL, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %54 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %55 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds [132 x i8*], [132 x i8*]* @sky2_link_up.fc_name, i64 0, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @netif_info(%struct.sky2_port* %39, i32 %40, i32 %43, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32 %46, i8* %53, i8* %58)
  ret void
}

declare dso_local i32 @sky2_set_ipg(%struct.sky2_port*) #1

declare dso_local i32 @sky2_enable_rx_tx(%struct.sky2_port*) #1

declare dso_local i32 @gm_phy_write(%struct.sky2_hw*, i32, i32, i32) #1

declare dso_local i32 @netif_carrier_on(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @sky2_write8(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @SK_REG(i32, i32) #1

declare dso_local i32 @netif_info(%struct.sky2_port*, i32, i32, i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
