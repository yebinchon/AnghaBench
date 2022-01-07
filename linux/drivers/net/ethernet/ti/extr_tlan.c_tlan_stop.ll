; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_tlan.c_tlan_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_tlan.c_tlan_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.tlan_priv = type { %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@TLAN_RECORD = common dso_local global i32 0, align 4
@TLAN_HC_AD_RST = common dso_local global i32 0, align 4
@TLAN_HOST_CMD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @tlan_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tlan_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.tlan_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.tlan_priv* @netdev_priv(%struct.net_device* %4)
  store %struct.tlan_priv* %5, %struct.tlan_priv** %3, align 8
  %6 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %7 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %6, i32 0, i32 1
  %8 = call i32 @del_timer_sync(%struct.TYPE_2__* %7)
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = load i32, i32* @TLAN_RECORD, align 4
  %11 = call i32 @tlan_read_and_clear_stats(%struct.net_device* %9, i32 %10)
  %12 = load i32, i32* @TLAN_HC_AD_RST, align 4
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @TLAN_HOST_CMD, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @outl(i32 %12, i64 %17)
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = call i32 @tlan_reset_adapter(%struct.net_device* %19)
  %21 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %22 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %1
  %27 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %28 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %27, i32 0, i32 0
  %29 = call i32 @del_timer_sync(%struct.TYPE_2__* %28)
  %30 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %31 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32* null, i32** %32, align 8
  br label %33

33:                                               ; preds = %26, %1
  ret void
}

declare dso_local %struct.tlan_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @del_timer_sync(%struct.TYPE_2__*) #1

declare dso_local i32 @tlan_read_and_clear_stats(%struct.net_device*, i32) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @tlan_reset_adapter(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
