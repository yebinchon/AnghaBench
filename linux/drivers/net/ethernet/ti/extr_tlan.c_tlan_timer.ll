; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_tlan.c_tlan_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_tlan.c_tlan_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlan_priv = type { i32, i32, %struct.TYPE_2__, i64, %struct.net_device* }
%struct.TYPE_2__ = type { i64, i32* }
%struct.net_device = type { i32 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@TLAN_TIMER_ACT_DELAY = common dso_local global i64 0, align 8
@TLAN_LED_REG = common dso_local global i32 0, align 4
@TLAN_LED_LINK = common dso_local global i32 0, align 4
@priv = common dso_local global %struct.tlan_priv* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @tlan_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tlan_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.tlan_priv*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %7 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %8 = ptrtoint %struct.tlan_priv* %7 to i32
  %9 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %10 = load i32, i32* @timer, align 4
  %11 = call %struct.tlan_priv* @from_timer(i32 %8, %struct.timer_list* %9, i32 %10)
  store %struct.tlan_priv* %11, %struct.tlan_priv** %3, align 8
  %12 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %13 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %12, i32 0, i32 4
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %4, align 8
  store i64 0, i64* %6, align 8
  %15 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %16 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store i32* null, i32** %17, align 8
  %18 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %19 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %87 [
    i32 131, label %21
    i32 130, label %24
    i32 129, label %27
    i32 128, label %30
    i32 132, label %33
    i32 133, label %36
    i32 134, label %39
  ]

21:                                               ; preds = %1
  %22 = load %struct.net_device*, %struct.net_device** %4, align 8
  %23 = call i32 @tlan_phy_power_down(%struct.net_device* %22)
  br label %88

24:                                               ; preds = %1
  %25 = load %struct.net_device*, %struct.net_device** %4, align 8
  %26 = call i32 @tlan_phy_power_up(%struct.net_device* %25)
  br label %88

27:                                               ; preds = %1
  %28 = load %struct.net_device*, %struct.net_device** %4, align 8
  %29 = call i32 @tlan_phy_reset(%struct.net_device* %28)
  br label %88

30:                                               ; preds = %1
  %31 = load %struct.net_device*, %struct.net_device** %4, align 8
  %32 = call i32 @tlan_phy_start_link(%struct.net_device* %31)
  br label %88

33:                                               ; preds = %1
  %34 = load %struct.net_device*, %struct.net_device** %4, align 8
  %35 = call i32 @tlan_phy_finish_auto_neg(%struct.net_device* %34)
  br label %88

36:                                               ; preds = %1
  %37 = load %struct.net_device*, %struct.net_device** %4, align 8
  %38 = call i32 @tlan_finish_reset(%struct.net_device* %37)
  br label %88

39:                                               ; preds = %1
  %40 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %41 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %40, i32 0, i32 1
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @spin_lock_irqsave(i32* %41, i64 %42)
  %44 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %45 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %82

49:                                               ; preds = %39
  %50 = load i64, i64* @jiffies, align 8
  %51 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %52 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %50, %53
  store i64 %54, i64* %5, align 8
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* @TLAN_TIMER_ACT_DELAY, align 8
  %57 = icmp sge i64 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %49
  %59 = load %struct.net_device*, %struct.net_device** %4, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @TLAN_LED_REG, align 4
  %63 = load i32, i32* @TLAN_LED_LINK, align 4
  %64 = call i32 @tlan_dio_write8(i32 %61, i32 %62, i32 %63)
  br label %81

65:                                               ; preds = %49
  %66 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %67 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @TLAN_TIMER_ACT_DELAY, align 8
  %70 = add nsw i64 %68, %69
  %71 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %72 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store i64 %70, i64* %73, align 8
  %74 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %75 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %74, i32 0, i32 1
  %76 = load i64, i64* %6, align 8
  %77 = call i32 @spin_unlock_irqrestore(i32* %75, i64 %76)
  %78 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %79 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %78, i32 0, i32 2
  %80 = call i32 @add_timer(%struct.TYPE_2__* %79)
  br label %88

81:                                               ; preds = %58
  br label %82

82:                                               ; preds = %81, %39
  %83 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %84 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %83, i32 0, i32 1
  %85 = load i64, i64* %6, align 8
  %86 = call i32 @spin_unlock_irqrestore(i32* %84, i64 %85)
  br label %88

87:                                               ; preds = %1
  br label %88

88:                                               ; preds = %87, %82, %65, %36, %33, %30, %27, %24, %21
  ret void
}

declare dso_local %struct.tlan_priv* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @tlan_phy_power_down(%struct.net_device*) #1

declare dso_local i32 @tlan_phy_power_up(%struct.net_device*) #1

declare dso_local i32 @tlan_phy_reset(%struct.net_device*) #1

declare dso_local i32 @tlan_phy_start_link(%struct.net_device*) #1

declare dso_local i32 @tlan_phy_finish_auto_neg(%struct.net_device*) #1

declare dso_local i32 @tlan_finish_reset(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @tlan_dio_write8(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @add_timer(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
