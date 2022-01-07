; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_b44.c_b44_change_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_b44.c_b44_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.b44 = type { i32 }

@B44_FULL_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @b44_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b44_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.b44*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.b44* @netdev_priv(%struct.net_device* %7)
  store %struct.b44* %8, %struct.b44** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call i32 @netif_running(%struct.net_device* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  store i32 0, i32* %3, align 4
  br label %35

16:                                               ; preds = %2
  %17 = load %struct.b44*, %struct.b44** %6, align 8
  %18 = getelementptr inbounds %struct.b44, %struct.b44* %17, i32 0, i32 0
  %19 = call i32 @spin_lock_irq(i32* %18)
  %20 = load %struct.b44*, %struct.b44** %6, align 8
  %21 = call i32 @b44_halt(%struct.b44* %20)
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.net_device*, %struct.net_device** %4, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.b44*, %struct.b44** %6, align 8
  %26 = call i32 @b44_init_rings(%struct.b44* %25)
  %27 = load %struct.b44*, %struct.b44** %6, align 8
  %28 = load i32, i32* @B44_FULL_RESET, align 4
  %29 = call i32 @b44_init_hw(%struct.b44* %27, i32 %28)
  %30 = load %struct.b44*, %struct.b44** %6, align 8
  %31 = getelementptr inbounds %struct.b44, %struct.b44* %30, i32 0, i32 0
  %32 = call i32 @spin_unlock_irq(i32* %31)
  %33 = load %struct.b44*, %struct.b44** %6, align 8
  %34 = call i32 @b44_enable_ints(%struct.b44* %33)
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %16, %12
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local %struct.b44* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @b44_halt(%struct.b44*) #1

declare dso_local i32 @b44_init_rings(%struct.b44*) #1

declare dso_local i32 @b44_init_hw(%struct.b44*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @b44_enable_ints(%struct.b44*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
