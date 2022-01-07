; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_sh_eth.c_sh_eth_set_rate_sh7724.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_sh_eth.c_sh_eth_set_rate_sh7724.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sh_eth_private = type { i32 }

@ECMR = common dso_local global i32 0, align 4
@ECMR_RTM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @sh_eth_set_rate_sh7724 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_eth_set_rate_sh7724(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.sh_eth_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.sh_eth_private* @netdev_priv(%struct.net_device* %4)
  store %struct.sh_eth_private* %5, %struct.sh_eth_private** %3, align 8
  %6 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %7 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %20 [
    i32 10, label %9
    i32 100, label %14
  ]

9:                                                ; preds = %1
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = load i32, i32* @ECMR, align 4
  %12 = load i32, i32* @ECMR_RTM, align 4
  %13 = call i32 @sh_eth_modify(%struct.net_device* %10, i32 %11, i32 %12, i32 0)
  br label %20

14:                                               ; preds = %1
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = load i32, i32* @ECMR, align 4
  %17 = load i32, i32* @ECMR_RTM, align 4
  %18 = load i32, i32* @ECMR_RTM, align 4
  %19 = call i32 @sh_eth_modify(%struct.net_device* %15, i32 %16, i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %1, %14, %9
  ret void
}

declare dso_local %struct.sh_eth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @sh_eth_modify(%struct.net_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
