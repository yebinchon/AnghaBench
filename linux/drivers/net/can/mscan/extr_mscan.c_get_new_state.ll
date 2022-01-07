; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/mscan/extr_mscan.c_get_new_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/mscan/extr_mscan.c_get_new_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mscan_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MSCAN_CSCIF = common dso_local global i32 0, align 4
@state_map = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @get_new_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_new_state(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mscan_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.mscan_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.mscan_priv* %8, %struct.mscan_priv** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @MSCAN_CSCIF, align 4
  %11 = and i32 %9, %10
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load i32*, i32** @state_map, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @MSCAN_STATE_RX(i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @MSCAN_STATE_TX(i32 %18)
  %20 = call i64 @max(i32 %17, i32 %19)
  %21 = getelementptr inbounds i32, i32* %15, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %3, align 4
  br label %28

23:                                               ; preds = %2
  %24 = load %struct.mscan_priv*, %struct.mscan_priv** %6, align 8
  %25 = getelementptr inbounds %struct.mscan_priv, %struct.mscan_priv* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %23, %14
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local %struct.mscan_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @max(i32, i32) #1

declare dso_local i32 @MSCAN_STATE_RX(i32) #1

declare dso_local i32 @MSCAN_STATE_TX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
