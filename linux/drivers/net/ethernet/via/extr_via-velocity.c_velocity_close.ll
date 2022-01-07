; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-velocity.c_velocity_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-velocity.c_velocity_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.velocity_info = type { i32, i32 }

@VELOCITY_FLAGS_WOL_ENABLED = common dso_local global i32 0, align 4
@VELOCITY_FLAGS_OPENED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @velocity_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @velocity_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.velocity_info*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.velocity_info* @netdev_priv(%struct.net_device* %4)
  store %struct.velocity_info* %5, %struct.velocity_info** %3, align 8
  %6 = load %struct.velocity_info*, %struct.velocity_info** %3, align 8
  %7 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %6, i32 0, i32 1
  %8 = call i32 @napi_disable(i32* %7)
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call i32 @netif_stop_queue(%struct.net_device* %9)
  %11 = load %struct.velocity_info*, %struct.velocity_info** %3, align 8
  %12 = call i32 @velocity_shutdown(%struct.velocity_info* %11)
  %13 = load %struct.velocity_info*, %struct.velocity_info** %3, align 8
  %14 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @VELOCITY_FLAGS_WOL_ENABLED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.velocity_info*, %struct.velocity_info** %3, align 8
  %21 = call i32 @velocity_get_ip(%struct.velocity_info* %20)
  br label %22

22:                                               ; preds = %19, %1
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.net_device*, %struct.net_device** %2, align 8
  %27 = call i32 @free_irq(i32 %25, %struct.net_device* %26)
  %28 = load %struct.velocity_info*, %struct.velocity_info** %3, align 8
  %29 = call i32 @velocity_free_rings(%struct.velocity_info* %28)
  %30 = load i32, i32* @VELOCITY_FLAGS_OPENED, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.velocity_info*, %struct.velocity_info** %3, align 8
  %33 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 4
  ret i32 0
}

declare dso_local %struct.velocity_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @velocity_shutdown(%struct.velocity_info*) #1

declare dso_local i32 @velocity_get_ip(%struct.velocity_info*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @velocity_free_rings(%struct.velocity_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
