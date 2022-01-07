; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_de4x5_save_skbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_de4x5_save_skbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.de4x5_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@STOP_DE4X5 = common dso_local global i32 0, align 4
@DE4X5_SAVE_STATE = common dso_local global i32 0, align 4
@DE4X5_RESTORE_STATE = common dso_local global i32 0, align 4
@START_DE4X5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @de4x5_save_skbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @de4x5_save_skbs(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.de4x5_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.de4x5_private* @netdev_priv(%struct.net_device* %6)
  store %struct.de4x5_private* %7, %struct.de4x5_private** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %12 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %36, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @STOP_DE4X5, align 4
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = call i32 @de4x5_tx(%struct.net_device* %18)
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = call i32 @de4x5_free_tx_buffs(%struct.net_device* %20)
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = load i32, i32* @DE4X5_SAVE_STATE, align 4
  %24 = call i32 @de4x5_cache_state(%struct.net_device* %22, i32 %23)
  %25 = load %struct.net_device*, %struct.net_device** %2, align 8
  %26 = call i32 @de4x5_sw_reset(%struct.net_device* %25)
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = load i32, i32* @DE4X5_RESTORE_STATE, align 4
  %29 = call i32 @de4x5_cache_state(%struct.net_device* %27, i32 %28)
  %30 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %31 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  %35 = load i32, i32* @START_DE4X5, align 4
  br label %36

36:                                               ; preds = %16, %1
  ret void
}

declare dso_local %struct.de4x5_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @de4x5_tx(%struct.net_device*) #1

declare dso_local i32 @de4x5_free_tx_buffs(%struct.net_device*) #1

declare dso_local i32 @de4x5_cache_state(%struct.net_device*, i32) #1

declare dso_local i32 @de4x5_sw_reset(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
