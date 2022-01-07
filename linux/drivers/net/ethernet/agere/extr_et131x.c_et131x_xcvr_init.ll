; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/agere/extr_et131x.c_et131x_xcvr_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/agere/extr_et131x.c_et131x_xcvr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et131x_adapter = type { i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.phy_device* }
%struct.phy_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@PHY_LED_2 = common dso_local global i32 0, align 4
@ET_LED2_LED_100TX = common dso_local global i32 0, align 4
@ET_LED2_LED_1000T = common dso_local global i32 0, align 4
@LED_VAL_LINKON_ACTIVE = common dso_local global i32 0, align 4
@LED_LINK_SHIFT = common dso_local global i32 0, align 4
@LED_VAL_1000BT_100BTX = common dso_local global i32 0, align 4
@LED_TXRX_SHIFT = common dso_local global i32 0, align 4
@LED_VAL_LINKON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.et131x_adapter*)* @et131x_xcvr_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @et131x_xcvr_init(%struct.et131x_adapter* %0) #0 {
  %2 = alloca %struct.et131x_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.phy_device*, align 8
  store %struct.et131x_adapter* %0, %struct.et131x_adapter** %2, align 8
  %5 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  store %struct.phy_device* %9, %struct.phy_device** %4, align 8
  %10 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %59

17:                                               ; preds = %1
  %18 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %19 = load i32, i32* @PHY_LED_2, align 4
  %20 = call i32 @et131x_mii_read(%struct.et131x_adapter* %18, i32 %19, i32* %3)
  %21 = load i32, i32* @ET_LED2_LED_100TX, align 4
  %22 = load i32, i32* @ET_LED2_LED_1000T, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* %3, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* @LED_VAL_LINKON_ACTIVE, align 4
  %27 = load i32, i32* @LED_LINK_SHIFT, align 4
  %28 = shl i32 %26, %27
  %29 = load i32, i32* %3, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %3, align 4
  %31 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %32 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %17
  %39 = load i32, i32* @LED_VAL_1000BT_100BTX, align 4
  %40 = load i32, i32* @LED_TXRX_SHIFT, align 4
  %41 = shl i32 %39, %40
  %42 = load i32, i32* %3, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %3, align 4
  br label %50

44:                                               ; preds = %17
  %45 = load i32, i32* @LED_VAL_LINKON, align 4
  %46 = load i32, i32* @LED_TXRX_SHIFT, align 4
  %47 = shl i32 %45, %46
  %48 = load i32, i32* %3, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %44, %38
  %51 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %52 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %53 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @PHY_LED_2, align 4
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @et131x_mii_write(%struct.et131x_adapter* %51, i32 %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %50, %1
  ret void
}

declare dso_local i32 @et131x_mii_read(%struct.et131x_adapter*, i32, i32*) #1

declare dso_local i32 @et131x_mii_write(%struct.et131x_adapter*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
