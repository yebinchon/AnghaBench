; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-velocity.c_velocity_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-velocity.c_velocity_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32 }
%struct.velocity_info = type { i32, i32, i32 }

@PCI_D0 = common dso_local global i32 0, align 4
@VELOCITY_INIT_COLD = common dso_local global i32 0, align 4
@velocity_intr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@PCI_D3hot = common dso_local global i32 0, align 4
@VELOCITY_FLAGS_OPENED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @velocity_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @velocity_open(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.velocity_info*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.velocity_info* @netdev_priv(%struct.net_device* %5)
  store %struct.velocity_info* %6, %struct.velocity_info** %3, align 8
  %7 = load %struct.velocity_info*, %struct.velocity_info** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @velocity_init_rings(%struct.velocity_info* %7, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %57

15:                                               ; preds = %1
  %16 = load %struct.velocity_info*, %struct.velocity_info** %3, align 8
  %17 = load i32, i32* @PCI_D0, align 4
  %18 = call i32 @velocity_set_power_state(%struct.velocity_info* %16, i32 %17)
  %19 = load %struct.velocity_info*, %struct.velocity_info** %3, align 8
  %20 = load i32, i32* @VELOCITY_INIT_COLD, align 4
  %21 = call i32 @velocity_init_registers(%struct.velocity_info* %19, i32 %20)
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @velocity_intr, align 4
  %26 = load i32, i32* @IRQF_SHARED, align 4
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.net_device*, %struct.net_device** %2, align 8
  %31 = call i32 @request_irq(i32 %24, i32 %25, i32 %26, i32 %29, %struct.net_device* %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %15
  %35 = load %struct.velocity_info*, %struct.velocity_info** %3, align 8
  %36 = load i32, i32* @PCI_D3hot, align 4
  %37 = call i32 @velocity_set_power_state(%struct.velocity_info* %35, i32 %36)
  %38 = load %struct.velocity_info*, %struct.velocity_info** %3, align 8
  %39 = call i32 @velocity_free_rings(%struct.velocity_info* %38)
  br label %57

40:                                               ; preds = %15
  %41 = load %struct.velocity_info*, %struct.velocity_info** %3, align 8
  %42 = call i32 @velocity_give_many_rx_descs(%struct.velocity_info* %41)
  %43 = load %struct.velocity_info*, %struct.velocity_info** %3, align 8
  %44 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @mac_enable_int(i32 %45)
  %47 = load %struct.net_device*, %struct.net_device** %2, align 8
  %48 = call i32 @netif_start_queue(%struct.net_device* %47)
  %49 = load %struct.velocity_info*, %struct.velocity_info** %3, align 8
  %50 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %49, i32 0, i32 1
  %51 = call i32 @napi_enable(i32* %50)
  %52 = load i32, i32* @VELOCITY_FLAGS_OPENED, align 4
  %53 = load %struct.velocity_info*, %struct.velocity_info** %3, align 8
  %54 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %40, %34, %14
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local %struct.velocity_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @velocity_init_rings(%struct.velocity_info*, i32) #1

declare dso_local i32 @velocity_set_power_state(%struct.velocity_info*, i32) #1

declare dso_local i32 @velocity_init_registers(%struct.velocity_info*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @velocity_free_rings(%struct.velocity_info*) #1

declare dso_local i32 @velocity_give_many_rx_descs(%struct.velocity_info*) #1

declare dso_local i32 @mac_enable_int(i32) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @napi_enable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
