; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/wiznet/extr_w5300.c_w5300_set_rx_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/wiznet/extr_w5300.c_w5300_set_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.w5300_priv = type { i32 }

@IFF_PROMISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @w5300_set_rx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w5300_set_rx_mode(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.w5300_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.w5300_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.w5300_priv* %6, %struct.w5300_priv** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @IFF_PROMISC, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %4, align 4
  %14 = load %struct.w5300_priv*, %struct.w5300_priv** %3, align 8
  %15 = getelementptr inbounds %struct.w5300_priv, %struct.w5300_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.w5300_priv*, %struct.w5300_priv** %3, align 8
  %22 = getelementptr inbounds %struct.w5300_priv, %struct.w5300_priv* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.w5300_priv*, %struct.w5300_priv** %3, align 8
  %24 = call i32 @w5300_hw_start(%struct.w5300_priv* %23)
  br label %25

25:                                               ; preds = %19, %1
  ret void
}

declare dso_local %struct.w5300_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @w5300_hw_start(%struct.w5300_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
