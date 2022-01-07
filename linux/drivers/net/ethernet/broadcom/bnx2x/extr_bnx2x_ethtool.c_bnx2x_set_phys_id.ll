; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_ethtool.c_bnx2x_set_phys_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_ethtool.c_bnx2x_set_phys_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bnx2x = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@BNX2X_MSG_ETHTOOL = common dso_local global i32 0, align 4
@BNX2X_MSG_NVM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"cannot access eeprom when the interface is down\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@LED_MODE_ON = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@LED_MODE_FRONT_PANEL_OFF = common dso_local global i32 0, align 4
@LED_MODE_OPER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @bnx2x_set_phys_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_set_phys_id(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnx2x*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.bnx2x* @netdev_priv(%struct.net_device* %7)
  store %struct.bnx2x* %8, %struct.bnx2x** %6, align 8
  %9 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %10 = call i32 @bnx2x_is_nvm_accessible(%struct.bnx2x* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %14 = load i32, i32* @BNX2X_MSG_NVM, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @DP(i32 %15, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EAGAIN, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %61

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %60 [
    i32 131, label %21
    i32 128, label %22
    i32 129, label %34
    i32 130, label %45
  ]

21:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %61

22:                                               ; preds = %19
  %23 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %24 = call i32 @bnx2x_acquire_phy_lock(%struct.bnx2x* %23)
  %25 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %26 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %25, i32 0, i32 1
  %27 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %28 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %27, i32 0, i32 0
  %29 = load i32, i32* @LED_MODE_ON, align 4
  %30 = load i32, i32* @SPEED_1000, align 4
  %31 = call i32 @bnx2x_set_led(i32* %26, %struct.TYPE_2__* %28, i32 %29, i32 %30)
  %32 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %33 = call i32 @bnx2x_release_phy_lock(%struct.bnx2x* %32)
  br label %60

34:                                               ; preds = %19
  %35 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %36 = call i32 @bnx2x_acquire_phy_lock(%struct.bnx2x* %35)
  %37 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %38 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %37, i32 0, i32 1
  %39 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %40 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %39, i32 0, i32 0
  %41 = load i32, i32* @LED_MODE_FRONT_PANEL_OFF, align 4
  %42 = call i32 @bnx2x_set_led(i32* %38, %struct.TYPE_2__* %40, i32 %41, i32 0)
  %43 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %44 = call i32 @bnx2x_release_phy_lock(%struct.bnx2x* %43)
  br label %60

45:                                               ; preds = %19
  %46 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %47 = call i32 @bnx2x_acquire_phy_lock(%struct.bnx2x* %46)
  %48 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %49 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %48, i32 0, i32 1
  %50 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %51 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %50, i32 0, i32 0
  %52 = load i32, i32* @LED_MODE_OPER, align 4
  %53 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %54 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @bnx2x_set_led(i32* %49, %struct.TYPE_2__* %51, i32 %52, i32 %56)
  %58 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %59 = call i32 @bnx2x_release_phy_lock(%struct.bnx2x* %58)
  br label %60

60:                                               ; preds = %45, %19, %34, %22
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %21, %12
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.bnx2x* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @bnx2x_is_nvm_accessible(%struct.bnx2x*) #1

declare dso_local i32 @DP(i32, i8*) #1

declare dso_local i32 @bnx2x_acquire_phy_lock(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_set_led(i32*, %struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @bnx2x_release_phy_lock(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
