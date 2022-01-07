; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/tehuti/extr_tehuti.c_bdx_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/tehuti/extr_tehuti.c_bdx_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bdx_priv = type { i32 }

@ENTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @bdx_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bdx_close(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.bdx_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.bdx_priv* null, %struct.bdx_priv** %4, align 8
  %5 = load i32, i32* @ENTER, align 4
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.bdx_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.bdx_priv* %7, %struct.bdx_priv** %4, align 8
  %8 = load %struct.bdx_priv*, %struct.bdx_priv** %4, align 8
  %9 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %8, i32 0, i32 0
  %10 = call i32 @napi_disable(i32* %9)
  %11 = load %struct.bdx_priv*, %struct.bdx_priv** %4, align 8
  %12 = call i32 @bdx_reset(%struct.bdx_priv* %11)
  %13 = load %struct.bdx_priv*, %struct.bdx_priv** %4, align 8
  %14 = call i32 @bdx_hw_stop(%struct.bdx_priv* %13)
  %15 = load %struct.bdx_priv*, %struct.bdx_priv** %4, align 8
  %16 = call i32 @bdx_rx_free(%struct.bdx_priv* %15)
  %17 = load %struct.bdx_priv*, %struct.bdx_priv** %4, align 8
  %18 = call i32 @bdx_tx_free(%struct.bdx_priv* %17)
  %19 = call i32 @RET(i32 0)
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local %struct.bdx_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @bdx_reset(%struct.bdx_priv*) #1

declare dso_local i32 @bdx_hw_stop(%struct.bdx_priv*) #1

declare dso_local i32 @bdx_rx_free(%struct.bdx_priv*) #1

declare dso_local i32 @bdx_tx_free(%struct.bdx_priv*) #1

declare dso_local i32 @RET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
