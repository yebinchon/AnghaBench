; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/altera/extr_altera_tse_main.c_tse_set_rx_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/altera/extr_altera_tse_main.c_tse_set_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.altera_tse_private = type { i32, i32 }

@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@command_config = common dso_local global i32 0, align 4
@MAC_CMDCFG_PROMIS_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @tse_set_rx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tse_set_rx_mode(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.altera_tse_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.altera_tse_private* @netdev_priv(%struct.net_device* %4)
  store %struct.altera_tse_private* %5, %struct.altera_tse_private** %3, align 8
  %6 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %7 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %6, i32 0, i32 0
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @IFF_PROMISC, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %30, label %15

15:                                               ; preds = %1
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @IFF_ALLMULTI, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %15
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  %24 = call i32 @netdev_mc_empty(%struct.net_device* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = call i32 @netdev_uc_empty(%struct.net_device* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %26, %22, %15, %1
  %31 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %32 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @command_config, align 4
  %35 = call i32 @tse_csroffs(i32 %34)
  %36 = load i32, i32* @MAC_CMDCFG_PROMIS_EN, align 4
  %37 = call i32 @tse_set_bit(i32 %33, i32 %35, i32 %36)
  br label %46

38:                                               ; preds = %26
  %39 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %40 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @command_config, align 4
  %43 = call i32 @tse_csroffs(i32 %42)
  %44 = load i32, i32* @MAC_CMDCFG_PROMIS_EN, align 4
  %45 = call i32 @tse_clear_bit(i32 %41, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %38, %30
  %47 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %48 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %47, i32 0, i32 0
  %49 = call i32 @spin_unlock(i32* %48)
  ret void
}

declare dso_local %struct.altera_tse_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @netdev_mc_empty(%struct.net_device*) #1

declare dso_local i32 @netdev_uc_empty(%struct.net_device*) #1

declare dso_local i32 @tse_set_bit(i32, i32, i32) #1

declare dso_local i32 @tse_csroffs(i32) #1

declare dso_local i32 @tse_clear_bit(i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
