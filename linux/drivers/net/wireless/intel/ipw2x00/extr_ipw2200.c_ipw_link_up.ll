; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_link_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_link_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@CFG_BACKGROUND_SCAN = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw_priv*)* @ipw_link_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipw_link_up(%struct.ipw_priv* %0) #0 {
  %2 = alloca %struct.ipw_priv*, align 8
  store %struct.ipw_priv* %0, %struct.ipw_priv** %2, align 8
  %3 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %4 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %3, i32 0, i32 0
  store i32 -1, i32* %4, align 8
  %5 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %6 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %5, i32 0, i32 1
  store i32 -1, i32* %6, align 4
  %7 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %8 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %7, i32 0, i32 9
  store i64 0, i64* %8, align 8
  %9 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %10 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %9, i32 0, i32 8
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @netif_carrier_on(i32 %11)
  %13 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %14 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %13, i32 0, i32 3
  %15 = call i32 @cancel_delayed_work(i32* %14)
  %16 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %17 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %16, i32 0, i32 7
  %18 = call i32 @cancel_delayed_work(i32* %17)
  %19 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %20 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %19, i32 0, i32 6
  %21 = call i32 @cancel_delayed_work(i32* %20)
  %22 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %23 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %22, i32 0, i32 5
  %24 = call i32 @cancel_delayed_work(i32* %23)
  %25 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %26 = call i32 @ipw_reset_stats(%struct.ipw_priv* %25)
  %27 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %28 = call i32 @ipw_get_current_rate(%struct.ipw_priv* %27)
  %29 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %30 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 8
  %31 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %32 = call i32 @ipw_gather_stats(%struct.ipw_priv* %31)
  %33 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %34 = call i32 @ipw_led_link_up(%struct.ipw_priv* %33)
  %35 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %36 = call i32 @notify_wx_assoc_event(%struct.ipw_priv* %35)
  %37 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %38 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @CFG_BACKGROUND_SCAN, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %1
  %44 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %45 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %44, i32 0, i32 3
  %46 = load i32, i32* @HZ, align 4
  %47 = call i32 @schedule_delayed_work(i32* %45, i32 %46)
  br label %48

48:                                               ; preds = %43, %1
  ret void
}

declare dso_local i32 @netif_carrier_on(i32) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @ipw_reset_stats(%struct.ipw_priv*) #1

declare dso_local i32 @ipw_get_current_rate(%struct.ipw_priv*) #1

declare dso_local i32 @ipw_gather_stats(%struct.ipw_priv*) #1

declare dso_local i32 @ipw_led_link_up(%struct.ipw_priv*) #1

declare dso_local i32 @notify_wx_assoc_event(%struct.ipw_priv*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
