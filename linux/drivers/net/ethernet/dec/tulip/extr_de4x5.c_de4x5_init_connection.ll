; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_de4x5_init_connection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_de4x5_init_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.de4x5_private = type { i64, i64, i32, i32 }

@POLL_DEMAND = common dso_local global i32 0, align 4
@DE4X5_TPD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @de4x5_init_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @de4x5_init_connection(%struct.net_device* %0) #0 {
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
  store i32 0, i32* %5, align 4
  %11 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %12 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %15 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %13, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %1
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = call i32 @de4x5_dbg_media(%struct.net_device* %19)
  %21 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %22 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %25 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %24, i32 0, i32 1
  store i64 %23, i64* %25, align 8
  br label %26

26:                                               ; preds = %18, %1
  %27 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %28 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %27, i32 0, i32 3
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @spin_lock_irqsave(i32* %28, i32 %29)
  %31 = load %struct.net_device*, %struct.net_device** %2, align 8
  %32 = call i32 @de4x5_rst_desc_ring(%struct.net_device* %31)
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = call i32 @de4x5_setup_intr(%struct.net_device* %33)
  %35 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %36 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %35, i32 0, i32 2
  store i32 1, i32* %36, align 8
  %37 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %38 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %37, i32 0, i32 3
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i32 %39)
  %41 = load i32, i32* @POLL_DEMAND, align 4
  %42 = load i32, i32* @DE4X5_TPD, align 4
  %43 = call i32 @outl(i32 %41, i32 %42)
  %44 = load %struct.net_device*, %struct.net_device** %2, align 8
  %45 = call i32 @netif_wake_queue(%struct.net_device* %44)
  ret void
}

declare dso_local %struct.de4x5_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @de4x5_dbg_media(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @de4x5_rst_desc_ring(%struct.net_device*) #1

declare dso_local i32 @de4x5_setup_intr(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
